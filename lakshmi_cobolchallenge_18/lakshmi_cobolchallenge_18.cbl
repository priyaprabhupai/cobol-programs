      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOL18.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT AS-DD1
           ASSIGN TO "C:\Users\UMA\Desktop\AS-DD1.txt"
           ORGANISATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-FS1.
           SELECT OUTPUT-FILE
           ASSIGN TO "C:\Users\UMA\Desktop\OUTPUT-FILE.txt"
           ORGANISATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-FS2.
       DATA DIVISION.
       FILE SECTION.
       FD AS-DD1.
       01 AS-DD1-REC.
           05 WS-SEN PIC X(256).
       FD OUTPUT-FILE.
       01 OUTPUT-FILE-REC.
           05 WS-SEN1 PIC X(256).
       WORKING-STORAGE SECTION.
       01 WS-FS1  PIC 99.
       01 WS-FS2  PIC 99.
       01 I      PIC 999.
       PROCEDURE DIVISION.
       MAIN-PARA.
           PERFORM OPEN-PARA.
           STOP RUN.
       OPEN-PARA.
           OPEN INPUT  AS-DD1.
           IF WS-FS1 = 00
             PERFORM INSPECT-PARA
             DISPLAY "FILE OPENED"
           ELSE
             DISPLAY "FILE ERROR".
       CLOSE-PARA.
           CLOSE AS-DD1 OUTPUT-FILE.
       INSPECT-PARA.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I>256
             IF (WS-SEN(I:1) = 'a' OR                   +
                 WS-SEN(I:1) = 'A') THEN
               MOVE WS-SEN  TO WS-SEN1
               WRITE OUTPUT-FILE-REC
             END-IF
           END-PERFORM.
           END PROGRAM COBOL18.
