#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

void print_src_values(int src[2048][2048], int num_row, int num_col){
  int i,j;
    for (i = 0; i < num_row; i++){
      for(j = 0; j < num_col; j++){
        printf("src[%d][%d] = %d\n", i, j, src[i][j]);
      }
        printf("\n");
    }
}

void print_dst_values(int dst[2048][2048], int num_row, int num_col, int dst_num){
  int i,j;
    for (i = 0; i < num_row; i++){
      for(j = 0; j < num_col; j++){
        printf("dst%d [%d][%d] = %d\n", dst_num, i, j, dst[i][j]);
      }
        printf("\n");
    }
}

void copyij(int src[2048][2048], int dst1[2048][2048], int num_row, int num_col){
  int i, j;
    for (i = 0; i < num_row; i++){
      for (j = 0; j < num_col; j++){
        dst1[i][j] = src[i][j];
      }
    }
}

 void copyji(int src[2048][2048], int dst2[2048][2048], int num_row, int num_col){
  int i, j;
  for (j=0; j < num_col; j++){
    for (i=0; i < num_row; i++){
      dst2[i][j] = src[i][j];
    }
  }
}

int main(){

  clock_t begin_ij, end_ij, begin_ji, end_ji;
  double ij_exec_time;
  double ji_exec_time;
  int num_row,num_col;
  int i= 0, j = 0;
  time_t seconds;
  time(&seconds);
  srand((unsigned int) seconds);

  printf("\nInput 1 = [rows] Input 2 = [columns]\n");
  printf("EX: \"10 10\" creates Matrix[10][10]\n");
  printf("\nInput Two Dimensional Array Size: ");
  scanf("%d %d", &num_row, &num_col);
//        printf("number of rows: %d\n", num_row);
//        printf("number of columns: %d\n", num_col);

// Allocating Space for max matrix size of [2048][2048]
  static int src[2048][2048];   // randomly generated source array
  static int dst1[2048][2048];   // destination array for copyij
  static int dst2[2048][2048];  // destination array fro copyji

// POPULATE SOURCE ARRAY WITH RANDOM NUMBERS
  for (i = 0; i < num_row; i++){
    for(j = 0; j < num_col; j++){
      src[i][j] = rand() % 1000;
    }
  }
// Print a block of 3 rows and 3 columns to show its working
  printf("3x3 Block of Source Values:\n\n");
  print_src_values(src, 3, 3);

  begin_ij = clock();                     // start clock
  copyij(src, dst1, num_row, num_col);    // copy matrix
  end_ij = clock();                       // end clock
  ij_exec_time = (double)(end_ij-begin_ij)/ CLOCKS_PER_SEC;  //calculate time (sec)

  printf("CopyIJ Execution Time: %f seconds\n", ij_exec_time);

// CHECK THAT VALUES WERE COPIED CORRECTLY
  printf("3x3 Block of Copied Values for CopyIJ:\n\n");
  print_dst_values(dst1, 3, 3, 1);

  begin_ji = clock();                      //start clock
  copyji(src, dst2, num_row, num_col);     // copy matrix
  end_ji = clock();                        // end clock
  ji_exec_time = (double)(end_ji-begin_ji)/ CLOCKS_PER_SEC;

  printf("CopyJI Execution Time: %f seconds\n", ji_exec_time);

// CHECK THAT VALUES WERE COPIED CORRECTLY
  printf("3x3 Block of Copied Values for CopyJI:\n\n");
// Print a block of 3 x 3 to show that it worked
  print_dst_values(dst2,3, 3, 2);

        return(0);
}
