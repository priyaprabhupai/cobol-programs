      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TextDot.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-SEN.
           05 WS-TEXT OCCURS 5 TIMES PIC X(20).
           05 WS-LEN OCCURS 5 TIMES PIC 99.
       01 WS-I PIC 99.
       01 WS-J PIC 999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 5
              ACCEPT WS-TEXT(WS-I)
              PERFORM VARYING WS-J FROM 1 BY 1 UNTIL WS-J > 20
                IF ( WS-TEXT(WS-I)(WS-J:1) NOT = '.')
                    ADD 1 TO WS-LEN(WS-I)
                ELSE
                    MOVE 21 TO WS-J
              END-PERFORM
            END-PERFORM
            PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 5
               DISPLAY WS-TEXT(WS-I) "     " WS-LEN(WS-I)
            END-PERFORM
            STOP RUN.
       END PROGRAM TextDot.
