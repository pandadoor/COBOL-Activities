       IDENTIFICATION DIVISION.
       PROGRAM-ID. 10SELECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 ALP PIC A(1).
       PROCEDURE DIVISION.
               DISPLAY "ENTER AN ALPHABET: "
               ACCEPT ALP.

              IF ALP = 'a' OR ALP = 'A' OR ALP = 'e' OR ALP = 'E' OR    -
                 ALP = 'o' OR ALP = 'O' OR ALP = 'u' OR ALP = 'U' OR    -
                 ALP = 'i' OR ALP = 'I'
                   DISPLAY "the alphabet is a vowel"
              ELSE
                   DISPLAY "the alphabet is a consonant"
              END-IF.
       EXIT PROGRAM.
