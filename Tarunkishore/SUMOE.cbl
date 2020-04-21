       IDENTIFICATION DIVISION.                                         00010001
       PROGRAM-ID. SUMOEO.                                              00020001
       ENVIRONMENT DIVISION.                                            00030001
       DATA DIVISION.                                                   00040001
       WORKING-STORAGE SECTION.                                         00050001
       01 WS-TABLE.                                                     00060023
           05 WS-NUM PIC 9(8) OCCURS 5 TIMES INDEXED BY IND.            00061023
       01 ODD PIC 9(8) VALUE 0.                                         00070001
       01 EVEN PIC 9(8) VALUE 0.                                        00080001
       01 Q PIC 9(8).                                                   00081002
       01 Q1 PIC 9(8).                                                  00081104
       01 R PIC 9(8).                                                   00082002
       01 R1 PIC 9(8).                                                  00082104
       01 A PIC 9(8).                                                   00082204
       01 I PIC 9(2) VALUE 0.                                           00083001
       PROCEDURE DIVISION.                                              00090001
       MAIN-PARA.                                                       00100014
           PERFORM A-PARA VARYING I FROM 1 BY 1 UNTIL I > 5             00101021
           STOP RUN.                                                    00110313
       A-PARA.                                                          00110421
           SET IND TO 1                                                 00110522
           ACCEPT WS-NUM(IND)                                           00110622
           PERFORM PARA UNTIL WS-NUM(IND) EQUAL TO 0                    00110724
           DISPLAY 'SUM OF EVEN DIGITS: ' EVEN                          00110825
           DISPLAY 'SUM OF ODD DIGITS: ' ODD                            00110926
           MOVE 0 TO EVEN                                               00111026
           MOVE 0 TO ODD                                                00111126
           SET IND UP BY 1.                                             00111223
       PARA.                                                            00111303
           DIVIDE WS-NUM(IND) BY 10 GIVING Q REMAINDER R                00111422
           MOVE Q TO WS-NUM(IND)                                        00111524
           DIVIDE R BY 2 GIVING Q1 REMAINDER R1                         00111604
           IF R1 IS EQUAL TO 0                                          00111705
           COMPUTE EVEN = EVEN + R                                      00111809
           ELSE                                                         00111901
           COMPUTE ODD = ODD + R                                        00112009
           END-IF.                                                      00113019
