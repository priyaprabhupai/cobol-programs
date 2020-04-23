      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NSUM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-N    PIC 9 VALUE 5.
       01 WS-S   PIC 99 VALUE 10.
       01 WS-SUM PIC 9(6) VALUE 0.
       01 WS-TOTAL PIC 9(6) VALUE 0.
       01 WS-TOTAL1 PIC 9(4) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ENTER N VALUE"
            ACCEPT WS-N.
            COMPUTE WS-TOTAL = WS-N * 10 + WS-N
            COMPUTE WS-TOTAL1 = WS-TOTAL * 10 + WS-N
            COMPUTE WS-SUM = WS-N + WS-TOTAL + WS-TOTAL1
            DISPLAY WS-SUM
            STOP RUN.
