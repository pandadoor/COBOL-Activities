       IDENTIFICATION DIVISION.
           PROGRAM-ID. ITER-MENU.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
            01 ITER-CHOICE PIC 9(9).
            
       PROCEDURE DIVISION.
       CALL "SYSTEM" USING "clear".
       ITER-MENU.
           DISPLAY "__________________________________________________".
           DISPLAY "            FILE HANDLING | ITERATIONS MENU  ".
           DISPLAY SPACE.
           DISPLAY "1 - Print name 5 times".
           DISPLAY "2 - Print numbers from 1 to 5".
           DISPLAY "3 - print even numbers from 1 to N".
           DISPLAY "4 - print even numbers from N to M"                                   
           DISPLAY "5 - sum of all odd numbers from N to M".
           DISPLAY "6 - compute for the factorial of a number".
           DISPLAY "7 - sum of the digits of a given number".
           DISPLAY "8 - display the first n terms of the Fibonacci".
           DISPLAY "9 - determines if the inputted number is a"
           " prime number".
           DISPLAY "10 - convert decimal to binary "
           DISPLAY SPACE.
           DISPLAY "0 - Exit".
           DISPLAY "__________________________________________________".
           DISPLAY "Enter your choice: " WITH NO ADVANCING.
           ACCEPT ITER-CHOICE.

           EVALUATE ITER-CHOICE
             WHEN 0 
               CALL "SYSTEM" USING "clear"
               STOP RUN  
             WHEN 1
               CALL "1LOOP"
               PERFORM ITER-MENU
             WHEN 2 
               CALL "2LOOP"
               PERFORM ITER-MENU
             WHEN 3 
               CALL "3LOOP"
               PERFORM ITER-MENU
             WHEN 4 
               CALL "4LOOP"
               PERFORM ITER-MENU
             WHEN 5 
               CALL "5LOOP"
               PERFORM ITER-MENU
             WHEN 6 
               CALL "6LOOP"
               PERFORM ITER-MENU
             WHEN 7 
               CALL "7LOOP"
               PERFORM ITER-MENU
             WHEN 8 
               CALL "8LOOP"
               PERFORM ITER-MENU
             WHEN 9 
               CALL "9LOOP"
               PERFORM ITER-MENU
             WHEN 10 
               CALL "10LOOP"
               PERFORM ITER-MENU
             WHEN OTHER
                PERFORM ITER-MENU
           END-EVALUATE.
       STOP RUN.
