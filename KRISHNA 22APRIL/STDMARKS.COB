      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STDMARKS.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STUDENT ASSIGN TO "C:\Users\Public\STDMRKS\MARKS"
           ORGANIZATION IS SEQUENTIAL
           FILE STATUS IS WS-FS.
       DATA DIVISION.
       FILE SECTION.
       FD STUDENT.
       01 STD-REC.
           05 STD-UID PIC 99.
           05 STD-GENDER PIC X.
               88 VALIDGEN VALUE 'M' 'F'.
           05 STD-MARKS PIC 999.
       WORKING-STORAGE SECTION.
       77 WS-FS          PIC     99.
       77 WS-MALES       PIC     99   VALUE ZERO.
       77 WS-FEMALES     PIC     99   VALUE ZERO.
       77 WS-MTMARKS     PIC     999  VALUE ZERO.
       77 WS-FTMARKS     PIC     999  VALUE ZERO.
       77 WS-MMARKS      PIC     999  VALUE ZERO.
       77 WS-SMARKS      PIC     999  VALUE ZERO.
       PROCEDURE DIVISION.
       OPEN INPUT STUDENT
        IF (WS-FS = 00) THEN
           PERFORM READ-PARA THRU READ-EXIT
           PERFORM COMPUTE-PARA
           PERFORM CLOSE-PARA
       END-IF
       DISPLAY "MALES_" WS-MALES "TOTAL MARKS SCORED-" WS-MTMARKS
       DISPLAY "FEMALES" WS-FEMALES "TOTAL MARKS SCORED-" WS-FTMARKS
           STOP RUN.
       READ-PARA.
           PERFORM UNTIL WS-FS NOT = 00
           READ STUDENT
           END-READ
       IF (WS-FS NOT = 10) THEN
           PERFORM COMPUTE-PARA
       END-IF
       END-PERFORM.
       READ-EXIT.
           EXIT.
       COMPUTE-PARA.
           IF (STD-GENDER = 'M') THEN
           ADD 1 TO WS-MALES
           MOVE WS-MTMARKS TO WS-MMARKS
           MOVE STD-MARKS  TO WS-SMARKS
           ADD WS-SMARKS TO WS-MMARKS GIVING WS-MTMARKS
           ELSE
           IF(STD-GENDER = 'F') THEN
               ADD 1 TO WS-FEMALES
               MOVE WS-MTMARKS TO WS-MMARKS
               MOVE STD-MARKS  TO WS-SMARKS
               ADD WS-SMARKS TO WS-MMARKS GIVING WS-FTMARKS
           ELSE
               DISPLAY "INVALID GENDER"
           END-IF
           END-IF.
       CLOSE-PARA.
           CLOSE STUDENT.
