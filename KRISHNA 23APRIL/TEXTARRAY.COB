      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEXTARRAY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-STR.
           05 WS-TEXT OCCURS 5 TIMES PIC X(8).
           05 WS-LEN  OCCURS 5 TIMES PIC 99.
       01 WS-X PIC 99.
       01 WS-Y PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM VARYING WS-X FROM 1 BY 1 UNTIL WS-X > 5
             ACCEPT WS-TEXT(WS-X)
           PERFORM VARYING WS-Y FROM 1 BY 1 UNTIL WS-Y > 8
               IF (WS-TEXT(WS-X)(WS-Y:1) NOT = '.')
                   ADD 1 TO WS-LEN(WS-X)
                  ELSE
                      MOVE 9 TO WS-Y
                  END-PERFORM
           END-PERFORM
           PERFORM VARYING WS-X FROM 1 BY 1 UNTIL WS-X > 5
            DISPLAY WS-TEXT(WS-X) "  " WS-LEN(WS-X)

            END-PERFORM
            STOP RUN.
