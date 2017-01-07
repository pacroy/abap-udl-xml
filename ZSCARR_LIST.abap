************************************************************************
* Program: ZSCARR_LIST                                                 *
* Authors: John Doe                                                    *
* Created: Jan 07, 2017                                                *
*----------------------------------------------------------------------*
* Description: Hello World                                             *
*----------------------------------------------------------------------*

REPORT zscarr_list
  LINE-SIZE 254
  LINE-COUNT 60000
  NO STANDARD PAGE HEADING.

************************************************************************
* Global Declaration                                                   *
************************************************************************

DATA: lt_scarr TYPE TABLE OF scarr WITH EMPTY KEY.
  
START-OF-SELECTION.
  SELECT * FROM scarr INTO TABLE lt_scarr.
  
END-OF-SELECTION.
  LOOP AT lt_scarr INTO DATA(ls_scarr). " Inline declaration
	WRITE: / `Carrier Code:`, ls_scarr-carrid,
			 'Carrier Name:', ls_scarr-carrname.
  ENDLOOP.