       IDENTIFICATION DIVISION.
       PROGRAM-ID. 4SEQUENCE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 4SEQUENCE-FILE
                ASSIGN TO 
              "SEQUENCES/SEQDATA/4SEQUENCE.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  4SEQUENCE-FILE
              LABEL RECORD IS STANDARD
              DATA RECORD IS 4SEQUENCE-REC.

       01  4SEQUENCE-REC PIC ZZZ,ZZZ,ZZZ,ZZZ.99.
       WORKING-STORAGE SECTION.
           01 num1 PIC s9(10).
           01 num2 PIC s9(10).
           01 summ PIC +$Z,Z(3),Z(3),Z(3).
           01 diff PIC +$Z,Z(3),Z(3),Z(3).
           01 prod PIC +$Z,Z(3),Z(3),Z(3).
           01 quot PIC +$Z,Z(3),Z(3),Z(3).9(2).

       PROCEDURE DIVISION.
           OPEN EXTEND 4SEQUENCE-FILE.
           
           DISPLAY "Insert number 1: " WITH NO ADVANCING. 
           ACCEPT num1.
           DISPLAY "Insert number 2: " WITH NO ADVANCING.
           ACCEPT num2.

           MOVE num1 TO 4SEQUENCE-REC.
           WRITE 4SEQUENCE-REC.

           MOVE num2 TO 4SEQUENCE-REC.
           WRITE 4SEQUENCE-REC.

           ADD num1 TO num2 GIVING summ.
           DIVIDE num1 BY num2 GIVING quot.
           MULTIPLY num1 BY num2 GIVING prod.
           SUBTRACT num1 FROM num2 GIVING diff.

           DISPLAY SPACE.
           DISPLAY "SUM:        ", FUNCTION TRIM(summ).
           DISPLAY "DIFFERENCE: ", FUNCTION TRIM(diff).
           DISPLAY "PRODUCT:    ", FUNCTION TRIM(prod).
           DISPLAY "QUOTIENT:   ", FUNCTION TRIM(quot).

           MOVE summ TO 4SEQUENCE-REC.
           WRITE 4SEQUENCE-REC.
           MOVE diff TO 4SEQUENCE-REC.
           WRITE 4SEQUENCE-REC.
           MOVE prod TO 4SEQUENCE-REC.
           WRITE 4SEQUENCE-REC.
           MOVE quot TO 4SEQUENCE-REC.
           WRITE 4SEQUENCE-REC.

           CLOSE 4SEQUENCE-FILE.
       EXIT PROGRAM.
