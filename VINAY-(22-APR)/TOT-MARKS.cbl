 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MARKS.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STDFILE
           ASSIGN TO 'C:\Users\Manipal\Desktop\New folder\std.txt'
           ORGANISATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-STAT.
       DATA DIVISION.
       FILE SECTION.
       FD STDFILE.
       01 STD-REC.
           05     STUD-ID PIC 99.
           05     STUD-GENDER PIC X.
               88 VALIDG VALUE 'M' 'F'.
           05  STUD-MARKS PIC 999.
       WORKING-STORAGE SECTION.
       77 WS-STAT   PIC 99.
       77 WS-MC     PIC 99 VALUE ZERO.
       77 WS-FC     PIC 99 VALUE ZERO.
       77 WS-MMARKS PIC 999 VALUE ZERO.
       77 WS-FMARKS PIC 999 VALUE ZERO.
       77 WS-MARK   PIC 999 VALUE ZERO.
       77 WS-SMARK  PIC 999 VALUE ZERO.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN INPUT STDFILE
           IF WS-STAT = '00' THEN
               PERFORM READ-PARA THRU READ-EXIT
               PERFORM CLOSE-PARA
           END-IF
           DISPLAY "MALES - " WS-MC " Total marks scored - " WS-MMARKS
           DISPLAY "FEMALES - "WS-FC " Total marks scored - " WS-FMARKS
            STOP RUN.
       READ-PARA.
           PERFORM UNTIL WS-STAT NOT = 00
           READ STDFILE
           END-READ
           IF (WS-STAT NOT = 10) THEN
           PERFORM PROCEDURE-PARA
           END-IF
           END-PERFORM.
       READ-EXIT.
           EXIT.
       PROCEDURE-PARA.
           IF ( STUD-GENDER = 'M') THEN
               ADD 1 TO WS-MC
               MOVE WS-MMARKS TO WS-MARK
               MOVE STUD-MARKS TO WS-SMARK
               ADD WS-SMARK TO WS-MARK GIVING WS-MMARKS
           ELSE
               IF( STUD-GENDER = 'F') THEN
                   ADD 1 TO WS-FC
                   MOVE WS-FMARKS TO WS-MARK
                   MOVE STUD-MARKS TO WS-SMARK
                   ADD WS-SMARK TO WS-MARK GIVING WS-FMARKS
               ELSE
                   DISPLAY "INAVALID GENDER"
               END-IF
           END-IF.

       CLOSE-PARA.
           CLOSE STDFILE.
       END PROGRAM MARKS.
