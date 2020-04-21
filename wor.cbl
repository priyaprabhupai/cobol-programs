      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. wor.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DAY PIC X(3).
           88 WS-MON VALUE 'MON'.
           88 WS-TUE VALUE 'TUE'.
           88 WS-WED VALUE 'WED'.
           88 WS-THU VALUE 'THU'.
           88 WS-FRI VALUE 'FRI'.
           88 WS-SAT VALUE 'SAT'.
           88 WS-SUN VALUE 'SUN'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WS-DAY.
           EVALUATE TRUE
              WHEN WS-MON OR WS-TUE OR WS-WED OR WS-THU OR WS-FRI
                   DISPLAY "WORKING DAY"
              WHEN WS-SAT OR WS-SUN
                   DISPLAY "HOLIDAY"
              WHEN OTHER
                   DISPLAY "WORNG  INPUT"
            END-EVALUATE
            STOP RUN.
       END PROGRAM wor.
