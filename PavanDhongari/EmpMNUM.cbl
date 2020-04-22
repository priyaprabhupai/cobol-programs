      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EmpDobMNUM.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMPFILE
           ASSIGN TO 'C:\Users\Manipal\Desktop\New folder\EMP.txt'
           ORGANISATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-STAT.
       DATA DIVISION.
       FILE SECTION.
       FD EMPFILE.
       01 EMP-REC.
           05 EMP-ID  PIC 999.
           05 EMP-DOB PIC X(6).
       WORKING-STORAGE SECTION.
       01 WS-NUMOFEMP.
           05 WS-MON OCCURS 12 TIMES PIC 9(2).
           05 WS-NUM OCCURS 12 TIMES PIC 9(2) VALUE ZERO.
       77 WS-STAT PIC 99.
       77 WS-MM PIC 99.
       77 WS-I PIC 99 VALUE ZERO.
       77 WS-EX PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            OPEN INPUT EMPFILE
            IF ( WS-STAT = 00 ) THEN
                PERFORM READ-PARA
                PERFORM CLOSE-PARA
            END-IF
            DISPLAY "MONTH          NUM OF EMPLOYEE"
            PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I >12
            DISPLAY WS-MON(WS-I) "             " WS-NUM(WS-I)
            END-PERFORM
            STOP RUN.
       READ-PARA.
          PERFORM UNTIL WS-STAT NOT = 00
           READ EMPFILE
           END-READ
           IF (WS-STAT NOT = 10) THEN
           PERFORM PROCEDURE-PARA
           END-IF
           END-PERFORM.
       PROCEDURE-PARA.
           PERFORM VARYING WS-I FROM 01 BY 1 UNTIL WS-I > 12
             MOVE WS-I TO WS-MON(WS-I)
           END-PERFORM
           MOVE EMP-DOB(3:2) TO WS-MM
           EVALUATE WS-MM
               WHEN WS-MM
                 MOVE WS-NUM(WS-MM) TO WS-EX
                 ADD 1 TO WS-EX GIVING WS-NUM(WS-MM)
               WHEN OTHER
                 DISPLAY "INVALID MONTH"
           END-EVALUATE.
       CLOSE-PARA.
           CLOSE EMPFILE.
       END PROGRAM EmpDobMNUM.
