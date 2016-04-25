#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

void print_counts(int count0, int count1, int count2, int count3, int count4){
  printf(
  "0 - 199:     %i \n"
  "200 - 399:   %i \n"
  "400 - 599:   %i \n"
  "600 - 799:   %i \n"
  "800 - 999:   %i \n", count0,count1,count2,count3,count4);
}

void switch_statement (int A[], int size){
  int i;
  int count0 = 0;             		// tally for 0 - 199
  int count1 = 0;             		// 200- 399
  int count2 = 0;             		// 400-599
  int count3 = 0;             		// 600-799
  int count4 = 0;             		// 800-999

  for (i=0; i< size; i++){

    switch(A[i]/200){         		// number divided by 200

      case 0:        		// if number divided by 200 returns 0,
        count0++;               //  then it must be in the range 0-199
        break;

      case 1:
        count1++;
        break;

      case 2:
        count2++;
        break;

      case 3:
        count3++;
        break;

      case 4:
        count4++;
        break;
    }
  }

// Print out the tallys
  printf("Switch Statement Counts:\n");
  print_counts(count0,count1,count2,count3,count4);
}

void iffy(int B[], int size){
  int i = 0;
  int count0 = 0;             		// tally for 0 - 199
  int count1 = 0;             		// 200- 399
  int count2 = 0;             		// 400-599
  int count3 = 0;             		// 600-799
  int count4 = 0;             		// 800-999

  for (i=0; i < size; i++){
    if (B[i] < 200){
      count0++;
    }
    else if(B[i] >= 200 && B[i] < 400){
      count1++;
    }
    else if(B[i] >= 400 && B[i] < 600){
      count2++;
    }
    else if(B[i] >= 600 && B[i] < 800){
      count3++;
    }
    else if(B[i] >= 800 && B[i] < 1000){
      count4++;
    }
    else{
      printf("Value out of range, check random number generator.\n");
    }
  }
  // Print out the tallys
      printf("If-Then-Else Statement Counts:\n");
      print_counts(count0,count1,count2,count3,count4);
}

int main(){

	clock_t begin_switch, end_switch, begin_iffy, end_iffy;
	double switch_time;
	double iffy_time;
	int size,i,z;

	time_t seconds;
	time(&seconds);
	srand((unsigned int) seconds);

	printf("Input Array Size: ");
	scanf("%d", &size);
	int A[size];				// initialize array of input size
	int B[size];				// initialize array for second couting method

	for (i=0; i< size; i++){		//populate with random integers
		A[i] = rand() % 1000;     	// use modulus to limit range from 0 to 999
  }

/*DEBUGGING - Make sure the integers are randomly generated
	printf("The randomly generated values are:\n");
	for (j =0; j < size; j++){
		printf("%d\n", A[j]);
	}
*/

// Copy the Random valued integer array for the second counting method
	for (z=0; z < size; z++){
		B[z] = A[z];
	}

	begin_switch = clock();			// start clock
	switch_statement(A,size);               // run switch statement counting method
	end_switch = clock();			// end clock

	switch_time = (double)(end_switch-begin_switch)/ CLOCKS_PER_SEC;	//calculate time (sec)

	printf("Switch Statement - Count Execution Time: %f seconds\n\n", switch_time);

	begin_iffy = clock();				            //start clock
	iffy(B, size);                          // run if-then-else counting method
	end_iffy = clock();					            // end clock
	iffy_time = (double)(end_iffy-begin_iffy)/ CLOCKS_PER_SEC;

	printf("If-Then-Else Statement - Count Execution Time: %f seconds\n\n", iffy_time);

	return(0);
}
