       IDENTIFICATION DIVISION.
       PROGRAM-ID. 5SELECTION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 5SEL-FILE
           ASSIGN TO ".SEATWORKS/SELECTIONS/SELDATA/5SELECTION.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  5SEL-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 5SEL-REC.
       01  5SEL-REC PIC X(50).
       WORKING-STORAGE SECTION.
           01 NUM1 PIC S9(14).
           01 NUM2 PIC S9(14).
           01 NUM3 PIC S9(14).
       PROCEDURE DIVISION.
           OPEN EXTEND 5SEL-FILE.

           DISPLAY "Input number 1: " WITH NO ADVANCING.
           ACCEPT NUM1.
           DISPLAY "Input number 2: " WITH NO ADVANCING.
           ACCEPT NUM2.
           DISPLAY "Input number 3: " WITH NO ADVANCING.
           ACCEPT NUM3.

           MOVE NUM1 TO 5SEL-REC.
           WRITE 5SEL-REC.
           MOVE NUM2 TO 5SEL-REC.
           WRITE 5SEL-REC.
           MOVE NUM3 TO 5SEL-REC.
           WRITE 5SEL-REC.

           DISPLAY " ".
           IF NUM1 EQUAL TO NUM2 AND NUM3
               DISPLAY "All Numbers are equal"
               MOVE "All Numbers are equal" TO 5SEL-REC
           ELSE IF NUM1 EQUAL TO NUM2 AND NUM1 LESS THAN NUM3
               DISPLAY "Number 1 and Number 2 are the least"
               MOVE "Number 1 and Number 2 are the least" TO 5SEL-REC
           ELSE IF NUM1 EQUAL TO NUM3 AND NUM1 LESS THAN NUM2
               DISPLAY "Number 1 and Number 3 are the least"
               MOVE "Number 1 and Number 3 are the least" TO 5SEL-REC
           ELSE IF NUM2 EQUAL TO NUM3 AND NUM2 LESS THAN NUM1
               DISPLAY "Number 2 and Number 3 are the least"
                MOVE "Number 2 and Number 3 are the least" TO 5SEL-REC
           ELSE IF NUM1 GREATER THAN NUM2
               IF NUM2 GREATER THAN NUM3
                   DISPLAY "Number 3 is the least"
                   MOVE "Number 3 is the least" TO 5SEL-REC
               ELSE
                   DISPLAY "Number 2 is the least"
                   MOVE "Number 2 is the least" TO 5SEL-REC
               END-IF
           ELSE IF NUM1 GREATER THAN NUM3
               DISPLAY "Number 3 is the least"
               MOVE "Number 3 is the least" TO 5SEL-REC
           ELSE
               DISPLAY "Number 1 is the least"
               MOVE "Number 1 is the least" TO 5SEL-REC
           END-IF.
           
           WRITE 5SEL-REC.
           CLOSE 5SEL-FILE.
       STOP RUN.
