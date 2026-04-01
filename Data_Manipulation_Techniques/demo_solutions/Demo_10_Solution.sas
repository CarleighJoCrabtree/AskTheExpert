/***************************************************/
/* Activity 10:                                    */
/* Iterative DO Loop                               */
/***************************************************/

/*************************************************************************************************/
/* The following DATA step does not have an input table.                                         */
/* Create new tables based on the goals.                                                         */
/*************************************************************************************************/

/***********************************************************/
/*  You are going on a trip to Arches National Park in     */
/*  5 months. How much money will you have in savings      */
/*  if you save $150 each month?                           */
/*                                                         */
/*  a) The following DATA step creates the table savings1. */
/*  b) Add an iterative DO loop that executes 5 times.     */
/*  c) Inside the DO loop, create a column named Month     */
/*     and add 1 to each row.                              */
/*  d) Inside the DO loop, create a column named Savings   */
/*     and add 150 to each row.                            */
/*  e) Inside the DO loop, add an explicit output          */
/*     statement.                                          */
/*  f) Run the DATA step to view monthly savings amount.   */
/*  g) Remove the explicit output statement and run the    */
/*     DATA step. Note the difference between i and Month. */
/*  h) Uncomment the DROP statement to drop the i column.  */
/*  i) Run the DATA step to view the total savings         */
/*     after 5 months.                                     */
/***********************************************************/

data savings1;
	do i = 1 to 5;
		Month+1;
		Savings+150;
		*output;
	end;
	format Savings dollar12.;
	drop i;
run;
