       IDENTIFICATION DIVISION.
       PROGRAM-ID. FACTPGM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 N PIC 9(4).
       77 A PIC S9(4) VALUE 0.
       77 F PIC 9(4) VALUE 1.
       PROCEDURE DIVISION.
       PARA.
       DISPLAY "ENTER A NUMBER."
       ACCEPT N.
       IF N / 2 = 0
          DISPLAY "PLEASE GIVE ODD NUMBER"
       ELSE
          PERFORM PARA1 UNTIL A = N
          DISPLAY "THE FACTORIAL IS"
          DISPLAY F
       STOP RUN.
       PARA1.
           ADD 1 TO A
           COMPUTE F = F * A.
