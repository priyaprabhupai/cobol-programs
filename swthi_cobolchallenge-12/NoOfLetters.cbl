      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NoOfLetters.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-SEN PIC X(100).
       01 WS-SEN-LEN PIC 9(3).
       01 WS-WORD PIC X(100).
       01 WS-WLEN PIC 9(3) VALUE ZERO.
       01 WS-LEN PIC ZZ9.
       01 WS-I PIC 9(3).
       01 WS-J PIC 9(3) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WS-SEN
           MOVE FUNCTION STORED-CHAR-LENGTH(WS-SEN) TO WS-SEN-LEN
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > WS-SEN-LEN + 1
             IF (WS-SEN(WS-I:1) = ' ' OR WS-I > WS-SEN-LEN) THEN
                 MOVE FUNCTION STORED-CHAR-LENGTH(WS-WORD) TO WS-WLEN
                 MOVE WS-WLEN TO WS-LEN
                 DISPLAY  WS-LEN " -  " WS-WORD
                 MOVE 1 TO WS-J
                 MOVE SPACES TO WS-WORD
             ELSE
                 MOVE WS-SEN(WS-I:1) TO WS-WORD(WS-J:1)
                 ADD 1 TO WS-J
             END-IF
           END-PERFORM
           STOP RUN.
       END PROGRAM NoOfLetters.
