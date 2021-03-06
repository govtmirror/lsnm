/*********************************
  Written by:  Brent Warner
  07/18/03

  mkbatchrlcomb.cc, generates shell script to run sim1

  this program is very much like mkbatchb.cc, except that when a new subject
  is created, the intra-hemisphere connections are altered in both the 
  left and right hemispheres.  this effectively combines them into one
  hemisphere with several neurons not dedicated to the actual task.

**************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

#define maxline 80
#define maxsubjects 25

void itoa(int p, char sp[]);

int main()
{
  FILE *infile, *outfile, *appfile;
  float rightlo, lefthi, leftlo;
  float attn;
  int i,j,k;
  int rweights[maxsubjects][13];
  int num_a,start_a,end_a,inc_a,n_pairs;
  int attni,m,ggns_in,ggnseed,n_subj;
  char sa[3], appname[maxline], temp[2];
  char bin[maxline],whereto[maxline],netgen[maxline];
  char Infile[maxline];

  const char *BASE= getenv("LSNM");

  strcpy(bin,BASE);
  strcat(bin,"bin/");
  strcpy(netgen,bin);
  strcat(netgen,"netgenC");
  strcpy(Infile,BASE);
  strcat(Infile,"code/mkbatchrlcomb.in");

  if( (infile = fopen(Infile, "r")) == NULL)
    {
      printf("can't open %s\n", Infile);
      exit(0);
    }

  fscanf(infile,"%s",whereto);
  fscanf(infile,"%d %d %d %f %f %f",&m,&ggns_in, &ggnseed, &lefthi,&leftlo,&rightlo);
  fscanf(infile,"%d %d %d %d %d",&n_subj,&n_pairs,&start_a,&end_a,&inc_a);
  
  outfile = fopen("batchrlcomb","w");

  for(i=1; i<=n_pairs; i++)
    {
      strcpy(appname,"apprl");
      sprintf(temp,"%d",i);
      strcat(appname,temp);
      appfile = fopen(appname,"w");
      fprintf(appfile,"#include %sweights/right/rightlist.txt\n",BASE);
      fprintf(appfile,"#include %sweights/left/leftlist.txtn\n",BASE);
      fprintf(appfile,"#include %sweights/cross/crosslist.txt\n",BASE);
      fprintf(appfile,"#include %sinputs/pethi%d.rsb\n",BASE,i);
      fclose(appfile);
    }

  for(i=1; i<=n_subj; i++) /*loop saving connection weights for each subj*/
    {
      fscanf(infile,"%d %d %d %d %d %d %d %d %d %d %d %d %d",&rweights[i][0],&rweights[i][1],&rweights[i][2],&rweights[i][3],&rweights[i][4],&rweights[i][5],&rweights[i][6],&rweights[i][7],&rweights[i][8],&rweights[i][9],&rweights[i][10],&rweights[i][11],&rweights[i][12]);
    } /* end of n_subj loop */

  if(ggnseed == 0)
    ggnseed = time(NULL);

  lefthi /= 100.0;
  leftlo /= 100.0;
  rightlo  /= 100.0;

  if(inc_a == 0)
    num_a = 1;
  else
    num_a = (end_a - start_a)/inc_a + 1;
  
  /*start of output to batchrlcomb*/
  fprintf(outfile,"#\n#\n#\n");

  fprintf(outfile,"cd %ssfiles\n",BASE);
  fprintf(outfile,"%smkattn hiattn_l.s %4.2f\n",bin,lefthi);
  fprintf(outfile,"%smkattn loattn_l.s %4.2f\n",bin,leftlo);
  fprintf(outfile,"%smkattn loattn_r.s %4.2f\n",bin,rightlo);
  fprintf(outfile,"cd %sweights/cross\n",BASE);
  fprintf(outfile,"%scrossws\n",bin);
  fprintf(outfile,"cd %s\n",BASE);

  for(i=1; i<=n_pairs; i++)
    {
      fprintf(outfile,"rm pethi%d.s\n",i);
      fprintf(outfile,"cat weights/right/right.s weights/left/left.sn code/apprl%d > pethi%d.s\n",i,i);
      fprintf(outfile,"rm code/apprl%d\n",i);
    }

  fprintf(outfile,"rm code/batchrlcomb\n");
  /*make right brain lgn input*/
  fprintf(outfile,"cd inputs\n");
  for(k = 1; k <= m; k++)
    {
      fprintf(outfile,"cp input%d1.inp input%d.inp\n",k,k);
    }

  for(k=1; k<=n_subj; k++)/* subject loop */
    {
      fprintf(outfile,"#\n#\n");
      fprintf(outfile,"cd %s\n",BASE);
      fprintf(outfile,"mkdir noisy\n");

      /* make an input file for netgenC, must be in the code directory*/
      fprintf(outfile,"cd %scode\n",BASE);

    /* create intra-hemisphere connections in RIGHT */
      fprintf(outfile,"%saltgenw %d %d %d %d %d %d %d %d %d %d %d %d %d\n",bin,rweights[k][0],rweights[k][1],rweights[k][2],rweights[k][3],rweights[k][4],rweights[k][5],rweights[k][6],rweights[k][7],rweights[k][8],rweights[k][9],rweights[k][10],rweights[k][11],rweights[k][12]);
    /* create intra-hemisphere connections in LEFT (currently same as right)*/
      fprintf(outfile,"%saltgenw_L %d %d %d %d %d %d %d %d %d %d %d %d %d\n",bin,rweights[k][0],rweights[k][1],rweights[k][2],rweights[k][3],rweights[k][4],rweights[k][5],rweights[k][6],rweights[k][7],rweights[k][8],rweights[k][9],rweights[k][10],rweights[k][11],rweights[k][12]);

     
      for(j = 0; j < num_a; j++)  /* attn loop */
	{
	  attni = start_a + inc_a*j;
	  attn = (float)attni/100.0;
	  itoa(attni,sa);
	  fprintf(outfile,"#\n");
	  fprintf(outfile,"cd %ssfiles\n",BASE);
	  fprintf(outfile,"%smkattn hiattn_r.s %4.2f\n",bin,attn);

	  fprintf(outfile,"cd %sinputs\n",BASE);
	  for(i = 1; i<= m; i++)
	    {
	      fprintf(outfile,"%smkinput l %d %d\n",bin,ggns_in,ggnseed);
	      fprintf(outfile,"mv ggns.inp ggns%d.inp\n",i);
	      ggnseed++;
	    }

	  fprintf(outfile,"cd %sweights/right\n",BASE);
	  fprintf(outfile,"for file in *.ws ; do\n");
	  fprintf(outfile,"  %s $file\n  done\n",netgen);
	  fprintf(outfile,"cd ../left\n");
	  fprintf(outfile,"for file in *.ws ; do\n");
	  fprintf(outfile,"  %snetgenC_L $file\n  done\n",bin);
	  fprintf(outfile,"echo attn level: %4.2f\n",attn);
	  fprintf(outfile,"cd %snoisy\nmkdir b%s\n",BASE,sa);

	  for(i=1; i<=n_pairs; i++)
	    {	      
	      fprintf(outfile,"cd %sweights/cross\n",BASE);
	      fprintf(outfile,"%scrosswt_i netgenC\nchmod u+x sh_cross\n",bin);
	      fprintf(outfile,"echo Building cross connections...\n");
	      fprintf(outfile,"sh_cross\nrm sh_cross\n");
	      fprintf(outfile,"cd %s\n",BASE);
	      fprintf(outfile,"%ssim1 pethi%d\n",bin,i);
	      fprintf(outfile,"gzip *.out\n");
	      fprintf(outfile,"cd noisy/b%s\nmkdir trial%d\n",sa,i);
	      fprintf(outfile,"cd %s\n",BASE);
	      fprintf(outfile,
 "mv spec_pet.m noisy/b%s/trial%d/\nmv *.out* noisy/b%s/trial%d/\n",sa,i,sa,i);
	      fprintf(outfile,"cp %s/weights/cross/crosslist.txt noisy/b%s/trial%d/crosslist%d.txt\n",BASE,sa,i,i);
	      fprintf(outfile,"#\n");
	    } /* end of stimulus pairs */

	} /* end of j loop - attn loop*/

      fprintf(outfile,"mv noisy %s/subj%d\n",whereto,k);
    } /* end of k loop - subject loop */

  fprintf(outfile,"\nrm weights/right/*.w\n");
  fprintf(outfile,"rm weights/left/*.w\n");
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
  fprintf(outfile,"rm code/netgenC_L.in\n");
  fprintf(outfile,"rm sfiles/*attn*.s\n");

  fclose(infile);
  fclose(outfile);
}



