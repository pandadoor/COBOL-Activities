       IDENTIFICATION DIVISION.
       PROGRAM-ID. 4LOOP.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 4ITER-FILE
           ASSIGN TO 
           "ITERATIONS/ITERDATA/4ITER.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  4ITER-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 4ITER-REC.
       01  4ITER-REC.
           05 N_OUT PIC Z(15).
           05  FILLER PIC X(3).
           05 M PIC 9(11).
           05  FILLER PIC X(3).
           05 N PIC 9(11).
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
           CALL "CLEAR-SCREEN"
           OPEN EXTEND 4ITER-FILE.
           MOVE SPACES TO 4ITER-REC.

           DISPLAY "INPUT N NUMBER:" WITH NO ADVANCING.
           ACCEPT N.
           DISPLAY "INPUT M NUMBER: " WITH NO ADVANCING.
           ACCEPT M.          

           PERFORM UNTIL N > M
               IF FUNCTION MOD(N 2) = 0
                   MOVE N TO N_OUT
                   DISPLAY "EVEN NO. RESULT: " N_OUT
                   WRITE 4ITER-REC
               END-IF
                   ADD 1 TO N
           END-PERFORM.
           CLOSE 4ITER-FILE.
       EXIT PROGRAM.
