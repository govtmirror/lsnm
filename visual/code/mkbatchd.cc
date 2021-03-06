/*mkbatchd.cc  rev. 8/98
degraded form input for right brain
random noise input for left brain

m: number of degraded input files for right brain
ggns_in: the number of "on" blocks in the left brain's ggns input.  
ggnsseed: The code mkinput  will use this number to randomly select 
          which block is turned on.  If seed = 0, system clock is the seed

attention level parameters are:
lefthi -- for left brain
leftlo -- for left brain during intertrial period, if lefthi=leftlo, 
          left side has sustained attention
rightlo-- for right brain during intertrial period
righthi steps thru "start" to "end" at an increment of "increment

The attention levels are entered as integers.
e.g. if we want attention level of 0.05, we enter 5.
This input will be converted to the proper unit in the code
We want inter entries because when we generate directory for a
subject with attention level 0.05, we will name that directory b05.
It is necessary to keep the directory names to be of the same length
so we can use petmanip.m later for data manipulation

"BASE" below specifies which  directory (hence which computer) we are on
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

#define maxline 80
#define maxstring 15

void itoa(int p, char sp[]);

int main()
{
  FILE *infile, *outfile, *appfile;
  int start,end,increment;
  int nsubj,cleanup,num,m,k,i,attni,ggns_in,ggnseed;
  float attn,lefthi,leftlo,rightlo;
  char sp[3],bin[maxline],whereto[maxline],netgen[maxline];
  char Infile[maxline],temp[maxstring];

  const char *BASE= getenv("LSNM");

  strcpy(bin,BASE);
  strcat(bin,"bin/");
  strcpy(netgen,bin);
  strcpy(Infile,BASE);
  strcat(Infile,"code/mkbatchd.in");

  if( (infile = fopen(Infile, "r")) == NULL)
    {
      printf("can't open %s\n", Infile);
      exit(0);
    }

  outfile = fopen("batchd","w");
  appfile = fopen("appd","w");

  fprintf(appfile,"#include %sweights/right/rightlist.txt\n",BASE);
  fprintf(appfile,"#include %sweights/left/leftlist.txtn\n",BASE);
  fprintf(appfile,"#include %sweights/cross/crosslist.txt\n",BASE);
  fprintf(appfile,"#include %sinputs/pethi.rsn\n",BASE);
  fclose(appfile);

  fscanf(infile,"%s %s",temp, whereto);
  fscanf(infile,"%d %d %d %d %d %f %f %f %d %d %d",&nsubj,&cleanup,
     &m, &ggns_in,&ggnseed,&lefthi,&leftlo,&rightlo,&start,&end,&increment);

  if(cleanup == 0 && nsubj > 1)
    {
      printf("If you are running multi-subjects, you shouldn't set the cleanup to 0,TSK! TSK!\n");
    }

  strcat(netgen,temp);
  if(ggnseed == 0)
    ggnseed = time(NULL);

  if(increment == 0)
    num = 1;
  else
    num = (end - start)/increment + 1;

  lefthi /= 100.0;
  leftlo /= 100.0;
  rightlo  /= 100.0;

  /* start*/

  fprintf(outfile,"#\n#\n#\n");

  fprintf(outfile,"cd %s\n",BASE);
  fprintf(outfile,"mkdir noisy\n");
  /*lo attn on right and hi attn on left do not change among subjects*/
  fprintf(outfile,"cd sfiles\n");
  fprintf(outfile,"%smkattn hiattn_l.s %4.2f\n",bin,lefthi);
  fprintf(outfile,"%smkattn loattn_l.s %4.2f\n",bin,leftlo);
  fprintf(outfile,"%smkattn loattn_r.s %4.2f\n",bin,rightlo);

  /*make right brain lgn input*/
  fprintf(outfile,"cd %s\n",BASE);
  fprintf(outfile,"cd inputs\n");
  for(k = 1; k <= m; k++)
    {
      fprintf(outfile,"cp input%d2.inp input%d.inp\n",k,k);
    }

  fprintf(outfile,"cd %s\n",BASE);
  fprintf(outfile,"cd weights/cross\n");
  fprintf(outfile,"%scrossws\n",bin);

  fprintf(outfile,"cd %s\n",BASE);
  fprintf(outfile,"rm pethi.s\n");
  fprintf(outfile,
    "cat weights/right/right.s weights/left/left.sn code/appd > pethi.s\n");
  fprintf(outfile,"rm code/appd\nrm code/batchd\n");
  fprintf(outfile,"#\n");

  for(k = 0; k < num; k++)
    {
      attni = start + k*increment;
      attn = (float)attni/100.0;
      itoa(attni,sp);

      fprintf(outfile,"#\n");
      fprintf(outfile,"cd %s\n",BASE);
      fprintf(outfile,"cd inputs\n");
      for(i = 1; i<= m; i++)
	{
	  fprintf(outfile,"%smkinput l %d %d\n",bin,ggns_in,ggnseed);
	  fprintf(outfile,"mv ggns.inp ggns%d.inp\n",i);
	  ggnseed++;
	}
      if(nsubj > 0)
	{
	  fprintf(outfile,"cd %sweights/right\n",BASE);
	  fprintf(outfile,"for file in *.ws ; do\n");
	  fprintf(outfile,"  %s $file\n  done\n",netgen);
	  fprintf(outfile,"cd ../left\n");
	  fprintf(outfile,"for file in *.ws ; do\n");
	  fprintf(outfile,"  %s $file\n  done\n",netgen);
	  fprintf(outfile,"cd ../cross\n");
	  fprintf(outfile,"%scrosswt_i %s\nchmod u+x sh_cross\n",bin,temp);
	  fprintf(outfile,"sh_cross\nrm sh_cross\n");
	  if(nsubj == 1)
	    nsubj--;
	}
      fprintf(outfile,"cd %ssfiles\n",BASE);
      fprintf(outfile,"%smkattn hiattn_r.s %4.2f\n",bin,attn);
      fprintf(outfile,"cd %s\n",BASE);

      fprintf(outfile,"%ssim1 pethi\n",bin);
      fprintf(outfile,"gzip *.out\ncd noisy\nmkdir b%s\n",sp);
      fprintf(outfile,"cd %s\n",BASE);
      fprintf(outfile,"mv spec_pet.m noisy/b%s/\nmv *.out.gz noisy/b%s/\n",sp,sp);
    }

  if(cleanup != 0)
    {
      fprintf(outfile,"\nrm weights/right/*.w\n");
      fprintf(outfile,"rm weights/left/*.w\n");
      /* there are 800 .ws files in the cross directory, the max number of .w
	 files also reaches 800. The memory space 
	 for shell script is too small to rm all in one sweep,
	 so we split up the chore*/
      fprintf(outfile,"cd weights/cross\n");
      fprintf(outfile,"rm crosslist.txt\n");
      fprintf(outfile,"rm ev*.w\n");
      fprintf(outfile,"rm ev*.ws\n");
      fprintf(outfile,"rm eg*.w\n");
      fprintf(outfile,"rm eg*.ws\n");
      fprintf(outfile,"rm iv*.w\n");
      fprintf(outfile,"rm iv*.ws\n");
      fprintf(outfile,"rm ig*.w\n");
      fprintf(outfile,"rm ig*.ws\n");
      fprintf(outfile,"rm *.w\nrm *.ws\n");
    }

  /* restore the input files*/
  fprintf(outfile,"cd %sinputs\n",BASE);
  for(k = 1; k <= m; k++)
    {
      fprintf(outfile,"cp input%d1.inp input%d.inp\n",k,k);
    }
  fprintf(outfile,"rm ggns*.inp\n");
  fprintf(outfile,"cd %s\n",BASE);
  fprintf(outfile,"rm sfiles/*attn*.s\n");
  fprintf(outfile,"mv noisy %s/dRnL\n",whereto);

  fclose(infile);
  fclose(outfile);
}
