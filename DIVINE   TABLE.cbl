      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. tblname.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-REC.
           05 NAME1 OCCURS 10 TIMES.
              10 FIRST1 PIC X(01).
                 88 FVALID VALUE 'A' THRU 'Z'.
              10 LAST1  PIC X(03).
                 88 LVALID VALUE 'a' THRU 'z'.
       77 I PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WS-REC.
            PERFORM A100-A-PARA
             VARYING I FROM 1 BY 1 UNTIL I >10.
            STOP RUN.
       A100-A-PARA.
           IF ( NAME1(I)(1:1) = 'A' ) THEN
               IF( ( NAME1(I)(2:1) >= 'a' AND NAME1(I)(2:1) <= 'z') AND
                   ( NAME1(I)(3:1) >= 'a' AND NAME1(I)(3:1) <= 'z') AND
                   ( NAME1(I)(4:1) >= 'a' AND NAME1(I)(4:1) <= 'z') )
                   THEN
                   DISPLAY NAME1(I)
           END-IF.
       END PROGRAM tblname.
