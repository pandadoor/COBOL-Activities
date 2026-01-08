       IDENTIFICATION DIVISION.
       PROGRAM-ID. 4SELECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUM1 PIC S9(9).
           01 NUM2 PIC S9(9).
       PROCEDURE DIVISION.
            DISPLAY "Input number 1: " WITH NO ADVANCING.
            ACCEPT NUM1.
            DISPLAY "Input number 2: " WITH NO ADVANCING.
            ACCEPT NUM2.
           DISPLAY " ".
           IF NUM1 GREATER THAN NUM2
               DISPLAY "Number 1 is bigger"
           ELSE IF NUM2 GREATER THAN NUM1
               DISPLAY "Number 2 is bigger"
           ELSE
               DISPLAY "Both numbers are equal"
           END-IF.
       STOP RUN.
