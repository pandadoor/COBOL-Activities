       IDENTIFICATION DIVISION.
           PROGRAM-ID. SEL-ONLY-MENU.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
            01 SEL-CHOICE PIC x(2).
            
       PROCEDURE DIVISION.
       CALL "CLEAR-SCREEN".
       SEL-MENU.
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
               STOP RUN  
             WHEN 1
               CALL "1SELECTION"
               PERFORM SEL-MENU
             WHEN 2 
               CALL "2SELECTION"
               PERFORM SEL-MENU
             WHEN 3 
               CALL "3SELECTION"
               PERFORM SEL-MENU
             WHEN 4 
               CALL "4SELECTION"
               PERFORM SEL-MENU
             WHEN 5 
               CALL "5SELECTION"
               PERFORM SEL-MENU
             WHEN 6 
               CALL "6SELECTION"
               PERFORM SEL-MENU
             WHEN 7 
               CALL "7SELECTION"
               PERFORM SEL-MENU
             WHEN 8 
               CALL "8SELECTION"
               PERFORM SEL-MENU
             WHEN 9 
               CALL "9SELECTION"
               PERFORM SEL-MENU
             WHEN 10 
               CALL "10SELECTION"
               PERFORM SEL-MENU
             WHEN OTHER
               CALL "CLEAR-SCREEN"
                PERFORM SEL-MENU
           END-EVALUATE.
       STOP RUN.
