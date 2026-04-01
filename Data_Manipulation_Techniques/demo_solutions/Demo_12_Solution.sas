/***************************************************/
/* Activity 12:                                    */
/* Iterative and Conditional DO Loops              */
/***************************************************/

/*************************************************************************************************/
/* The following DATA step does not have an input table.                                         */
/* Create new tables based on the goals.                                                         */
/*************************************************************************************************/

/***********************************************************/
/*  You booked a trip to Zion National Park.               */
/*  You would like to save $1000 before going but the      */
/*  trip is in 5 months. If you save $150 each month,      */
/*  will you reach your savings goal before the trip?      */
/*                                                         */
/*  a) The following DATA steps create the tables          */
/*     savings4 and savings5.                              */
/*  b) In the first DATA step, complete the DO statement   */
/*     to save for 5 months or UNTIL you save $1000.       */
/*  c) Run the step. Did you reach your savings goal?      */
/*  d) In the second DATA step, complete the DO statement  */
/*     to save for 5 month or WHILE savings is less than   */
/*     $1000.                                              */
/*  e) Run the step. Did you reach your savings goal?      */
/***********************************************************/

data savings4;
	do i= 1 to 5 until (Savings>1000);
		Month+1;
		Savings+150;
		output;
	end;
	format Savings dollar12.;
	drop i;
run;

data savings5;
	do i = 1 to 5 while (Savings<1000);
		Month+1;
		Savings+150;
		output;
	end;
	format Savings dollar12.;
	drop i;
run;