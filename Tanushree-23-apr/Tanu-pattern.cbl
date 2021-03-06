      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. pattern.
       environment division.
       DATA DIVISION.
       FILE SECTION.
       working-storage section.
       01 ws-sen       pic x(150).
       01 ws-ptrn     pic x(150).
       01 ws-times pic 99 value zero.
       77 ws-i pic 999.
       77 ws-slen pic 999.
       77 ws-plen pic 999.

       procedure division.
       main-procedure.
           accept ws-sen
           accept ws-ptrn
           move function stored-char-length(ws-sen) to ws-slen
           move function stored-char-length(ws-ptrn) to ws-plen
           perform varying ws-i from 1 by 1
           until ws-i - ws-plen > ws-slen
              if (ws-sen(ws-i : ws-plen) = ws-ptrn(1 : ws-plen)) THEN
                     add 1 to ws-times
              END-IF
           END-PERFORM
           display ws-times

           stop run.

       end PROGRAM pattern.
