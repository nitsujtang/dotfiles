#include <stdio.h>
#include <stdlib.h>

int main() {
  FILE * infile = stdin;
  FILE * outfile = fopen("dum1", "w+");
  char buffer [1024];

  int length = fread(buffer, sizeof(char), 8, infile);

  while(length != 0) {
    printf("%d\n",length);
    fwrite(buffer, sizeof(char), length, outfile);

    length = fread(buffer, sizeof(char), 8, infile);
  }

  fclose(outfile);
}
