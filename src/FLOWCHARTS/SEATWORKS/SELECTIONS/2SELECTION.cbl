       IDENTIFICATION DIVISION.
       PROGRAM-ID. 2SELECTION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 2SEL-FILE 
           ASSIGN TO ".SEATWORKS/SELECTIONS/SELDATA/2SELECTION.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  2SEL-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 2SEL-REC.
       01 2SEL-REC PIC X(50).

       WORKING-STORAGE SECTION.
       01  NUM PIC S9(11).
       
       PROCEDURE DIVISION.
           OPEN EXTEND 2SEL-FILE.

           DISPLAY "Input number: " WITH NO ADVANCING.
           ACCEPT NUM.
           MOVE NUM TO 2SEL-REC.
           WRITE 2SEL-REC.

           IF NUM IS EQUAL TO 0
               DISPLAY "The number is zero." 
               MOVE "The number is zero." TO 2SEL-REC
           ELSE IF NUM < 0
               DISPLAY "The number is negative."
               MOVE "The number is negative." TO 2SEL-REC
           ELSE
               DISPLAY "The number is positive."
               MOVE "The number is positive" TO 2SEL-REC
           END-IF.

           WRITE 2SEL-REC.
           CLOSE 2SEL-FILE.
       STOP RUN.
