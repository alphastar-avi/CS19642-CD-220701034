#include <stdio.h>
#include <ctype.h>
#include <string.h>

const char* keyword[]={ "int", "main", "float", "printf", "char"};
const int keyword_size= sizeof(keyword)/sizeof(keyword[0]);

const char* operator[]={"-", "+", "/", "*", "<", ">"};
const int operator_size= sizeof(operator)/sizeof(operator[0]);

const char special[]= { '{', '}', '[', ']', '&', '$' };
const int special_size= sizeof(special)/sizeof(special[0]);

int iskeyword(char* word){
for( int i=0; i<keyword_size; i++){
    if(strcmp(word, keyword[i])==0){
      return 1;
    }
  }
  return 0;
}

int isoperator( char* word){
  for( int i=0; i<operator_size; i++){
    if(strcmp(word, operator[i])==0){
      return 1;
    }
  }
  return 0;
}

int iisspecial(char word){
  for( int i=0; i<special_size; i++){
    if( word == special[i]){
      return 1;
    }
  }
  return 0;
}

void anaysis(char *code){
char* token = strtok(code, " \t\n");
  printf("Recognized: \t");
  
  while( token != NULL){
    if(iskeyword(token)){
      printf("keyword: %s\n", token);
    }

    else if(isoperator(token)){
      printf("Operator: %s\n", token);
      }

    else if(iisspecial(token[0])){
      printf("Special: %s\n", token);
    }

    else if(isalpha( token[0]) || token[0]=='_'){
      printf("Identifer: %s\n", token);
    }

    else{
      printf("Bro idk skill issue: %s\n", token);
    }

    token = strtok(NULL, " \t\n");
    }
  }



int main(){
  char code[500];
  printf("Enter the C code:\n");
  fgets( code, sizeof(code), stdin);
  anaysis(code);
  return 0;

}
