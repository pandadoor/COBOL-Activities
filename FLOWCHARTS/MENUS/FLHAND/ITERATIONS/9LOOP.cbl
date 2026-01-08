       IDENTIFICATION DIVISION.
       PROGRAM-ID. 9LOOP.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 9ITER-FILE
           ASSIGN TO 
           "ITERDATA/9ITER.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  9ITER-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 9ITER-REC.
       01  9ITER-REC.
           05  NUM-OUT PIC X(15).
           05 FILLER PIC X(3).
           05  NUM PIC 9(13).

       WORKING-STORAGE SECTION.
       01  I PIC 9(5) VALUE 2.

       PROCEDURE DIVISION.
           OPEN OUTPUT 9ITER-FILE.
           MOVE SPACES TO 9ITER-REC.

                   DISPLAY "ENTER NUMBER: " WITH NO ADVANCING.
                   ACCEPT NUM.

           IF NUM <= 1
               DISPLAY "NOT A PRIME NUMBER"
               MOVE "NOT A PRIME NUMBER" TO NUM-OUT
               WRITE 9ITER-REC
           ELSE
               PERFORM UNTIL I * I > NUM
                   IF FUNCTION MOD(NUM, I) = 0
                       DISPLAY "NOT A PRIME NUMBER"
                       MOVE "NOT A PRIME NUMBER" TO NUM-OUT
                       WRITE 9ITER-REC
                       STOP RUN

                   END-IF
                   ADD 1 TO I
               END-PERFORM
                   DISPLAY "A PRIME NUMBER"
                   MOVE "A PRIME NUMBER" TO NUM-OUT
           END-IF.

           WRITE 9ITER-REC
           CLOSE 9ITER-FILE.
       EXIT PROGRAM.
