       IDENTIFICATION DIVISION.
       PROGRAM-ID. 4SELECTION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 4SEL-FILE
           ASSIGN TO 
           "SELECTIONS/SELDATA/4SELECTION.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  4SEL-FILE
           LABEL RECORDS IS STANDARD
           DATA RECORD IS 4SEL-REC.
       01  4SEL-REC PIC X(50). 
       WORKING-STORAGE SECTION.
           01 NUM1 PIC S9(9).
           01 NUM2 PIC S9(9).
       PROCEDURE DIVISION.
           OPEN OUTPUT 4SEL-FILE.

           DISPLAY "Input number 1: " WITH NO ADVANCING.
           ACCEPT NUM1.
           DISPLAY "Input number 2: " WITH NO ADVANCING.
           ACCEPT NUM2.
           DISPLAY SPACE.

           MOVE NUM1 TO 4SEL-REC.
           WRITE 4SEL-REC.
           MOVE NUM2 TO 4SEL-REC.
           WRITE 4SEL-REC.
           
           IF NUM1 GREATER THAN NUM2
               DISPLAY "Number 1 is bigger"
               MOVE "Number 1 is bigger" TO 4SEL-REC
           ELSE IF NUM2 GREATER THAN NUM1
               DISPLAY "Number 2 is bigger"
                MOVE "Number 2 is bigger" TO 4SEL-REC
           ELSE
               DISPLAY "Both numbers are equal"
                MOVE "Both numbers are equal" TO 4SEL-REC
           END-IF.

           WRITE 4SEL-REC.
           CLOSE 4SEL-FILE.
       EXIT PROGRAM.
