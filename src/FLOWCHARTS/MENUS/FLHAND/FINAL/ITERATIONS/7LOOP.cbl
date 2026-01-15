       IDENTIFICATION DIVISION.
       PROGRAM-ID. 7LOOP.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 7ITER-FILE
           ASSIGN TO 
           "ITERATIONS/ITERDATA/7ITER.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  7ITER-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 7ITER-REC.
       01  7ITER-REC.
           05 SUMM_OUT PIC Z(19).
           05 FILLER PIC X(3).
           05 NUM PIC 9(12).
           05 FILLER PIC X(3).
           05 DIGT PIC 9(12).

       WORKING-STORAGE SECTION.
           1 SUMM PIC 9(19) VALUE 0.
           
       PROCEDURE DIVISION.
           CALL "CLEAR-SCREEN"
           OPEN EXTEND 7ITER-FILE.
           MOVE SPACES TO 7ITER-REC.

           DISPLAY "INPUT NUMBER: " WITH NO ADVANCING.
           ACCEPT NUM

           PERFORM UNTIL NUM = 0
                   COMPUTE DIGT = FUNCTION MOD(NUM 10)
                   COMPUTE SUMM = SUMM + DIGT
                   COMPUTE NUM = NUM / 10
                   MOVE SUMM TO SUMM_OUT
                   WRITE 7ITER-REC
           END-PERFORM

           MOVE SUMM TO SUMM_OUT
           DISPLAY "SUM: " SUMM_OUT.
       
           CLOSE 7ITER-FILE.
       EXIT PROGRAM.
       