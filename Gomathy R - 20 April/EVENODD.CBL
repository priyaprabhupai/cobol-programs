       ID DIVISION.                                                     00001000
       PROGRAM-ID. EVENODD.                                             00002001
       ENVIRONMENT DIVISION.                                            00003000
       DATA DIVISION.                                                   00004000
       WORKING-STORAGE SECTION.                                         00005000
       01 WS-NUM.                                                       00010013
          05 WS-ARR  PIC 9(8) OCCURS 5 TIMES.                           00010113
       01 WS-NUM2    PIC 9(8).                                          00011001
       01 WS-R       PIC 9(8).                                          00012001
       01 WS-R2      PIC 9(8).                                          00012102
       01 WS-R3      PIC 9(8).                                          00012203
       01 WS-ESUM    PIC 9(8) VALUE ZERO.                               00013001
       01 WS-OSUM    PIC 9(8) VALUE ZERO.                               00014001
       01 I          PIC 9(1) VALUE ZERO.                               00015013
       PROCEDURE DIVISION.                                              00020000
           PERFORM 5 TIMES                                              00020115
              ADD 1 TO I                                                00020215
              ACCEPT WS-ARR(I)                                          00020315
           END-PERFORM                                                  00020415
           PERFORM MAIN-PARA VARYING I FROM 1 BY 1 UNTIL I > 5          00021015
           STOP RUN.                                                    00031108
       MAIN-PARA.                                                       00032008
           DISPLAY WS-ARR(I)                                            00033015
              COMPUTE WS-ESUM = 0                                       00034017
              COMPUTE WS-OSUM = 0                                       00035017
           PERFORM UNTIL WS-ARR(I) = 0                                  00040015
              DIVIDE WS-ARR(I) BY 10 GIVING WS-NUM2 REMAINDER WS-R      00050015
              DIVIDE WS-R BY 2 GIVING WS-R3 REMAINDER WS-R2             00060003
              IF WS-R2 = 0 THEN                                         00070001
                 COMPUTE WS-ESUM = WS-ESUM + WS-R                       00080001
              ELSE                                                      00090001
                 COMPUTE WS-OSUM = WS-OSUM + WS-R                       00100001
              END-IF                                                    00110001
              MOVE WS-NUM2 TO WS-ARR(I)                                 00111015
           END-PERFORM                                                  00120001
           DISPLAY WS-ESUM                                              00130006
           DISPLAY WS-OSUM.                                             00140001
