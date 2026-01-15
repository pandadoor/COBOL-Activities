       IDENTIFICATION DIVISION.
           PROGRAM-ID. MAIN-MENU.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
            01 MM-CHOICE PIC x(2).
            
       PROCEDURE DIVISION.
       
       MAIN-MENU.
           CALL "CLEAR-SCREEN".
           DISPLAY "__________________________________________________".
           DISPLAY "              FILE HANDLING | MAIN MENU  ".
           DISPLAY SPACE.
           DISPLAY "1 - Sequences menu".
           DISPLAY "2 - Selections menu".
           DISPLAY "3 - Iterations menu".
           DISPLAY SPACE.
           DISPLAY "0 - Exit".
           DISPLAY "__________________________________________________".
           DISPLAY "Enter your choice: " WITH NO ADVANCING.
           ACCEPT MM-CHOICE.

           EVALUATE MM-CHOICE
             WHEN 0 
               STOP RUN  
             WHEN 1
               CALL "CLEAR-SCREEN"
               CALL "SEQUENCE-MENU"
               PERFORM MAIN-MENU
             WHEN 2 
               CALL "CLEAR-SCREEN"
               CALL "SELECTION-MENU"
               PERFORM MAIN-MENU
             WHEN 3 
               CALL "CLEAR-SCREEN"
               CALL "ITERATION-MENU"
               PERFORM MAIN-MENU
             WHEN OTHER
                PERFORM MAIN-MENU
           END-EVALUATE.
       STOP RUN.
