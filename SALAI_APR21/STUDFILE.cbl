      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT MARKS
           ASSIGN TO 'D:\New folder\MARKS.txt'
           ORGANIZATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-STAT.
       DATA DIVISION.
       FILE SECTION.
           FD MARKS.
           01 MARKS-REC.
              05    STUD-ID PIC 99.
              05    STUD-GENDER PIC X.
              05    STUD-MARKS PIC 999.
       WORKING-STORAGE SECTION.
           01 WS-STAT PIC 99.
           01 WS-MALE-CNT PIC 9 VALUE 0.
           01 WS-FEMALE-CNT PIC 9 VALUE 0.
           01 WS-MALE-MARKS PIC 999 VALUE 000.
           01 WS-FEMALE-MARKS PIC 999 VALUE 000.
       PROCEDURE DIVISION.
       MAIN-PARA.
           OPEN INPUT MARKS
           IF WS-STAT  = 00 THEN
             PERFORM READ-PARA
             PERFORM CLOSE-PARA
           END-IF
           DISPLAY 'MALES ' WS-MALE-CNT ' MARKS ' WS-MALE-MARKS.
           DISPLAY 'FEMALES ' WS-FEMALE-CNT ' MARKS ' WS-FEMALE-MARKS.
           STOP RUN.
       READ-PARA.
           PERFORM UNTIL WS-STAT NOT = 00
           READ MARKS
           END-READ
           IF (WS-STAT NOT = 10) THEN
              PERFORM PROC-PARA
           END-IF
           END-PERFORM.
       PROC-PARA.
           IF STUD-GENDER = 'M'
              ADD 1 TO WS-MALE-CNT
              COMPUTE WS-MALE-MARKS = WS-MALE-MARKS + STUD-MARKS
              ELSE IF STUD-GENDER = 'F'
              ADD 1 TO WS-FEMALE-CNT
              COMPUTE WS-FEMALE-MARKS = WS-FEMALE-MARKS + STUD-MARKS
           ELSE
              DISPLAY 'GENDER IS NOT VALID'
           END-IF.
           CLOSE-PARA.
               CLOSE MARKS.
