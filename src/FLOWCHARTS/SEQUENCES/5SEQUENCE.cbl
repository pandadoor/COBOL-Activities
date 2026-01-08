       IDENTIFICATION DIVISION.
       PROGRAM-ID. 5SEQUENCE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 midterm PIC 9(5).
           01 prelim PIC 9(5).
           01 finals PIC 9(5).
           01 average PIC 9(5)v99.
           01 average_out PIC ZZZ.99.
       PROCEDURE DIVISION.
           DISPLAY "Input prelim: " WITH NO ADVANCING.
           ACCEPT prelim.
           DISPLAY "Input midterm: " WITH NO ADVANCING.
           ACCEPT midterm.
           DISPLAY "Input finals: " WITH NO ADVANCING.
           ACCEPT finals.

           COMPUTE average = (midterm + prelim + finals) / 3.
           MOVE average TO average_out.
           DISPLAY " ".
           DISPLAY "Average: ", FUNCTION TRIM(average_out).
           STOP RUN.
       END PROGRAM 5SEQUENCE.
