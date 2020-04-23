      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. REVERSE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-A PIC X(50) VALUE 'KRISHNA'.
       01 WS-TABLE.
           05 WS-O OCCURS 0 TO 50 TIMES DEPENDING ON WS-LEN PIC X.
       01 WS-I PIC 9(3) VALUE 0.
       01 WS-J PIC 9(2) VALUE 1.
       01 WS-LEN PIC 9(3) VALUE 0.
       PROCEDURE DIVISION.
       MOVE FUNCTION LENGTH(WS-A) TO WS-LEN.
       PERFORM VARYING WS-I FROM WS-LEN BY -1 UNTIL WS-I = 0
       MOVE WS-A(WS-I:1) TO WS-O(WS-J)
       ADD 1 TO WS-J
       END-PERFORM
           DISPLAY WS-TABLE.
            STOP RUN.
