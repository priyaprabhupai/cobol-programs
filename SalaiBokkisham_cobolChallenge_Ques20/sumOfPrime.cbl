      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE.
           05 WS-NUM PIC 9(4) OCCURS 10 TIMES INDEXED BY IND.
       01 R PIC 9(2).
       01 Q PIC 9(2).
       01 I PIC 9(2).
       01 A PIC 9(2).
       01 TOTAL PIC 9(2) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PARA.
           PERFORM A-PARA VARYING I FROM 1 BY 1 UNTIL I > 10
           DISPLAY 'SUM OF PRIME NUMBERS' TOTAL
           STOP RUN.
       A-PARA.
           SET IND TO 1
           ACCEPT WS-NUM(IND)
           PERFORM PRIME-PARA
           SET IND UP BY 1.
       PRIME-PARA.
           IF WS-NUM(IND) = 2
               PERFORM SUM-PARA
           END-IF
           MOVE 2 TO A
           PERFORM UNTIL A >= WS-NUM(IND)
           DIVIDE WS-NUM(IND) BY A GIVING Q REMAINDER R
           IF R IS EQUAL TO 0
               MOVE WS-NUM(IND) TO A
           END-IF
           ADD 1 TO A
           IF A = WS-NUM(IND)
               PERFORM SUM-PARA
           END-IF
           END-PERFORM.
       SUM-PARA.
           COMPUTE TOTAL = TOTAL + WS-NUM(IND).
       END PROGRAM YOUR-PROGRAM-NAME.
