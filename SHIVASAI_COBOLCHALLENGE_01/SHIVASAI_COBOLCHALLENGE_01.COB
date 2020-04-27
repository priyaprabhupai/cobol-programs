               IDENTIFICATION DIVISION.
       PROGRAM-ID. NEW-DUP.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEXT PIC 9(10) VALUE 3537563678.
       01 WS-CNT PIC 99 VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            INSPECT WS-TEXT TALLYING WS-CNT FOR ALL '3'.
            IF WS-CNT > 1
                DISPLAY '3'
            END-IF.
            SET WS-CNT TO 0.
            INSPECT WS-TEXT TALLYING WS-CNT FOR ALL '5'.
            IF WS-CNT > 1
                DISPLAY '5'
            END-IF.
            SET WS-CNT TO 0.
            INSPECT WS-TEXT TALLYING WS-CNT FOR ALL '6'.
            IF WS-CNT > 1
                DISPLAY '6'
            END-IF.
            SET WS-CNT TO 0.
            INSPECT WS-TEXT TALLYING WS-CNT FOR ALL '7'.
            IF WS-CNT > 1
                DISPLAY '7'
            END-IF.
            SET WS-CNT TO 0.
            INSPECT WS-TEXT TALLYING WS-CNT FOR ALL '8'.
            IF WS-CNT > 1
                DISPLAY '8'
            END-IF.
            STOP RUN.
