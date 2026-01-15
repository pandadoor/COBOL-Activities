       IDENTIFICATION DIVISION.
       PROGRAM-ID. 5LOOP.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 5ITER-FILE
           ASSIGN TO 
           "ITERATIONS/ITERDATA/5ITER.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  5ITER-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 5ITER-REC.
       01  5ITER-REC.
           05 SUMM PIC 9(19) VALUE 0.
           05 SUMM_OUT PIC Z(19).
           05 M PIC 9(12).
           05  FILLER PIC X(3).
           05 N PIC 9(12).
           05 N_OUT PIC Z(19).
           
       PROCEDURE DIVISION.
           CALL "CLEAR-SCREEN"
           OPEN EXTEND 5ITER-FILE.
           MOVE SPACES TO 5ITER-REC.

           DISPLAY "INPUT N NUMBER: " WITH NO ADVANCING.
           ACCEPT N.
           DISPLAY "INPUT M NUMBER: " WITH NO ADVANCING.
           ACCEPT M.

           PERFORM UNTIL N > M
               IF FUNCTION MOD(N 2) = 0
                   MOVE N TO N_OUT
                   DISPLAY N_OUT " IS EVEN NUMBER."
                   ADD N TO SUMM
                   WRITE 5ITER-REC
               END-IF
                   ADD 1 TO N
           END-PERFORM.

           MOVE SUMM TO SUMM_OUT
           DISPLAY "THE SUM OF ALL EVEN NUMBERS ARE: " SUMM_OUT.
       
           CLOSE 5ITER-FILE.
       EXIT PROGRAM.
