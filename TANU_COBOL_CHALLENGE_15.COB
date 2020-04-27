      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PASSWORD.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 pswd    pic X(10).
       01 LEN PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT PSWD.
           COMPUTE LEN = LENGTH OF PSWD
           IF (LEN > = 8 )
               IF(IS ALPHABETIC-UPPER(PSWD(1:1))
                   IF(PSWD(LEN:1) = 's')
                       DISPLAY 'PASSWORD IS STRONG'
                    END-IF
               END-IF
           ELSE
                DISPLAY "PASSWORD IS WEAK"
           END-IF


            STOP RUN.
       END PROGRAM PASSWORD.
