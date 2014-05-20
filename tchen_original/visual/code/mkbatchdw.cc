/*rev. 8/98
  mkbatchdw.cc, generate shell script to run sim1 for weakened
  connection strength between regions
  form input right, noisy input left.

  capacity: if capacity is 50 => 50% of the original connection strength
            note that capacity < 99
  attn: attention level, 5 => attention level is 0.05
            note that attn < 50
  start_c, end_c: specifies the range of capacity in the batch run
  start_a, end_a: specifies the range of attention in the batch run
  inc_c, inc_a: increment of capacity, increment of attention
  All are entered as integers, we will convert them to proper units in code

*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

#define maxline 80

void itoa(int p, char sp[]);

int main()
{
  FILE *infile, *outfile, *appfile;
  float rightlo, lefthi, leftlo;
  float attn;
  int i,j,k;
  int num_c,num_a,start_c,end_c, inc_c,start_a,end_a,inc_a;
  int C,attni,m,ggns_in,ggnseed;
  char sc[3],sa[3];
  char bin[maxline],whereto[maxline],netgen[maxline];
  char Infile[maxline];

  char *BASE= "/home/bhguest/brent/visual";

  strcpy(bin,BASE);
  strcat(bin,"/bin/");
  strcpy(netgen,bin);
  strcat(netgen,"netgenC");
  strcpy(Infile,BASE);
  strcat(Infile,"/code/mkbatchdw.in");
  if( (infile = fopen(Infile, "r")) == NULL)
    {
      printf("can't open %s\n", Infile);
      exit(0);
    }

  outfile = fopen("batchdw","w");
  appfile = fopen("appdw","w");
  fprintf(appfile,"#include %s/weights/right/rightlist.txt\n",BASE);
  fprintf(appfile,"#include %s/weights/left/leftlist.txtn\n",BASE);
  fprintf(appfile,"#include %s/weights/cross/crosslist.txt\n",BASE);
  fprintf(appfile,"#include %s/inputs/pethi.rsn\n",BASE);
  fclose(appfile);
  fscanf(infile,"%s",whereto);
  fscanf(infile,"%d %d %d %f %f %f",
      &m,&ggns_in, &ggnseed, &lefthi,&leftlo,&rightlo);

  fscanf(infile,"%d %d %d %d %d %d",
              &start_c,&end_c,&inc_c,&start_a,&end_a,&inc_a);

  if(ggnseed == 0)
    ggnseed = time(NULL);

  lefthi /= 100.0;
  leftlo /= 100.0;
  rightlo  /= 100.0;

  if(inc_c == 0)
    num_c = 1;
  else
    num_c = (end_c - start_c)/inc_c + 1;

  if(inc_a == 0)
    num_a = 1;
  else
    num_a = (end_a - start_a)/inc_a + 1;

  /* start*/
  fprintf(outfile,"#\n#\n#\n");
/*lo attn on right and attn on left do not change among subjects*/
  fprintf(outfile,"cd %s/sfiles\n",BASE);
  fprintf(outfile,"%smkattn hiattn_l.s %4.2f\n",bin,lefthi);
  fprintf(outfile,"%smkattn loattn_l.s %4.2f\n",bin,leftlo);
  fprintf(outfile,"%smkattn loattn_r.s %4.2f\n",bin,rightlo);
  fprintf(outfile,"cd %s/weights/cross\n",BASE);
  fprintf(outfile,"%scrossws\n",bin);
  fprintf(outfile,"cd %s\n",BASE);
  fprintf(outfile,"rm pethi.s\n");
  fprintf(outfile,
   "cat weights/right/right.s weights/left/left.sn code/appdw > pethi.s\n");
  fprintf(outfile,"rm code/appdw\nrm code/batchdw\n");

  /*make right brain lgn input*/
  fprintf(outfile,"cd inputs\n");
  for(k = 1; k <= m; k++)
    {
      fprintf(outfile,"cp input%d2.inp input%d.inp\n",k,k);
    }

  for(k = 0; k < num_c; k++)/*capacity loop */
    {
      C = start_c + inc_c*k;
      if(C == 100)
	strcpy(sc,"xx");
      else
	itoa(C,sc);
      fprintf(outfile,"#\n#\n");
      fprintf(outfile,"cd %s\n",BASE);
      fprintf(outfile,"mkdir noisy\n");

      /* make an input file for netgenC, must be in the code directory*/
      fprintf(outfile,"cd %s/code\n",BASE);
      fprintf(outfile,"%sgenw %d\n",bin,C);

      for(j = 0; j < num_a; j++)  /*attn loop*/
	{
	  attni = start_a + inc_a*j;
	  attn = (float)attni/100.0;
	  itoa(attni,sa);
	  fprintf(outfile,"#\n");
	  fprintf(outfile,"cd %s/sfiles\n",BASE);
	  fprintf(outfile,"%smkattn hiattn_r.s %4.2f\n",bin,attn);


	  fprintf(outfile,"cd %s/inputs\n",BASE);
	  for(i = 1; i<= m; i++)
	    {
	      fprintf(outfile,"%smkinput l %d %d\n",bin,ggns_in,ggnseed);
	      fprintf(outfile,"mv ggns.inp ggns%d.inp\n",i);
	      ggnseed++;
	    }
	  fprintf(outfile,"cd %s/weights/right\n",BASE);
	  fprintf(outfile,"foreach file (*.ws)\n");
	  fprintf(outfile,"  %s $file\n  end\n",netgen);
	  fprintf(outfile,"cd ../left\n");
	  fprintf(outfile,"foreach file (*.ws)\n");
	  fprintf(outfile,"  %s $file\n  end\n",netgen);
	  fprintf(outfile,"cd ../cross\n");
	  fprintf(outfile,"%scrosswt_i netgenC\nchmod u+x sh_cross\n",bin);
	  fprintf(outfile,"sh_cross\nrm sh_cross\n");
	  fprintf(outfile,"cd %s\n",BASE);
	  fprintf(outfile,"%ssim1 pethi\n",bin);
	  fprintf(outfile,"gzip *.out\n");
	  fprintf(outfile,"cd noisy\nmkdir b%s\n",sa);
	  fprintf(outfile,"cd %s\n",BASE);
	  fprintf(outfile,
	"mv spec_pet.m noisy/b%s/\nmv *.out* noisy/b%s/\n",sa,sa);
	}/* end of j loop - attn loop*/

      fprintf(outfile,"mv noisy %s/wken%s\n",whereto,sc);

    }/* end of k loop -- capacity loop*/

  fprintf(outfile,"cd %s/inputs\n",BASE);
  for(k = 1; k <= m; k++)
    {
      fprintf(outfile,"cp input%d1.inp input%d.inp\n",k,k);
    }
  fprintf(outfile,"cd %s\n",BASE);

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
  fprintf(outfile,"cd %s\n",BASE);

  fprintf(outfile,"rm inputs/ggns*.inp\n");
  fprintf(outfile,"rm code/netgenC.in\n");
  fprintf(outfile,"rm sfiles/*attn*.s\n");

  fclose(infile);
  fclose(outfile);
}
