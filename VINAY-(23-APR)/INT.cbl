
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INTEGER.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NUM PIC 99.
       77 WS-OUTNUM PIC 9999 VALUE ZERO.
       77 WS-OUT PIC 9999 VALUE ZERO.
       77 WS-SUM PIC 9999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WS-NUM
            PERFORM 3 TIMES
            MOVE WS-OUTNUM TO WS-SUM
            COMPUTE WS-OUTNUM = WS-NUM + (WS-SUM * 10)
            ADD WS-OUTNUM TO WS-OUT
            END-PERFORM
            DISPLAY WS-OUT
            STOP RUN.
       END PROGRAM INTEGER.
