      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. reverse.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 VAR2     PIC X(50).
       01 VAR1     PIC X(50).
       01 WS-TXT   PIC X(50).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           accept VAR2
           MOVE VAR2 TO WS-TXT
           MOVE FUNCTION REVERSE(WS-TXT) TO VAR1.
           DISPLAY VAR1.

           STOP RUN.


       END PROGRAM reverse.
