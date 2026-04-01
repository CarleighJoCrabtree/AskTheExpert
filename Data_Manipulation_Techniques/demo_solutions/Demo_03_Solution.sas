/***************************************************/
/* Activity 3:                                     */
/* Manipulating Data with Numeric Functions        */
/***************************************************/

/*************************************************************************************************/
/* The pg2.np_lodging table contains lodging statistics for the years 2010- 2017.                */
/* Each column name starts with CL followed by the year, for example:                            */
/*   	CL2010 has the number of nights stayed in a park in 2010.                                */
/*************************************************************************************************/

/***********************************************************/
/*  a) Highlight the PROC PRINT step and run the selected  */
/*     code. Examine the column names and the 10 rows      */
/*     printed from the np_lodging table.                  */
/*  b) Use the LARGEST function to create three new        */
/*     columns (Stay1, Stay2, and Stay3) whose values are  */
/*     the first, second, and third highest number of      */
/*     nights stayed from CL2010 through CL2017.           */
/*  c) Use the MEAN function to create a column named      */
/*     StayAvg that is the average number of nights stayed */
/*     for the years 2010 through 2017.                    */
/*	   Use the ROUND function to round values to           */
/*     the nearest integer.                                */
/*  d) Highlight the DATA step and run the selected code.  */
/***********************************************************/

proc print data=pg2.np_lodging(obs=10);
	where CL2010>0;
run;

data stays;
	set pg2.np_lodging;
/*        largest(K, of CL:)  	 */
	Stay1=largest(1, of CL:);
	Stay2=largest(2, of CL:);
	Stay3=largest(3, of CL:);
	StayAvg=round(mean(of CL:));
	
	if StayAvg>0;
	format Stay: comma11.;
	keep Park Stay:;
run;
