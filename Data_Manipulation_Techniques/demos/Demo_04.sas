/***************************************************/
/* Activity 4:                                     */
/* Manipulating Data with Character Functions      */
/***************************************************/

/*************************************************************************************************/
/* The pg2.np_monthlytraffic table contains monthly traffic statistics for national parks.       */
/* However, the national park names and park types are included in the same column.              */
/*************************************************************************************************/

/***********************************************************/
/*  a) Notice that the DATA step creates a table named     */
/*     PARKS and reads only those rows where ParkName ends */
/*     with NP.                                            */
/*  b) Modify the DATA step to create or modify the        */
/*     following columns:                                  */
/*     1) Create a new column named Type.                  */
/*        Use the SCAN function to scan ParkName for       */
/*        the last word.                                   */
/*     2) Create a new column named NPLocation.            */
/*  	  Use the FIND function to identify the position   */
/*		  number of the NP string in the Parkname column.  */
/*	   3) Create a new column named NameLength.            */
/*        Subtract 2 from the value in NPLocation.         */
/*        This will be the dynamic length of each          */
/*        park name.                                       */
/*     4) Create a new column named Park.                  */
/*        Use the SUBSTR function to read the ParkName     */
/*        column, start at the first position and extract  */
/*        the number characters found in NameLength.       */
/*        This will extract the park name without          */
/*        the park type abbreviation at the end.           */
/*     5) Create a new column named Park2.                 */
/*        Nest the previous functions to produce           */
/*        the same result.                                 */
/*     6) Drop NPLocation, NameLength, ParkName and Park2. */
/***********************************************************/

data parks;
	set pg2.np_monthlytraffic;
	where ParkName like '%NP';
	drop ParkCode Region Location; /* NPLocation NameLength ParkName Park2; */
/*        scan(colName, number of word to extract) */
	*Type=scan();
/*              find(colName, "string to find starting position of") */
	*NPLocation=find();
	
	*NameLength= ;
/*        substr(colName, start position number, number of characters to extract) */
	*Park=substr();
	
	*Park2=substr();
run;

