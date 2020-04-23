      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PATTERNMTCHNG.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-STR PIC X(100).
       01 WS-PTRN PIC X(100).
       01 WS-TIMES PIC 99 VALUE ZERO.
       77 WS-I PIC 999.
       77 WS-SLEN PIC 999.
       77 WS-PLEN PIC 999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WS-STR
           ACCEPT WS-PTRN
           MOVE FUNCTION STORED-CHAR-LENGTH(WS-STR) TO WS-SLEN
           MOVE FUNCTION STORED-CHAR-LENGTH(WS-PTRN) TO WS-PLEN
           PERFORM VARYING WS-I  FROM 1 BY 1
           UNTIL WS-I - WS-PLEN > WS-SLEN
              IF (WS-STR(WS-I : WS-PLEN) = WS-PTRN(1 : WS-PLEN)) THEN
                  ADD 1 TO WS-TIMES
                END-IF
                END-PERFORM
            DISPLAY WS-TIMES
            STOP RUN.
