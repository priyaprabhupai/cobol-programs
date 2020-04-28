      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DUPLICATES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEXT PIC X(20) VALUE '123423'.
       01 WS-CNT PIC 99 VALUE 0.
       01 WS-TABLE.
       05 WS-CHAR-DIGITS PIC X(67) VALUE
       'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'.
       05 WS-CHAR-DIG REDEFINES WS-CHAR-DIGITS OCCURS 62 TIMES INDEXED
       BY IND PIC X.
       05 I PIC 99 VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM UNTIL I>62
           MOVE 0 TO WS-CNT
           INSPECT WS-TEXT TALLYING WS-CNT FOR ALL WS-CHAR-DIG(I)
           IF WS-CNT>1
              DISPLAY WS-CHAR-DIG(I)
           END-IF
           ADD 1 TO I
           END-PERFORM.
            STOP RUN.
       END PROGRAM DUPLICATES.
