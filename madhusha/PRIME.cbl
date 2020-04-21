       ID DIVISION.                                                     00010000
       PROGRAM-ID. PRIME.                                               00020000
       ENVIRONMENT DIVISION.                                            00030000
       DATA DIVISION.                                                   00040000
       WORKING-STORAGE SECTION.                                         00050000
       01 WS-NUM1      PIC 9(2).                                        00060000
       01 WS-NUM2      PIC 9(2).                                        00070000
       01 WS-MOD       PIC 9(2).                                        00071000
       01 I            PIC 9(2) VALUE 1.                                00072006
       01 J            PIC 9(2) VALUE 1.                                00073006
       01 X            PIC 9(2) VALUE 1.                                00074006
       01 C            PIC 9(2) VALUE 1.                                00075035
       PROCEDURE DIVISION.                                              00080000
       MAIN-PARA.                                                       00081032
           ACCEPT WS-NUM1                                               00090038
           ACCEPT WS-NUM2                                               00100038
           PERFORM PARA-1 VARYING I FROM WS-NUM1 BY 1                   00110010
                  UNTIL I > WS-NUM2.                                    00111032
           STOP RUN.                                                    00112040
       PARA-1.                                                          00220010
           COMPUTE C = 0                                                00220137
           PERFORM PARA-2 VARYING J FROM 2 BY 1                         00221032
                  UNTIL J = WS-NUM1                                     00222036
           IF C = 0                                                     00222135
              DISPLAY I.                                                00222235
       PARA-2.                                                          00223032
           DIVIDE I BY J GIVING X REMAINDER WS-MOD                      00230039
           IF   WS-MOD = 0  THEN                                        00240035
                COMPUTE C = C + 1                                       00270035
           END-IF.                                                      00280032
