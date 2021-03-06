      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. UPPERCASE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STR PIC X(256).
       01               PIC x      VALUE "N".
           88 SPACE-FOUND           VALUE "Y"
           WHEN SET TO FALSE   "N".
       01 NEW-STRING    PIC x(256).
       01 SUB PIC 9(5).
       PROCEDURE DIVISION.
           DISPLAY "ENTER  STRING"
           ACCEPT STR.
           MOVE  FUNCTION LOWER-CASE(STR) TO NEW-STRING
           SET SPACE-FOUND TO TRUE
           PERFORM VARYING SUB FROM 1 BY 1
               UNTIL SUB > FUNCTION LENGTH(NEW-STRING)
               IF NEW-STRING(SUB:1) NOT = " "
                   IF SPACE-FOUND
                       MOVE FUNCTION  UPPER-CASE(NEW-STRING(SUB:1))
                       TO NEW-STRING(SUB:1)
                     SET SPACE-FOUND TO FALSE
                  END-IF
                ELSE
              SET SPACE-FOUND TO TRUE
              END-IF
              END-PERFORM
             DISPLAY NEW-STRING
                 STOP RUN.
