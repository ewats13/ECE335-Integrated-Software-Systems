#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#define LENGTH 500
#define K 10000

void print_first_ten(double A[]){
  int i;
  for (i =0; i < 10; i++){
    printf("%f\n", A[i]);
  }
}

void print_dest(double A[]){
    printf("Combination Value: %f\n\n", A[0]);
}

void combine3(double * A, double * dest, int length){
  int i;
  *dest = 1.0;
  for (i=0; i < length; i++){
    *dest = *dest * A[i];
  }
}

void combine5(double * A, double * dest, int length){
  int i;
  int limit = length-1;
  double acc = 1.0;
// Combine 2 elements at a time
  for (i = 0; i < limit; i+=2){
    acc = (acc * A[i]) * A[i+1];
  }
// Finish any remaining elements
  for (;i < length; i++){
    acc = acc * A[i];
  }
  *dest = acc;
}

void combine7(double * A, double * dest, int length){
  int i;
  int limit = length-1;
  double acc = 1.0;
// Combine 2 elements at a time
  for (i=0; i < limit; i+=2){
    acc = acc * (A[i] * A[i+1]);
  }
// Finish any remaining elements
  for (; i < length; i++){
    acc = acc * A[i];
  }
  *dest = acc;
}

int main(){
  int i;
  clock_t begin_three, end_three, begin_five, end_five, begin_seven, end_seven;
  double three_time;
  double five_time;
  double seven_time;
  time_t seconds;
  time(&seconds);
  srand((unsigned int) seconds);

  double A[LENGTH];   //input matrix
  double dest3[1];
  double dest5[1];
  double dest7[1];

  for (i=0; i < LENGTH; i++)    // initialize the array elements
  A[i] = 0.90 + (double)(rand()% K)/50000;

/* DEBUGGING: Testing with small number of values to ensure that
              that the combination functions were working correctly
    print_first_ten(A);
*/
    begin_three = clock();            // start clock
    combine3(A,dest3,LENGTH);
    end_three = clock();              // end clock
    three_time = (double)(end_three-begin_three)/ CLOCKS_PER_SEC;
    printf("\n");
    printf("Combine 3 Execution Time: %f seconds\n", three_time);
    print_dest(dest3);

    begin_five = clock();            // start clock
    combine5(A, dest5, LENGTH);
    end_five = clock();              // end clock
    five_time = (double)(end_five-begin_five)/ CLOCKS_PER_SEC;
    printf("Combine 5 Execution Time: %f seconds\n", five_time);
    print_dest(dest5);

    begin_seven = clock();            // start clock
    combine7(A, dest7, LENGTH);
    end_seven = clock();              // end clock
    seven_time = (double)(end_seven-begin_seven)/ CLOCKS_PER_SEC;
    printf("Combine 7 Execution Time: %f seconds\n", seven_time);
    print_dest(dest7);
}
