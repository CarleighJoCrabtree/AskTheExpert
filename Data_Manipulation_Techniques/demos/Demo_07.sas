/***************************************************/
/* Activity 7:                                     */
/* Creating Custom Formats- Range of Values        */
/***************************************************/

/*************************************************************************************************/
/* The pg2.np_acres table contains acreage amounts for national parks.                           */
/* Group the acreage amounts into Small, Medium and Large.                                       */
/*************************************************************************************************/

/***********************************************************/
/*  a) Complete the VALUE statement to create a format     */
/*     named PSIZE that categorizes parks based on the     */
/*     gross acres. Use the ranges and values shown below. */
/*     Less than 10,000 acres => Small                     */
/*     10,000 up to but excluding 500,000 => Medium        */
/*     500,000 and more acres => Large                     */
/*  b) In the DATA step, use the PUT function to put the   */
/*     values in GrossAcres in the PSIZE format.           */
/*  c) Run the program and view the output table. Verify   */
/*     the values of the ParkSize column.                  */
/***********************************************************/

proc format;
	value PSIZE low - 10000 = ""
				10000 - 500000 = ""
				500000 - high = "";
run;

data np_parksize;
    set pg2.np_acres;
	ParkSize=put();
    format GrossAcres comma16.;
run;
	