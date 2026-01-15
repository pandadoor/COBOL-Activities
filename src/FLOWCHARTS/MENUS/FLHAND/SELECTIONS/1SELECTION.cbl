       IDENTIFICATION DIVISION.
       PROGRAM-ID. 1SELECTION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 1SELECTION-FILE 
           ASSIGN TO "SELDATA/1SELECTION.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  1SELECTION-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 1SEL-REC.
       01  1SEL-REC.
           05 AVERAGE_OUT PIC ZZZ.9(2).
       
       WORKING-STORAGE SECTION.
           01 PRELIM PIC 9(5).
           01 MIDTERM PIC 9(5).
           01 FINALL PIC 9(5).
           01 AVERAGE_IN PIC 9(5)V99.
       PROCEDURE DIVISION.
           CALL "CLEAR-SCREEN"
           OPEN EXTEND 1SELECTION-FILE.

            DISPLAY "Input prelim: " WITH NO ADVANCING.
            ACCEPT PRELIM.
            DISPLAY "Input midterm: " WITH NO ADVANCING.
            ACCEPT MIDTERM.
            DISPLAY "Input final: " WITH NO ADVANCING.
            ACCEPT FINALL.

           COMPUTE AVERAGE_IN = (MIDTERM + FINALL + PRELIM)/ 3.
           MOVE AVERAGE_IN TO AVERAGE_OUT.

           DISPLAY " ".
           IF AVERAGE_IN GREATER THAN OR EQUAL TO 75
               DISPLAY "Passed, average: ",AVERAGE_OUT
           ELSE
               DISPLAY  "Failed, average: ", AVERAGE_OUT
           END-IF.
           WRITE 1SEL-REC.
           CLOSE 1SELECTION-FILE.
       EXIT PROGRAM.
