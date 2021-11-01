#include<stdio.h>

#include<ctype.h>

#include<stdlib.h>
#include<string.h>

int main(void){

  //compare0
  printf("int i: ");
  int i = scanf("%i", &i);
  printf("int j: ");
  int j = scanf("%i", &j);

  if (i == j)
  printf("same\n");
  else
  printf("different\n");
  
  //compare1
  char *a;
  char *b;

  printf("string a: ");
  scanf("%s", a);
  printf("string b: ");
  scanf("%s", b);

  if (a == b)
      printf("same\n");
  else
      printf("different\n");

  //compare2
  char *c;
  char *d = c;

  printf("string c: ");
  scanf("%s", c);
  printf("string d: ");
  scanf("%s", d);

  d[0] = toupper(d[0]);

  printf("string c: %s\n", c);
  printf("string d: %s\n", d);

  //compare3
  char *e;
  printf("string e: ");
  scanf("%s", e);

  char *f = malloc(strlen(e) + 1);

  for (int i = 0, n = strlen(e); i < n + 1; i++){
      f[i] = e[i];
  }

  f[0] = toupper(f[0]);

  printf("string e= %s\n", e);
  printf("string f= %s\n", f);

  //compare4
  char *s;
  printf("string s: ");
  scanf("%s", s);

  char *t = malloc(strlen(s) + 1);

  strcpy(t, s);
  t[0] = toupper(t[0]);

  printf("string s= %s\n", s);
  printf("string t= %s\n", t);
}
