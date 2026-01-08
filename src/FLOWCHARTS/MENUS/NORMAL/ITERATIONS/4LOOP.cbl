       IDENTIFICATION DIVISION.
       PROGRAM-ID. 4LOOP.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 M PIC 9(5).
           01 N PIC 9(5).
           01 N_OUT PIC ZZZZZ.
       PROCEDURE DIVISION.
           DISPLAY "INPUT N NUMBER:" WITH NO ADVANCING.
           ACCEPT N.
           DISPLAY "INPUT M NUMBER: " WITH NO ADVANCING.
           ACCEPT M.

           PERFORM UNTIL N > M
               IF FUNCTION MOD(N 2) = 0
                   MOVE N TO N_OUT
                   DISPLAY "EVEN NO. RESULT: " N_OUT
               END-IF
                   ADD 1 TO N
           END-PERFORM.
       EXIT PROGRAM.
