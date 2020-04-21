      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. big.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 WS-A PIC 9.
           01 WS-B PIC 9.
           01 WS-C PIC 9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WS-A
           ACCEPT WS-B
           ACCEPT WS-C
           END-ACCEPT
           IF ( WS-A = WS-B ) THEN
               IF (WS-A = WS-C) THEN
                  DISPLAY "ALL ARE EQUAL"
               ELSE
                   IF (WS-A > WS-C) THEN
                       DISPLAY "A AND B ARE BIGGER"
                   ELSE
                        DISPLAY "C IS BIGGER"
                   END-IF
               END-IF
           ELSE
               IF (WS-A = WS-C) THEN
                   IF( WS-A > WS-B) THEN
                       DISPLAY " A AND C ARE BIGGER"
                   ELSE
                       DISPLAY "B IS BIGGER"
                   END-IF
                ELSE
                    IF ( WS-B = WS-C) THEN
                        IF (WS-B > WS-A) THEN
                            DISPLAY "B AND C ARE BIGGER"
                        ELSE
                             DISPLAY "A IS BIGGER"
                        END-IF
                    ELSE
                        IF (WS-A > WS-B AND WS-A > WS-C) THEN
                            DISPLAY " A IS BIGGER"
                        END-IF
                        IF (WS-B > WS-A AND WS-B > WS-C) THEN
                            DISPLAY " B IS BIGGER"
                        END-IF
                        IF (WS-C > WS-B AND WS-C > WS-A) THEN
                            DISPLAY " C IS BIGGER"
                        END-IF
                    END-IF
                END-IF
           END-IF
            STOP RUN.
       END PROGRAM big.
