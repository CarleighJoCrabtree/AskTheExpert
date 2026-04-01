/***************************************************/
/* Activity 9:                                     */
/* One-to-Many Merge                               */
/***************************************************/

/*************************************************************************************************/
/* The pg2.np_2016traffic table contains monthly traffic statistics for national parks.          */
/* It currently does not have a column for the park name values. Merge the pg2.np_codelookup     */
/* which has the national park codes and the park names.                                         */
/*************************************************************************************************/

/***********************************************************/
/*  a) Submit the two PROC SORT steps. Determine the name  */
/*     of the common column in the sorted tables.          */
/*  b) Modify the second PROC SORT step to use the RENAME= */
/*     option after the pg2.np_2016traffic table to rename */
/*     Code to ParkCode. Modify the BY statement to sort   */
/*     by the new column name.                             */
/*  c) Complete the DATA step to merge the sorted tables   */
/*     by the common column to create a new table,         */
/*     work.trafficStats.                                  */
/***********************************************************/

proc sort data=pg2.np_codelookup 
		  out=work.codesort;
	by ParkCode;
run;

proc sort data=pg2.np_2016traffic (rename=(Code=ParkCode))
		  out=work.traf2016Sort;
	by ParkCode month;
run;

data trafficstats;
	merge codesort traf2016sort;
	by ParkCode;
	drop Name_Code;
run;
