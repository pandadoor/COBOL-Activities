       IDENTIFICATION DIVISION.
       PROGRAM-ID. THREELOOP.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ITER-FILE
               ASSIGN TO 
               "ITERDATA/3ITER.DAT"
               ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  ITER-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS ITER-REC.
       01  ITER-REC.
           05  NUM-OUT    PIC Z(14).
           05  S-N        PIC Z(11).

       WORKING-STORAGE SECTION.
       01  NUM            PIC 9(5) VALUE 1.
       01  N              PIC 9(11).

       PROCEDURE DIVISION.
           OPEN EXTEND ITER-FILE

           DISPLAY "INPUT NUMBER: " WITH NO ADVANCING
           ACCEPT N

           MOVE N TO S-N

           PERFORM UNTIL NUM > N
               IF FUNCTION MOD(NUM, 2) = 0
                   MOVE NUM TO NUM-OUT
                   DISPLAY "RESULT: " NUM-OUT
                   WRITE ITER-REC
               END-IF
               ADD 1 TO NUM
           END-PERFORM

           CLOSE ITER-FILE
           EXIT PROGRAM.
