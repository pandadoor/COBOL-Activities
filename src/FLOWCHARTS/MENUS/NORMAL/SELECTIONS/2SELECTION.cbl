       IDENTIFICATION DIVISION.
       PROGRAM-ID. 2SELECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUM PIC S9(5).
       PROCEDURE DIVISION.
            DISPLAY "Input number: " WITH NO ADVANCING.
            ACCEPT NUM.

           IF NUM IS EQUAL TO 0
               DISPLAY "The number is zero."
           ELSE IF NUM < 0
               DISPLAY "The number is negative."
           ELSE
               DISPLAY "The number is positive"
           END-IF.
       EXIT PROGRAM.
