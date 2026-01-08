       IDENTIFICATION DIVISION.
       PROGRAM-ID. 10LOOP.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 N          PIC 9(4) VALUE 0.
           01 RMD        PIC 9.
           01 RMD-STR    PIC X(1).
           01 BINARYY    PIC X(32) VALUE SPACES.
           01 TEMP-BIN   PIC X(32).
       PROCEDURE DIVISION.
           DISPLAY "Enter a number: " WITH NO ADVANCING.
           ACCEPT N.

           PERFORM UNTIL N = 0
               COMPUTE RMD = FUNCTION MOD(N 2)
               MOVE RMD TO RMD-STR

               STRING RMD-STR DELIMITED BY SIZE
                      BINARYY  DELIMITED BY SIZE
                      INTO TEMP-BIN
               END-STRING
               MOVE TEMP-BIN TO BINARYY

               COMPUTE N = N / 2
           END-PERFORM.

           DISPLAY "Binary: " BINARYY.
       STOP RUN.
