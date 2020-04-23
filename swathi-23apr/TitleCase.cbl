      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TitleCase.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-FSEN PIC X(100).
       01 WS-SEN  PIC X(100).
       01 WS-TITLE PIC X(100).
       01 WS-LEN PIC 999.
       01 WS-I PIC 999.
       01 WS-CURR PIC X.
       01 WS-PREV PIC X.
       01 WS-NEXT PIC X.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WS-FSEN
           MOVE FUNCTION LOWER-CASE(WS-FSEN) TO WS-SEN
           MOVE LENGTH OF WS-FSEN TO WS-LEN
           MOVE WS-SEN(1:1) TO WS-PREV
           PERFORM VARYING WS-I FROM 2 BY 1 UNTIL WS-I > WS-LEN
              MOVE FUNCTION UPPER-CASE(WS-SEN(1:1)) TO WS-TITLE(1:1)
              MOVE WS-SEN(WS-I:1) TO WS-CURR
              IF ( WS-PREV = ' ') THEN
                  MOVE FUNCTION UPPER-CASE( WS-CURR) TO WS-TITLE(WS-I:1)
              ELSE
                  MOVE WS-CURR TO WS-TITLE(WS-I:1)
              END-IF
              MOVE WS-CURR TO WS-PREV
           END-PERFORM
            DISPLAY WS-TITLE
            STOP RUN.
       END PROGRAM TitleCase.
