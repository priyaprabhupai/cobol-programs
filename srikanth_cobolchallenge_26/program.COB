      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc

        IDENTIFICATION DIVISION.
        PROGRAM-ID. ARR1.
        ENVIRONMENT DIVISION.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
       01 ws-rem pic 9(2).
       01 ws-sum pic 9(2).
       01 ws-div  pic 9(2) value 10.
       01 ws-quo  pic 9.
        01 WS-TABLE.
         05 ws-a pic 9(2) occurs 5 times indexed by i.
       PROCEDURE DIVISION.
        move 22 to ws-a(1).
        move 33 to ws-a(2).
        move 05  to ws-a(3).
        move 55 to ws-a(4).
        move 10 to ws-a(5).
       set i to 1
       perform para-1 5 times.
       display "sum of Numbers" ws-sum
       stop run.
       para-1.
        divide ws-div into ws-a(i)  giving ws-quo remainder ws-rem
       if (ws-rem = 2 or ws-rem = 5)
        compute ws-sum = ws-sum + ws-a(i)
       end-if
        set i up by 1.
