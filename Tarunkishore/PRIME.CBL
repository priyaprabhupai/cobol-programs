       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIME.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 num1 PIC 999.
        01 i1 PIC 999.
        01 res1 PIC 99.
        01 rem1 PIC 99.
        01 flag1 PIC 9 value 0.

       PROCEDURE DIVISION.
        para1.
           DISPLAY "ENTER NUMBER FOR CHECKING PRIME OR NOT".
           ACCEPT num1.
           DISPLAY '----------------------'
           PERFORM VARYING i1 FROM 2 BY 1 UNTIL i1>=num1
              DIVIDE num1 BY i1 GIVING res1 REMAINDER rem1
              IF rem1=0 THEN MOVE 1 TO flag1
      *         DISPLAY i1 "   " rem1
           END-PERFORM.

           IF flag1=0 THEN DISPLAY num1 " is prime"
           else
             DISPLAY num1 " IS NOT A PRIME NO".

          STOP-RUN.
