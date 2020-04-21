       IDENTIFICATION DIVISION.
       PROGRAM-ID. tblname.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-REC.
           05 NAME1 OCCURS 10 TIMES PIC X(04).
       77 I PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WS-REC.
            PERFORM A100-A-PARA
             VARYING I FROM 1 BY 1 UNTIL I >10.
            STOP RUN.
       A100-A-PARA.
           IF ( NAME1(I) = 'A' ) THEN
               DISPLAY NAME1(I)
           END-IF.
       
