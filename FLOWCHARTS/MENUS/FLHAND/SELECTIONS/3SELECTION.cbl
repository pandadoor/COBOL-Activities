       IDENTIFICATION DIVISION.
       PROGRAM-ID. 3SELECTION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 3SEL-FILE
           ASSIGN TO 
           "SELDATA/3SELECTION.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  3SEL-FILE 
           LABEL RECORD IS STANDARD
           DATA RECORD IS 3SEL-REC.
       01  3SEL-REC PIC X(40).
       WORKING-STORAGE SECTION.
           01 NUM PIC 9(19).
       PROCEDURE DIVISION.
           OPEN OUTPUT 3SEL-FILE.

           DISPLAY "Input number: " WITH NO ADVANCING.
           ACCEPT NUM.
           DISPLAY SPACE.

           MOVE NUM TO 3SEL-REC.
           WRITE 3SEL-REC.

           IF  FUNCTION MOD(NUM,2) = 0
               MOVE "Even number" TO 3SEL-REC
               DISPLAY "Even"
           ELSE
                MOVE "Odd number" TO 3SEL-REC
               DISPLAY "Odd"
           END-IF.
           
           WRITE 3SEL-REC.
           CLOSE 3SEL-FILE.
       EXIT PROGRAM.
