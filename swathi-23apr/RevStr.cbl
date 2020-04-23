      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RevStr.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-STR PIC X(150).
       01 WS-STR1 PIC X(150).
       01 WS-REVSTR PIC X(150).
       01 WS-REVSTR1 PIC X(150).
       01 WS-STRLEN PIC 999.
       01 WS-LEN PIC 999.
       77 WS-I PIC 999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WS-STR1
           MOVE FUNCTION LOWER-CASE(WS-STR1) TO WS-STR
           MOVE FUNCTION STORED-CHAR-LENGTH(WS-STR) TO WS-STRLEN
           MOVE WS-STRLEN TO WS-LEN
            PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > WS-STRLEN
            MOVE WS-STR(WS-I:1) TO WS-REVSTR1(WS-LEN:1)
            SUBTRACT 1 FROM WS-LEN
            END-PERFORM
            MOVE FUNCTION UPPER-CASE(WS-REVSTR1(1:1)) TO WS-REVSTR(1:1)
            MOVE WS-REVSTR1(2:WS-STRLEN - 1)
            TO WS-REVSTR(2: WS-STRLEN - 1 )
            DISPLAY WS-REVSTR
            STOP RUN.
       END PROGRAM RevStr.
