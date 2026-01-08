       IDENTIFICATION DIVISION.
       PROGRAM-ID. 3LOOP.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC 9(5) VALUE 1.
       01 N PIC 9(5).
       01 NUM_OUT PIC ZZZZZ.
       PROCEDURE DIVISION.
           DISPLAY "INPUT NUMBER: " WITH NO ADVANCING.
           ACCEPT N.
           PERFORM UNTIL NUM > N
               IF FUNCTION MOD(NUM 2) = 0
                   MOVE NUM TO NUM_OUT
                   DISPLAY "RESULT: " NUM_OUT
               END-IF
                   ADD 1 TO NUM
           END-PERFORM.
       EXIT PROGRAM.
