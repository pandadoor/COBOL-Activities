       IDENTIFICATION DIVISION.
       PROGRAM-ID. 10LOOP.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 10ITER-FILE
           ASSIGN TO 
           "ITERDATA/10ITER.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  10ITER-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 10ITER-REC.
       01  10ITER-REC.
           05 BINARYY    PIC X(32).
           05 N          PIC 9(13) VALUE 0.

       WORKING-STORAGE SECTION.
           01 RMD        PIC 9.
           01 RMD-STR    PIC X(1).
           01 TEMP-BIN   PIC X(32).
       PROCEDURE DIVISION.
           OPEN EXTEND 10ITER-FILE.
           MOVE SPACES TO 10ITER-REC.

           DISPLAY "Enter a number: " WITH NO ADVANCING.
           ACCEPT N.
           WRITE 10ITER-REC.

           PERFORM UNTIL N = 0
               COMPUTE RMD = FUNCTION MOD(N 2)
               MOVE RMD TO RMD-STR

               STRING RMD-STR DELIMITED BY SIZE
                      BINARYY  DELIMITED BY SIZE
                      INTO TEMP-BIN
               END-STRING
               MOVE TEMP-BIN TO BINARYY

               COMPUTE N = N / 2
               WRITE 10ITER-REC
           END-PERFORM.

           DISPLAY "Binary: " BINARYY.

           CLOSE 10ITER-FILE.
       EXIT PROGRAM.
