      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIME.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1      PIC 9(2).
       01 WS-NUM2      PIC 9(2).
       01 WS-MOD       PIC 9(2).
       01 I            PIC 9(2) VALUE 1.
       01 J            PIC 9(2) VALUE 1.
       01 X            PIC 9(2) VALUE 1.
       01 C            PIC 9(2) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PARA.
           ACCEPT WS-NUM1
           ACCEPT WS-NUM2
           PERFORM PARA-1 VARYING I FROM WS-NUM1 BY 1
                    UNTIL I > WS-NUM2.
           STOP RUN.
       PARA-1.
           COMPUTE C = 0
           PERFORM PARA-2 VARYING J FROM 2 BY 1
                   UNTIL J = WS-NUM1
           IF C = 0
               DISPLAY I.
       PARA-2.
           DIVIDE I BY J GIVING X REMAINDER WS-MOD
           IF   WS-MOD = 0  THEN
                COMPUTE C = C + 1
           END-IF.
