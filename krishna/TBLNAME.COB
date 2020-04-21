      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TBLNAME.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-REC.
           05 STR OCCURS 10 TIMES.
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
           IF ( STR(I)(1:1) = 'A') THEN
               IF ( ( STR (I)(2:1) >= 'a' AND STR(I) (2:1) <= 'z') AND
                    ( STR (I)(3:1) >= 'a' AND STR(I) (3:1) <= 'z') AND
                    ( STR  (I)(4:1)>= 'a' AND STR(I) (4:1) <= 'z'))
                    THEN
                    DISPLAY STR(I)
            END-IF.
       END PROGRAM TBLNAME.
