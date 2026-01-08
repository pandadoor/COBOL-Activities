       IDENTIFICATION DIVISION.
       PROGRAM-ID. 7SELECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 TEMP PIC s9(9).
       PROCEDURE DIVISION.
               DISPLAY "INPUT FOR TEMPERATURE: " WITH NO ADVANCING.
               ACCEPT TEMP.

               IF TEMP < 0
                   DISPLAY "FREEZING WEATHER"
               ELSE IF TEMP >= 0 AND <= 9
                   DISPLAY "VERY COLD WEATEHER"
               ELSE IF TEMP >= 10 AND <= 19
                   DISPLAY "COLD WEATHER"
               ELSE IF TEMP >= 20 AND <= 29
                   DISPLAY "NORMAL IN TEMPERATURE"
               ELSE IF TEMP >= 30 AND <= 39
                   DISPLAY "HOT"
               ELSE
                   DISPLAY "VERY HOT"
               END-IF.
       STOP RUN.
