      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. integer.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 int      pic 9(01).
       77 ws-sum   pic 9(03).
       01 n        pic 9(03).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           accept int
           move int to n
           compute ws-sum = n + n*11 + n*111
           display ws-sum
            STOP RUN.
       END PROGRAM integer.
