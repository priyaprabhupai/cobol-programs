       ID DIVISION.                                                     
       PROGRAM-ID. PRIME.                                              
       ENVIRONMENT DIVISION.                                            
       DATA DIVISION.                                                   
       WORKING-STORAGE SECTION.                                         
       01 WS-NUM1      PIC 9(2).                                        
       01 WS-NUM2      PIC 9(2).                                        
       01 WS-MOD       PIC 9(2).                                        
       01 WS-I         PIC 9(2) VALUE 1.                              
       01 WS-J         PIC 9(2) VALUE 1.                              
       01 WS-X         PIC 9(2) VALUE 1.                                
       01 WS-C         PIC 9(2) VALUE 1.                             
       PROCEDURE DIVISION.                                            
       MAIN-PARA.                                                     
           ACCEPT WS-NUM1                                             
           ACCEPT WS-NUM2                                             
           PERFORM PARA-1 VARYING WS-I FROM WS-NUM1 BY 1                   
                  UNTIL WS-I > WS-NUM2.                                  
           STOP RUN.                                                  
       PARA-1.                                                         
           COMPUTE WS-C = 0                                              
           PERFORM PARA-2 VARYING WS-J FROM 2 BY 1                        
                  UNTIL WS-J = WS-NUM1                                    
           IF WS-C = 0                                                     
              DISPLAY I.                                             
       PARA-2.                                                         
           DIVIDE WS-I BY WS-J GIVING WS-X REMAINDER WS-MOD                  
           IF   WS-MOD = 0  THEN                                      
                COMPUTE WS-C = WS-C + 1                                      
           END-IF.                                                      