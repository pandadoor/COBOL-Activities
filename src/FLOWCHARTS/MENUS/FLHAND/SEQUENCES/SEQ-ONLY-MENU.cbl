       IDENTIFICATION DIVISION.
           PROGRAM-ID. SEQ-ONLY-MENU.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
            01 CHOICE PIC x(2).
            
       PROCEDURE DIVISION.
           CALL "CLEAR-SCREEN".
       SEQ-MENU.
         
           DISPLAY "__________________________________________________".
           DISPLAY "           FILE HANDLING | SEQUENCES MENU  ".
           DISPLAY SPACE.
           DISPLAY "1 - Print your name 5 times.".
           DISPLAY "2 - Swapped values.".
           DISPLAY "3 - Celsius to Fahrenheit".
           DISPLAY "4 - Sum, difference, product, and"
           " quotient of 2 numbers".                                     
           DISPLAY "5 - Compute for average".
           DISPLAY "6 - Compute cube and square of the number".
           DISPLAY "7 - Compute and display the total sales".
           DISPLAY "8 - Compute area and circumference of a circle".
           DISPLAY "9 - Compute the area and perimeter of a rectangle".
           DISPLAY "10 - Compute the area and perimeter".
           DISPLAY SPACE.
           DISPLAY "0 - Exit"
           DISPLAY "__________________________________________________".
           DISPLAY "Enter your choice: " WITH NO ADVANCING.
           ACCEPT CHOICE.

           EVALUATE CHOICE
             WHEN 0 
               CALL "CLEAR-SCREEN"
               STOP RUN
             WHEN 1
               CALL "1SEQUENCE"
               PERFORM SEQ-MENU
             WHEN 2 
               CALL "2SEQUENCE"
               PERFORM SEQ-MENU
             WHEN 3 
               CALL "3SEQUENCE"
               PERFORM SEQ-MENU
             WHEN 4 
               CALL "4SEQUENCE"
               PERFORM SEQ-MENU
             WHEN 5 
               CALL "5SEQUENCE"
               PERFORM SEQ-MENU
             WHEN 6 
               CALL "6SEQUENCE"
               PERFORM SEQ-MENU
             WHEN 7 
               CALL "7SEQUENCE"
               PERFORM SEQ-MENU
             WHEN 8 
               CALL "8SEQUENCE"
               PERFORM SEQ-MENU
             WHEN 9 
               CALL "9SEQUENCE"
               PERFORM SEQ-MENU
             WHEN 10 
               CALL "10SEQUENCE"
               PERFORM SEQ-MENU
             WHEN OTHER
               CALL "CLEAR-SCREEN"
                PERFORM SEQ-MENU
           END-EVALUATE.
       STOP RUN.
