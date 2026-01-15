       IDENTIFICATION DIVISION.
       PROGRAM-ID. 6LOOP.
       ENVIRONMENT DIVISION. 
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 6ITER-FILE
           ASSIGN TO 
           "ITERATIONS/ITERDATA/6ITER.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  6ITER-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 6ITER-REC.
       01  6ITER-REC.
           05 FACT_OUT PIC     Z(20).
           05 FILLER   PIC     X(3).
           05 INT      PIC     9(12).
           05 FILLER   PIC     X(3).
           05 NUM      PIC     9(12).

       WORKING-STORAGE SECTION.
       01 FACT     PIC     9(12).
               
       PROCEDURE DIVISION.
           CALL "CLEAR-SCREEN"
           OPEN EXTEND 6ITER-FILE.
           MOVE SPACES TO 6ITER-REC.

           DISPLAY "INPUT A NUMBER: " WITH NO ADVANCING.
           ACCEPT NUM.
           MOVE 1 TO FACT
           MOVE 1 TO INT

           PERFORM UNTIL INT > NUM
               COMPUTE FACT = FACT * INT
               MOVE FACT TO FACT_OUT
               WRITE 6ITER-REC
               ADD 1 TO INT
           END-PERFORM.

           MOVE FACT TO FACT_OUT.
           DISPLAY "RESULT: " FACT_OUT.

           CLOSE 6ITER-FILE.
       EXIT PROGRAM.
