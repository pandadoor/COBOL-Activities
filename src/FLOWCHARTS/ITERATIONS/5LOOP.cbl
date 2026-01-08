       IDENTIFICATION DIVISION.
       PROGRAM-ID. 5LOOP.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 SUMM PIC 9(5) VALUE 0.
           01 SUMM_OUT PIC ZZZZ.
           01 M PIC 9(5).
           01 N PIC 9(5).
           01 N_OUT PIC ZZZZ.
       PROCEDURE DIVISION.
           DISPLAY "INPUT N NUMBER: " WITH NO ADVANCING.
           ACCEPT N.
           DISPLAY "INPUT M NUMBER: " WITH NO ADVANCING.
           ACCEPT M.

           PERFORM UNTIL N > M
               IF FUNCTION MOD(N 2) = 0
                   MOVE N TO N_OUT
                   DISPLAY N_OUT " IS EVEN NUMBER."
                   ADD N TO SUMM
               END-IF
                   ADD 1 TO N
           END-PERFORM.

           DISPLAY " ".
           MOVE SUMM TO SUMM_OUT
           DISPLAY "THE SUM OF ALL EVEN NUMBERS ARE: " SUMM_OUT.
       STOP RUN.
