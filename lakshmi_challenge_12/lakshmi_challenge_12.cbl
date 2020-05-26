      ******************************************************************
      * Author:lakshmi
      * Date:26-5-2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRING-WHITE-SPACES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 INPUT-VAR    PIC X(101) VALUE SPACES.
       01 OUTPUT-VAR   PIC X(101).
       01 COUNTER-VARIABLES.
        05 X-COUNTER    PIC 9(3) VALUE ZEROS.
        05 X-OP-COUNTER PIC 9(3) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT INPUT-VAR
           PERFORM VARYING X-COUNTER FROM 1 BY 1
             UNTIL X-COUNTER > LENGTH OF INPUT-VAR
             IF INPUT-VAR (X-COUNTER:1) =' '
              CONTINUE
              ELSE
               MOVE INPUT-VAR (X-COUNTER:1) TO
                    OUTPUT-VAR (X-OP-COUNTER:1)
               ADD 1 TO X-OP-COUNTER
               END-IF
           END-PERFORM.
              DISPLAY 'OUTPUT-VAR:' OUTPUT-VAR.
            STOP RUN.
       END PROGRAM STRING-WHITE-SPACES.
