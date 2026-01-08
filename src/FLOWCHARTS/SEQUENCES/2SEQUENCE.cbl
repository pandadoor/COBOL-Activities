       IDENTIFICATION DIVISION.
       PROGRAM-ID. 2SEQUENCE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 a PIC 9(2) VALUE 5.
           01 b PIC 9(2) VALUE 10.
           01 c PIC 9(1).
       PROCEDURE DIVISION.
           DISPLAY " --- BEFORE SWAPPING --- "
           DISPLAY "A: " a.
           DISPLAY "B: " b.
           MOVE a TO c.
           MOVE b TO a.
           MOVE c TO b.

           DISPLAY " --- AFTER SWAPPING --- "
           DISPLAY "A: " a.
           DISPLAY "B: " b.
           STOP RUN.
       END PROGRAM 2SEQUENCE.
