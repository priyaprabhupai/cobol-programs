       IDENTIFICATION DIVISION.
       PROGRAM-ID. comp3var.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
          77 A PIC 9.
          77 B PIC 9.
          77 C PIC 9.
       PROCEDURE DIVISION.
          DISPLAY 'ENTER A'.
          ACCEPT A.
          DISPLAY 'ENTER B'.
          ACCEPT B.
          DISPLAY 'ENTER C'.
          ACCEPT C.
          DISPLAY '----------------------'.
            IF A = B
                IF B = C
                    DISPLAY 'ALL ARE EQUAL'
                    ELSE
                        IF B > C
                           DISPLAY 'A,B ARE GREATER'
                        ELSE
                            DISPLAY 'C IS GREATER'
                        END-IF
                END-IF
                ELSE
                IF A > B
                    IF A > C
                        DISPLAY 'A IS GREATER'
                    ELSE
                        IF B >= C
                            DISPLAY 'A IS GREATER'
                        ELSE
                            IF C > A
                                DISPLAY 'C IS GREATER'
                            ELSE
                                DISPLAY 'A,C ARE GREATER'
                            END-IF
                        END-IF
                    END-IF
                ELSE
                IF B > C
                    DISPLAY 'B IS GREATER'
                    ELSE
                        IF C = B
                        DISPLAY 'B,C ARE GREATER'
                        ELSE
                            DISPLAY 'C IS GREATER'
                        END-IF
                    END-IF
            END-IF.
