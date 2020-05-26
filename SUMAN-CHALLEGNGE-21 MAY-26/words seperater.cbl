      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. WORDSEP.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT  WORD
           ASSIGN TO 'C:\Users\Manipal\Desktop\New folder\word.txt'
           ORGANISATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-STAT.
       DATA DIVISION.
       FILE SECTION.
       FD WORD.
       01 WORD-REC.
           05 WS-SEN PIC X(100).
       WORKING-STORAGE SECTION.
       01 WS-STAT PIC 99.
       01 WS-LEN PIC 999.
       01 WS-I PIC 999.
       01 WS-J PIC 999 VALUE 1.
       01 WS-WORD PIC X(100).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            OPEN INPUT WORD
            IF WS-STAT = 00 THEN
                PERFORM READ-PARA
                PERFORM C-PARA
            END-IF
            STOP RUN.
       READ-PARA.
           PERFORM UNTIL WS-STAT NOT = 00
           READ WORD
           END-READ
           IF (WS-STAT NOT = 10) THEN
           PERFORM PROCEDURE-PARA
           END-IF
           END-PERFORM.
       PROCEDURE-PARA.
           MOVE FUNCTION STORED-CHAR-LENGTH(WS-SEN) TO WS-LEN
           PERFORM VARYING  WS-I FROM 1 BY 1 UNTIL WS-I > WS-LEN + 1
             IF (WS-SEN(WS-I:1) = ' ' OR WS-SEN(WS-I:1) ='/' OR
                 WS-SEN(WS-I:1) =':' OR WS-SEN(WS-I:1) =';' OR
                 WS-SEN(WS-I:1) ='?' OR WS-I > WS-LEN) THEN
                 DISPLAY   WS-WORD
                 MOVE SPACES TO WS-WORD
                 MOVE 1 TO WS-J
             ELSE
                 MOVE WS-SEN(WS-I:1) TO WS-WORD(WS-J:1)
                 ADD 1 TO WS-J
             END-IF
           END-PERFORM.
       C-PARA.
                  CLOSE WORD.
       END PROGRAM WORDSEP.
