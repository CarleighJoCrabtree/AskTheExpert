/***************************************************/
/* Activity 2:                                     */
/* Accumulating Column within Groups               */
/***************************************************/

/*************************************************************************************************/
/* The pg2.np_yearlyTraffic table contains annual traffic counts at locations in national parks. */ 
/* Park names are grouped into the following park types.                                         */
/*   		National Monument                                                                    */
/*   		National Park                                                                        */
/*  		National Preserve                                                                    */
/*   		National River                                                                       */
/*  		National Seashore                                                                    */
/*************************************************************************************************/

/***********************************************************/
/*  a) Run the PROC SORT step to sort the                  */
/*     pg2.np_yearlyTraffic table by ParkType and ParkName.*/
/*  c) Modify the DATA step as follows:                    */
/*     1) Comment out assignment and keep statements.      */
/*     2) Add a sum statement to create a column           */
/*        named TypeCount that is the running total        */
/*        of Count.                                        */
/*     3) Add an IF THEN statement to reset TypeCount      */
/*        within each ParkType. If it's the first row      */
/*        of a new ParkType, then reset the value in       */
/*        TypeCount to 0.                                  */
/*     4) Format TypeCount so values are displayed with    */
/*        commas.                                          */
/*     5) Drop Location and ParkName.                      */
/*  d) Run the program and confirm TypeCount is reset at   */
/*     the beginning of each ParkType group.               */
/*  e) Modify the DATA step as follows:                    */
/*	   1) Write only the last row for each ParkType        */
/*        to the output table.                             */
/*     2) Drop Count.                                      */
/***********************************************************/

proc sort data=pg2.np_yearlyTraffic   
          out=sortedTraffic(keep=ParkType ParkName Location Count);
	by ParkType ParkName;
run;

data TypeTraffic;
    set sortedTraffic;
    by ParkType;
    
/*  Comment out after running    */
    First_ParkType= first.ParkType;
    Last_ParkType= last.ParkType;
	keep ParkType First_ParkType Last_ParkType;
run;
