       IDENTIFICATION DIVISION.
       PROGRAM-ID. 5SELECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUM1 PIC S9(9).
           01 NUM2 PIC S9(9).
           01 NUM3 PIC S9(9).
       PROCEDURE DIVISION.
            DISPLAY "Input number 1: " WITH NO ADVANCING.
            ACCEPT NUM1.
            DISPLAY "Input number 2: " WITH NO ADVANCING.
            ACCEPT NUM2.
            DISPLAY "Input number 3: " WITH NO ADVANCING.
            ACCEPT NUM3.

           DISPLAY " ".
           IF NUM1 EQUAL TO NUM2 AND NUM3
               DISPLAY "All Numbers are equal"
           ELSE IF NUM1 EQUAL TO NUM2 AND NUM1 LESS THAN NUM3
               DISPLAY "Number 1 and Number 2 are the least"
           ELSE IF NUM1 EQUAL TO NUM3 AND NUM1 LESS THAN NUM2
               DISPLAY "Number 1 and Number 3 are the least"
           ELSE IF NUM2 EQUAL TO NUM3 AND NUM2 LESS THAN NUM1
               DISPLAY "Number 2 and Number 3 are the least"
           ELSE IF NUM1 GREATER THAN NUM2
           
               IF NUM2 GREATER THAN NUM3
                   DISPLAY "Number 3 is the least"
               ELSE
                   DISPLAY "Number 2 is the least"
               END-IF
           ELSE IF NUM1 GREATER THAN NUM3
               DISPLAY "Number 3 is the least"
           ELSE
               DISPLAY "Number 1 is the least"
           END-IF.
       STOP RUN.
