      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. REVERSE2.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 EINA01 PIC X(50) .
       01 WORTTXT1 PIC X(50) VALUE SPACES.

       01 AUSA01 PIC X(50) VALUE SPACES.
       01 B PIC X(50) VALUE SPACES.
       01 LOO PIC 9(2) VALUE 0.
       01 LOP PIC 9(2) VALUE 0.
       PROCEDURE DIVISION.
       ACCEPT EINA01
       MOVE 50 TO LOO.
       MOVE 1 TO LOP.
       MOVE EINA01 TO WORTTXT1.

       PERFORM 50 TIMES
       MOVE WORTTXT1(LOP:1) TO B(LOO:1)
       SUBTRACT 1 FROM LOO
       ADD 1 TO LOP
       END-PERFORM.

       MOVE B TO AUSA01.
       DISPLAY AUSA01.
       STOP RUN.
       END PROGRAM REVERSE2.
