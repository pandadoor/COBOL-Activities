      *    EVERY 4 YEARS 
      *    WHETEHR THE YEAR  IS LEAP YR OR NOT
      *    FILE - NOT OR IT IS A LEAP YEAR
      *    INPUT - YEAR
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEAPYEAR.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT LEAPYEAR-F
           ASSIGN TO "PRACTICALS/LEAPYEAR.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  LEAPYEAR-F
           LABEL RECORD IS STANDARD
           DATA RECORD IS LEAPYEAR-REC.
       01  LEAPYEAR-REC.
           05 RESULT PIC X(17).
           05 D-YEAR PIC -Z(6).
    
       WORKING-STORAGE SECTION.
       01  COUNTER PIC s9(4) VALUE 4.
       01  YEAR PIC s9(6).

       PROCEDURE DIVISION.
           CALL "SYSTEM" USING "clear".
           OPEN EXTEND LEAPYEAR-F.
               
           DISPLAY "Enter a year: " WITH NO ADVANCING.
           ACCEPT YEAR.

           PERFORM UNTIL COUNTER >= YEAR 
               ADD 4 TO COUNTER
           END-PERFORM.

           IF COUNTER = YEAR
               DISPLAY "A LEAPYEAR"
               MOVE "A LEAPYEAR: " TO RESULT
           ELSE 
               DISPLAY "NOT A LEAPYEAR"
               MOVE "NOT A LEAPYEAR: " TO RESULT
           END-IF.

           MOVE YEAR TO D-YEAR.
           WRITE LEAPYEAR-REC.
           CLOSE LEAPYEAR-F.
       STOP RUN.
