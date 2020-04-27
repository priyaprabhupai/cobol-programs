       IDENTIFICATION DIVISION.
       PROGRAM-ID. Q26.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-NUM PIC 999999.
           01 WS-NUM1 PIC 999999.
           01 WS-REM PIC 9.
           01 WS-PRODUCT PIC 9999 VALUE 1.
       PROCEDURE DIVISION.
       ACCEPT-PARA.
           DISPLAY "ENTER ANY 6 DIGIT NUMBER".
           ACCEPT WS-NUM.
           PERFORM PARA-1 6 TIMES.
           DISPLAY "PRODUCT OF PRIME DIGIT : " WS-PRODUCT.
           STOP-RUN.
       PARA-1.
       DIVIDE WS-NUM BY 10 GIVING WS-NUM1 REMAINDER WS-REM
        MOVE WS-NUM1 TO WS-NUM.
        IF (WS-REM = 2 OR WS-REM = 3 OR WS-REM = 5 OR WS-REM = 7) THEN
           COMPUTE WS-PRODUCT = WS-PRODUCT * WS-REM
        END-IF.