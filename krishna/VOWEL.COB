      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VOWEL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WS-STR     PIC X(15).
       77 WS-CTR1    PIC 99 VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PARA.
              ACCEPT WS-STR.
              PERFORM A100-PARA.
              STOP RUN.
       A100-PARA.
            INSPECT WS-STR TALLYING WS-CTR1 FOR ALL 'A', 'a', 'E', 'e'
            , 'I', 'i', 'O', 'O', 'u', 'U'.
            DISPLAY "GIVEN STRING: " WS-STR.
            DISPLAY "NUM OF VOWELS: "WS-CTR1.
       END PROGRAM VOWEL.
