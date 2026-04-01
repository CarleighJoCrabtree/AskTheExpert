/***************************************************/
/* Activity 11:                                    */
/* Conditional DO Loops                            */
/***************************************************/

/*************************************************************************************************/
/* The following DATA step does not have an input table.                                         */
/* Create new tables based on the goals.                                                         */
/*************************************************************************************************/

/***********************************************************/
/*  You want to book a trip to Grand Canyon National Park  */
/*  after you have at least $1000 in savings. If you save  */
/*  $150 each month, how many months must you wait         */
/*  to book the trip?                                      */
/*                                                         */
/*  a) The following DATA steps create the tables          */
/*     savings2 and savings3.                              */
/*  b) Complete the DO UNTIL condition to continue saving  */
/*     until there is at least $1000 in savings.           */
/*  c) Run the DATA step. How many months must you save?   */
/*  d) Complete the DO WHILE condition to continue saving  */
/*     savings is less than $1000.                         */
/*  e) Run the DATA step. Was there a difference in the    */
/*     Number of months you need to save?                  */
/*  f) Uncomment the Savings=1000; assignment statement    */
/*     in both DATA steps. What changes?                   */
/***********************************************************/

data savings2;
	*Savings=1000;
	do until ();
		Month+1;
		Savings+150;
		output;
	end;
	format Savings dollar12.;
run;

data savings3;
	*Savings=1000;
	do while ();
		Month+1;
		Savings+150;
		output;
	end;
	format Savings dollar12.;
run;
