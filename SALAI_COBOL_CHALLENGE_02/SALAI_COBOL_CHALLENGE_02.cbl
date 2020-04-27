      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DUPLICATES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEXT PIC X(20) VALUE 'abracadabra'.
       01 WS-CNT PIC 99 VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            INSPECT WS-TEXT TALLYING WS-CNT FOR ALL 'a'.
            IF WS-CNT > 1
                DISPLAY 'a'
            END-IF.
            SET WS-CNT TO 0.
            INSPECT WS-TEXT TALLYING WS-CNT FOR ALL 'b'.
            IF WS-CNT > 1
                DISPLAY 'b'
            END-IF.
            SET WS-CNT TO 0.
            INSPECT WS-TEXT TALLYING WS-CNT FOR ALL 'c'.
            IF WS-CNT > 1
                DISPLAY 'c'
            END-IF.
            SET WS-CNT TO 0.
            INSPECT WS-TEXT TALLYING WS-CNT FOR ALL 'd'.
            IF WS-CNT > 1
                DISPLAY 'd'
            END-IF.
            SET WS-CNT TO 0.
            INSPECT WS-TEXT TALLYING WS-CNT FOR ALL 'r'.
            IF WS-CNT > 1
                DISPLAY 'r'
            END-IF.
            STOP RUN.

       END PROGRAM DUPLICATES.
