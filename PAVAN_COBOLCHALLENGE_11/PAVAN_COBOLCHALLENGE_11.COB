      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics:
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAT-MUL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  MAT1.
              02  MR1  OCCURS 2 TIMES.
                     03  MC1  PIC 9(2)  OCCURS 2 TIMES.
       01  MAT2.
              02  MR2  OCCURS 2 TIMES.
                     03  MC2  PIC 9(2)  OCCURS 2 TIMES.
       01  MAT3.
              02  MR3  OCCURS 2 TIMES.
                     03  MC3  PIC 9(3)  OCCURS 2 TIMES.
       77  ROW1  PIC  9.
       77  ROW2  PIC  9.
       77  COL1  PIC  9.
       77  COL2  PIC  9.
       77  LIN   PIC  99.
       77  COL3  PIC  99.
       77  I  PIC  9.
       77  J  PIC  9.
       77  K  PIC  9.
       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY "MATRIX MULTIPLICATION".
           DISPLAY " ".
           DISPLAY "ENTER THE NUMBER OF ROWS AND COLUMNS OF I MATRIX".
           ACCEPT ROW1.
           ACCEPT COL1.
           DISPLAY "ENTER THE NUMBER OF ROWS AND COLUMNS OF II MATRIX".
           ACCEPT ROW2.
           ACCEPT COL2.
           IF (ROW1 IS NOT EQUAL TO COL2)
            DISPLAY "MATRIX MULTIPLICATION IS NOT POSSIBLE"
           ELSE
            PERFORM COMPU-PARA.
           DISPLAY " ".
           DISPLAY " ".
           STOP RUN.
       COMPU-PARA.
           DISPLAY "ENTER THE ELEMENTS OF MATRIX 1"
           PERFORM ACCPARA1 VARYING I FROM 1 BY 1 UNTIL I>ROW1
              AFTER J FROM 1 BY 1 UNTIL J>COL1
           DISPLAY "ENTER THE ELEMENTS OF MATRIX 2"
           PERFORM ACCPARA2 VARYING I FROM 1 BY 1 UNTIL I>ROW2
              AFTER J FROM 1 BY 1 UNTIL J>COL2
           PERFORM INIST-PARA VARYING I FROM 1 BY 1 UNTIL I>ROW1
              AFTER J FROM 1 BY 1 UNTIL J>COL2
           PERFORM MULMAT-PARA VARYING I FROM 1 BY 1 UNTIL I>ROW1
              AFTER J FROM 1 BY 1 UNTIL J>COL2
              AFTER K FROM 1 BY 1 UNTIL K>COL1.


           DISPLAY  "THE RESULTANT MATRIX IS".
           DISPLAY " ".
           PERFORM DISP-PARA VARYING I FROM 1 BY 1 UNTIL I>ROW1
              AFTER J FROM 1 BY 1 UNTIL J>COL1.
           DISPLAY " ".
       ACCPARA1.
           ACCEPT MC1(I J).
       ACCPARA2.
           ACCEPT MC2(I J).
       MULMAT-PARA.
           COMPUTE MC3(I J)  =  MC3(I J) + MC1(I K)  *  MC2(K J).
       DISP-PARA.
           DISPLAY MC3(I J).
           ADD 5 TO COL3.
           IF J IS EQUAL TO COL1
           ADD 1 TO LIN
           MOVE 10 TO COL3.
       INIST-PARA.
           COMPUTE MC3(I J) = 0.
