      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. swathi_cobolChallenge_22.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-AGE PIC 999.
       01  WS-GENDER PIC X(1).
       01  WS-PRICE PIC 999 VALUE 500.
       01  WS-TICKET PIC 999 VALUE ZERO.
       01  WS-FINAL  PIC 999 VALUE 500.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WS-AGE
            ACCEPT WS-GENDER
            IF ( WS-AGE < 4) THEN
                COMPUTE WS-FINAL = 0
            ELSE
                IF ( WS-AGE > 3 AND WS-AGE <12 ) THEN
                    COMPUTE WS-TICKET = ( WS-PRICE * 50 ) / 100
                    COMPUTE WS-FINAL = WS-PRICE - WS-TICKET
                ELSE
                    IF( WS-AGE > 60) THEN
                        COMPUTE WS-TICKET = ( WS-PRICE * 40 ) / 100
                        COMPUTE WS-FINAL = WS-PRICE - WS-TICKET
                    ELSE
                        IF (WS-GENDER = 'F' OR WS-GENDER = 'f') THEN
                           COMPUTE WS-TICKET = ( WS-PRICE * 20 ) / 100
                           COMPUTE WS-FINAL = WS-PRICE - WS-TICKET
                        END-IF
                    END-IF
                 END-IF
             END-IF
            DISPLAY WS-FINAL
            STOP RUN.
       END PROGRAM swathi_cobolChallenge_22.
