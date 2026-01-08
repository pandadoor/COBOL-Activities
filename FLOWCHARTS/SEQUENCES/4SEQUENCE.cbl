       IDENTIFICATION DIVISION.
       PROGRAM-ID. 4SEQUENCE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 num1 PIC s9(10).
           01 num2 PIC s9(10).
           01 summ PIC +$Z,Z(3),Z(3),Z(3).
           01 diff PIC +$Z,Z(3),Z(3),Z(3).
           01 prod PIC +$Z,Z(3),Z(3),Z(3).
           01 quot PIC +$Z,Z(3),Z(3),Z(3).9(2).

       PROCEDURE DIVISION.
           DISPLAY "Insert number 1: " WITH NO ADVANCING. 
           ACCEPT num1.
           DISPLAY "Insert number 2: " WITH NO ADVANCING.
           ACCEPT num2.

           ADD num1 TO num2 GIVING summ.
           DIVIDE num1 BY num2 GIVING quot.
           MULTIPLY num1 BY num2 GIVING prod.
           SUBTRACT num1 FROM num2 GIVING diff.

           DISPLAY SPACE.
           DISPLAY "SUM:        ", FUNCTION TRIM(summ).
           DISPLAY "DIFFERENCE: ", FUNCTION TRIM(diff).
           DISPLAY "PRODUCT:    ", FUNCTION TRIM(prod).
           DISPLAY "QUOTIENT:   ", FUNCTION TRIM(quot).
       STOP RUN.
       END PROGRAM 4SEQUENCE.
