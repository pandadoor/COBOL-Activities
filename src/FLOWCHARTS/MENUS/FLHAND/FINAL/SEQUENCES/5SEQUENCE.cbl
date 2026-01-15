       IDENTIFICATION DIVISION.
       PROGRAM-ID. 5SEQUENCE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 5SEQUENCE-FILE
                 ASSIGN TO 
              "SEQUENCES/SEQDATA/5SEQUENCE.DAT"
                 ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  5SEQUENCE-FILE
                  LABEL RECORD IS STANDARD
                  DATA RECORD IS 5SEQUENCE-REC.
       01  5SEQUENCE-REC PIC ZZZ.99.
       WORKING-STORAGE SECTION.
           01 midterm PIC 9(5).
           01 prelim PIC 9(5).
           01 finals PIC 9(5).
           01 average PIC 9(5)v99.
           01 average_out PIC ZZZ.99.
       PROCEDURE DIVISION.
           CALL "CLEAR-SCREEN"
           OPEN EXTEND 5SEQUENCE-FILE.

           DISPLAY "Input prelim: " WITH NO ADVANCING.
           ACCEPT prelim.
           DISPLAY "Input midterm: " WITH NO ADVANCING.
           ACCEPT midterm.
           DISPLAY "Input finals: " WITH NO ADVANCING.
           ACCEPT finals.

           MOVE prelim TO 5SEQUENCE-REC.
           WRITE 5SEQUENCE-REC.
           MOVE midterm TO 5SEQUENCE-REC.
           WRITE 5SEQUENCE-REC.    
           mOVE finals TO 5SEQUENCE-REC.
           WRITE 5SEQUENCE-REC.

           COMPUTE average = (midterm + prelim + finals) / 3.
           MOVE average TO average_out.
           DISPLAY " ".
           DISPLAY "Average: ", FUNCTION TRIM(average_out).

           MOVE average_out TO 5SEQUENCE-REC.
           WRITE 5SEQUENCE-REC
           
           CLOSE 5SEQUENCE-FILE.
       EXIT PROGRAM.
