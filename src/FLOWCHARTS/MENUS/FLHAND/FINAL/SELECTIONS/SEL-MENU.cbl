       IDENTIFICATION DIVISION.
           PROGRAM-ID. SELECTION-MENU.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
            01 SEL-CHOICE PIC x(2).
            
       PROCEDURE DIVISION.
           CALL "CLEAR-SCREEN".
       SELECTION-MENU.
           
           DISPLAY "__________________________________________________".
           DISPLAY "           FILE HANDLING |  SELECTION MENU  ".
           DISPLAY SPACE.
           DISPLAY "1 - Identify the remarks of grade".
           DISPLAY "2 - Positive or negative number".
           DISPLAY "3 - Odd or even number".
           DISPLAY "4 - Identify which of the two is the largest"                                   
           DISPLAY "5 - Identify the smallest".
           DISPLAY "6 - Equivalent grade of the computed average".
           DISPLAY "7 - Read temperature in centigrade".
           DISPLAY "8 - Compute the sales commission".
           DISPLAY "9 - Read a day number".
           DISPLAY "10 - Check whether an alphabet is a vowel or a"
           " consonant".
           DISPLAY SPACE.
           DISPLAY "0 - Exit".
           DISPLAY "__________________________________________________".
           DISPLAY "Enter your choice: " WITH NO ADVANCING.
           ACCEPT SEL-CHOICE.

           EVALUATE SEL-CHOICE
             WHEN 0 
               CALL "CLEAR-SCREEN"
               EXIT PROGRAM  
             WHEN 1
               CALL "1SELECTION"
               PERFORM SELECTION-MENU
             WHEN 2 
               CALL "2SELECTION"
               PERFORM SELECTION-MENU
             WHEN 3 
               CALL "3SELECTION"
               PERFORM SELECTION-MENU
             WHEN 4 
               CALL "4SELECTION"
               PERFORM SELECTION-MENU
             WHEN 5 
               CALL "5SELECTION"
               PERFORM SELECTION-MENU
             WHEN 6 
               CALL "6SELECTION"
               PERFORM SELECTION-MENU
             WHEN 7 
               CALL "7SELECTION"
               PERFORM SELECTION-MENU
             WHEN 8 
               CALL "8SELECTION"
               PERFORM SELECTION-MENU
             WHEN 9 
               CALL "9SELECTION"
               PERFORM SELECTION-MENU
             WHEN 10 
               CALL "10SELECTION"
               PERFORM SELECTION-MENU
             WHEN OTHER
               CALL "CLEAR-SCREEN"
                PERFORM SELECTION-MENU
           END-EVALUATE.
       EXIT PROGRAM.
