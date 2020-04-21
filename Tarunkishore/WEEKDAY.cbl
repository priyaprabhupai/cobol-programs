       IDENTIFICATION DIVISION.
       PROGRAM-ID. WEEKDAY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ws-day1.
        05 week pic x(3).
          88 MON VALUE 'MON'.
          88 TUE VALUE 'TUE'.
          88 WED VALUE 'WED'.
          88 THR VALUE 'THR'.
          88 FRI VALUE 'FRI'.
          88 SAT VALUE 'SAT'.
          88 SUN VALUE 'SUN'.
       PROCEDURE DIVISION.
       DISPLAY 'ENTER ANY DAY'
       accept week.
       DISPLAY '----------------------'
       Evaluate week
           WHEN 'MON'
            DISPLAY 'IT IS WORKING DAY'
           WHEN 'TUE'
            DISPLAY 'IT IS WORKING DAY'
           WHEN 'WED'
            DISPLAY 'IT IS WORKING DAY'
           WHEN 'THR'
            DISPLAY 'IT IS WORKING DAY'
           WHEN 'FRI'
            DISPLAY 'IT IS WORKING DAY'
           WHEN 'SAT'
            DISPLAY 'IT IS HOLIDAY'
           WHEN 'SUN'
            DISPLAY 'IT IS HOLIDAY'
           WHEN OTHER
             DISPLAY 'WRONG CHOICE'
       END-Evaluate.
       STOP RUN.
