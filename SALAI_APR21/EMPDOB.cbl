      *     *  ***    ******************************************************************
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
           SELECT DOB
           ASSIGN TO 'D:\New folder\DOB.txt'
           ORGANIZATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-STAT.
       DATA DIVISION.
       FILE SECTION.
           FD DOB.
           01 DOB-REC.
              05    EMP-ID PIC 999.
              05    EMP-DOB.
               07    YY PIC XX.
               07    MM PIC XX.
               07    DD PIC XX.
       WORKING-STORAGE SECTION.
           01 WS-STAT PIC 99.
           01 WS-TABLE.
               05 WS-MM PIC 9(2) OCCURS 12 TIMES INDEXED BY IND.
           01 I PIC 99 VALUE 01.
       PROCEDURE DIVISION.
       MAIN-PARA.
           OPEN INPUT DOB
           IF WS-STAT = 00 THEN
             PERFORM READ-PARA
             PERFORM OUTPUT-PARA
             PERFORM CLOSE-PARA
           END-IF
           STOP RUN.
       READ-PARA.
           PERFORM UNTIL WS-STAT NOT = 00
           READ DOB
           END-READ
           IF (WS-STAT NOT = 10) THEN
              PERFORM PROC-PARA
           END-IF
           END-PERFORM.
       PROC-PARA.
           EVALUATE MM
             WHEN '01'
             ADD 1 TO WS-MM(01)
             WHEN '02'
             ADD 1 TO WS-MM(02)
             WHEN '03'
             ADD 1 TO WS-MM(03)
             WHEN '04'
             ADD 1 TO WS-MM(04)
             WHEN '05'
             ADD 1 TO WS-MM(05)
             WHEN '06'
             ADD 1 TO WS-MM(06)
             WHEN '07'
             ADD 1 TO WS-MM(07)
             WHEN '08'
             ADD 1 TO WS-MM(08)
             WHEN '09'
             ADD 1 TO WS-MM(09)
             WHEN '10'
             ADD 1 TO WS-MM(10)
             WHEN '11'
             ADD 1 TO WS-MM(11)
             WHEN '12'
             ADD 1 TO WS-MM(12)
           END-EVALUATE.
       OUTPUT-PARA.
           DISPLAY 'MONTH' '  ' 'NO OF EMPLOYEES'
           PERFORM UNTIL I>12
           DISPLAY I '      '  WS-MM(I)
           ADD 1 TO I
           END-PERFORM.
               CLOSE-PARA.
               CLOSE DOB.
