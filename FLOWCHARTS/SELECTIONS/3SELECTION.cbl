       IDENTIFICATION DIVISION.
       PROGRAM-ID. 3SELECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUM PIC 9(5).
       PROCEDURE DIVISION.
            DISPLAY "Input number: " WITH NO ADVANCING.
            ACCEPT NUM.
           DISPLAY " ".
           IF  FUNCTION MOD(NUM,2) = 0
               DISPLAY "Even"
           ELSE
               DISPLAY "Odd"
           END-IF.
            STOP RUN.
       END PROGRAM 3SELECTION.
