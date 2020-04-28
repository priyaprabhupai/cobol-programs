      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FINDSCORE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-ASCORE PIC 99.
       01 WS-DATA.
         02 WS-IDSCORE.
            05 WS-GID OCCURS 11 TIMES INDEXED BY I.
               10 WS-ID PIC 99.
            05 WS-GSCORE OCCURS 11 TIMES INDEXED BY J.
               10 WS-SCORE PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
        SET I J TO 1
        PERFORM ACCEPT-PARA 11 TIMES
        DISPLAY 'ENTER THE SCORE'
        ACCEPT WS-ASCORE.
        SET I J TO 1
        DISPLAY 'LIST OF PLAYER ID WHOSE SCORE MORE THAN ' WS-ASCORE
        PERFORM PARA-1 11 TIMES
       STOP RUN.
       PARA-1.
       IF(WS-ASCORE < WS-SCORE(J)) THEN
           DISPLAY WS-ID(I)
       END-IF
       SET I J UP BY 1.
       ACCEPT-PARA.
       DISPLAY "ENTER PLAYER ID"
       ACCEPT WS-ID(I)
       DISPLAY "ENTER SCORE FOR PLAYER ID " WS-ID(I)
       ACCEPT WS-SCORE(J)
       SET I J UP BY 1.
       END PROGRAM FINDSCORE.
