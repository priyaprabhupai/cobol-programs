      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEXT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 ws-sen.
           05 ws-text occurs 5 times pic x(8).
           05 ws-len  occurs 5 times pic 99.
       01 ws-i pic 9(2).
       01 ws-j pic 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           perform varying ws-i from 1 by 1 until ws-i > 5
               accept ws-text(ws-i)
               perform varying ws-j from 1 by 1 until ws-j > 8
                 if (ws-text(ws-i)(ws-j:1) not = '.')
                      add 1 to ws-len(ws-i)
                  ELSE
                      move 9 to ws-j
               END-PERFORM
           END-PERFORM
           perform varying ws-i from 1 by 1 until ws-i > 5
              display ws-text(ws-i) "   " ws-len(ws-i)
           END-PERFORM

            STOP RUN.
       END PROGRAM TEXT.
