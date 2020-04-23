      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SenPtrn.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-SEN  PIC X(150).
       01 WS-PTRN PIC X(150).
       01 WS-TIMES PIC 99 VALUE ZERO.
       77 WS-I PIC 999.
       77 WS-SLEN PIC 999.
       77 WS-PLEN PIC 999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WS-SEN
            ACCEPT WS-PTRN
            MOVE FUNCTION STORED-CHAR-LENGTH(WS-SEN) TO WS-SLEN
            MOVE FUNCTION STORED-CHAR-LENGTH(WS-PTRN) TO WS-PLEN
            PERFORM VARYING WS-I FROM 1 BY 1
            UNTIL WS-I - WS-PLEN  > WS-SLEN
               IF ( WS-SEN(WS-I: WS-PLEN) = WS-PTRN(1:WS-PLEN)) THEN
                   ADD 1 TO WS-TIMES
               END-IF
            END-PERFORM
            DISPLAY WS-TIMES
            STOP RUN.
       END PROGRAM SenPtrn.
