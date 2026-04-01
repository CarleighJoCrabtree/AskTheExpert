/***************************************************/
/* Activity 6:                                     */
/* Creating Custom Formats- Single Values          */
/***************************************************/

/*************************************************************************************************/
/* The pg2.np_summary table contains public use statistics from the National Park Service.       */
/* The Reg column represents the park region as a code.                                          */
/*************************************************************************************************/

/***********************************************************/
/*  a) Highlight the PROC FREQ step and run the selected   */
/*     code. Review the output. Notice that regional codes */
/*     are used, not descriptive values.                   */
/*  b) Complete the VALUE statement to create a format     */
/*     named $HIGHREG that defines the values shown below. */
/*     IM => Intermountain                                 */
/*     PW => Pacific West                                  */
/*     SE => Southeast                                     */
/*     other codes => All Other Regions                    */
/*  c) Add a FORMAT statement to the PROC FREQ step so     */
/*     that the $HIGHREG format is applied to the Reg      */
/*     column.                                             */
/*  d) Run the program and review the output. Verify that  */
/*     the descriptive values for the Reg column are       */
/*     displayed.                                          */
/***********************************************************/

proc format;
value $HIGHREG "IM" = ""
	  		   "PW" = ""
	 		   "SE" = ""
	 		   other = "";
run;

title 'High Frequency Regions';
proc freq data=pg2.np_summary order=freq;
    tables Reg;
    label Reg='Region';
	*format ;
run;
title;
