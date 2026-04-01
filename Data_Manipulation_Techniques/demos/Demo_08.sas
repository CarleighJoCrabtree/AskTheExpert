/***************************************************/
/* Activity 8:                                     */
/* Concatenating Tables                            */
/***************************************************/

/*************************************************************************************************/
/* The pg2.np_2014, pg2.np_2015 and pg2.np_2016 tables contain monthly public use statistics     */
/* from the National Park Service.                                                               */
/*************************************************************************************************/

/**********************************************************/
/* a) Open the pg2.np_2014, pg2.np_2015 and pg2.np_2016   */
/*    tables. What two names columns are different in     */
/*    NP_2014?                                            */
/* b) Complete the SET statement to concatenate:          */
/*    pg2.np_2014                                         */
/*    pg2.np_2015                                         */
/*    pg2.np_2016                                         */
/*    to create the new table, np_combine.                */
/* c) Use the RENAME= data set option to rename           */
/*    Park to ParkCode and Type to ParkType in np_2014.   */
/**********************************************************/

data work.np_combine;
    set ;
    where Month in (6, 7, 8) and ParkType="National Park";
run;
