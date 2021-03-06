//  System-specific definitions and prototypes

#include <stdio.h>

/****************************************/
//    Unix-specific Redefinitions

#define      HWND    int
#define BOOL int
#define LPSTR        char*

#define    TRUE    1
#define FALSE  0

#define MessageBox(x,str1,str2,code) str2?fprintf(stderr,"%s\n%s",str1,str2):fprintf(stderr,"%s",str1)

#define _CLASSDEF(x)   ;

#define        MAXPATH 256

#define              PTWindowsObject                 int
#define              InvalidateRect(x, y, z)         ;
#define                UpdateWindow(x)                 ;

/*#define        strcmpi(str1, str2)     strcasecmp(str1,str2)*/

BOOL    TimeOut(void);

//   End of Unix-specific redefinitions
/****************************************/

