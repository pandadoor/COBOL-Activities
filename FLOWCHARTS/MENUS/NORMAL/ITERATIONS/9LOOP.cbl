       IDENTIFICATION DIVISION.
       PROGRAM-ID. 9LOOP.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               1 NUM PIC 9(9).
               1 I PIC 9(5) VALUE 2.
       PROCEDURE DIVISION.
                   DISPLAY "ENTER NUMBER: " WITH NO ADVANCING.
                   ACCEPT NUM.

           IF NUM <= 1
               DISPLAY "NOT A PRIME NUMBER"
           ELSE
               PERFORM UNTIL I * I > NUM
                   IF FUNCTION MOD(NUM, I) = 0
                       DISPLAY "NOT A PRIME NUMBER"
                       STOP RUN

                   END-IF
                   ADD 1 TO I
               END-PERFORM
                   DISPLAY "A PRIME NUMBER"
           END-IF.
       EXIT PROGRAM.
