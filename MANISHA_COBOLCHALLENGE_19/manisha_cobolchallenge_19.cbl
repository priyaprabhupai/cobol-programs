      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. REVERSE.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STDFILE
           ASSIGN TO 'C:\Users\Manipal\Desktop\MANISHA\REV.txt'
           ORGANISATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-STAT.
           SELECT OUTFILE
           ASSIGN TO 'C:\Users\Manipal\Desktop\MANISHA\OUT.txt'

           FILE STATUS IS WS-OUT-STAT.

       DATA DIVISION.
       FILE SECTION.
       FD STDFILE.
       01 STD-REC.
             05 WS-TEXT PIC  X(10).
       FD OUTFILE.
       01 OUT-REC.
             05 WS-OUT-TEXT PIC X(10).
       WORKING-STORAGE SECTION.

       01 WORTTXT1 PIC X(50) VALUE SPACES.
       01 WS-STOP         PIC X(01) VALUE 'N'.

       01 B PIC X(50) VALUE SPACES.
       01 LOO PIC 9(2) VALUE 0.
       01 LOP PIC 9(2) VALUE 0.
       77 WS-STAT PIC 99.
       77 WS-OUT-STAT PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM 1000-INIT-PARA
           THRU    1999-INIT-PARA-EXIT.
           PERFORM 2000-PROC-PARA
           THRU    2999-PROC-PARA-EXIT UNTIL WS-STOP='Y'.
           PERFORM 3000-CLOS-PARA
           THRU    3999-CLOS-PARA-EXIT.
           STOP RUN.
       1000-INIT-PARA.
           OPEN INPUT STDFILE
           OPEN OUTPUT OUTFILE

               IF (WS-STAT NOT = 00 )
                  DISPLAY 'OPEN STDFILE ERROR'.
               IF (WS-OUT-STAT NOT = 00)
                   DISPLAY 'OPEN OUTFILE ERROR'.
       1999-INIT-PARA-EXIT.
                      EXIT.
       2000-PROC-PARA.
           READ STDFILE AT END MOVE 'Y' TO WS-STOP
           GO TO 2999-PROC-PARA-EXIT.
               MOVE 50 TO LOO.
               MOVE 1 TO LOP.
               MOVE WS-TEXT TO WORTTXT1

               PERFORM 50 TIMES
               MOVE WORTTXT1(LOP:1) TO B(LOO:1)
               SUBTRACT 1 FROM LOO
               ADD 1 TO LOP
               END-PERFORM.

               MOVE B TO WS-OUT-TEXT.
               WRITE STD-REC.
       2999-PROC-PARA-EXIT.
                      EXIT.

       3000-CLOS-PARA.
            CLOSE STDFILE OUTFILE.
       3999-CLOS-PARA-EXIT.
                      EXIT.



       END PROGRAM REVERSE.
