       IDENTIFICATION DIVISION.
       PROGRAM-ID. 10SELECTION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 10SEL-FILE
           ASSIGN TO ".SEATWORKS/SELECTIONS/SELDATA/10SELECTION.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  10SEL-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 10SEL-REC.
       01  10SEL-REC PIC X(30).
       WORKING-STORAGE SECTION.
           01 ALP PIC A(1).
       PROCEDURE DIVISION.
               OPEN EXTEND 10SEL-FILE.

               DISPLAY "ENTER AN ALPHABET: " WITH NO ADVANCING
               ACCEPT ALP.
               MOVE ALP TO 10SEL-REC.
               WRITE 10SEL-REC.

              IF ALP = 'a' OR ALP = 'A' OR ALP = 'e' OR ALP = 'E' OR    -
                 ALP = 'o' OR ALP = 'O' OR ALP = 'u' OR ALP = 'U' OR    -
                 ALP = 'i' OR ALP = 'I'
                   DISPLAY "the alphabet is a vowel"
                   MOVE "the alphabet is a vowel" TO 10SEL-REC
              ELSE
                   DISPLAY "the alphabet is a consonant"
                   MOVE "the alphabet is a consonant" TO 10SEL-REC
              END-IF.
       
           WRITE 10SEL-REC.
           CLOSE 10SEL-FILE.
       STOP RUN.
