      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. WEAKDAY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-DAYOFWEAK.
          05 WS-DAY PIC X(3).
           88 D-1 VALUE 'MON'.
           88 D-2 VALUE 'TUE'.
           88 D-3 VALUE 'WED'.
           88 D-4 VALUE 'THU'.
           88 D-5 VALUE 'FRI'.
           88 D-6 VALUE 'SAT'.
           88 D-7 VALUE 'SUN'.
       PROCEDURE DIVISION.
       ACCEPT WS-DAY
           EVALUATE WS-DAY
            WHEN 'MON'
              DISPLAY "WORKING DAY"
            WHEN 'TUE'
              DISPLAY "WORKING DAY"
            WHEN 'WED'
              DISPLAY "WORKING DAY"
            WHEN 'THU'
              DISPLAY "WORKING DAY"
            WHEN 'FRI'
              DISPLAY "WORKING DAY"
            WHEN 'SAT'
              DISPLAY "HOLIDAY"
            WHEN 'SUN'
              DISPLAY "HOLIDAY"
           END-EVALUATE
            STOP RUN.
