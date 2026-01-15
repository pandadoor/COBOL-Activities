       IDENTIFICATION DIVISION.
       PROGRAM-ID. 7SELECTION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL. 
           SELECT 7SEL-FILE
           ASSIGN TO 
           "SELDATA/7SELECTION.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  7SEL-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 7SEL-REC.
       01  7SEL-REC PIC X(50).
       WORKING-STORAGE SECTION.
       01  TEMP PIC S9(19).
       PROCEDURE DIVISION.
               CALL "CLEAR-SCREEN"
               OPEN EXTEND 7SEL-FILE.

               DISPLAY "INPUT FOR TEMPERATURE: " WITH NO ADVANCING.
               ACCEPT TEMP.

               MOVE TEMP TO 7SEL-REC.
               WRITE 7SEL-REC.

               IF TEMP < 0
                   DISPLAY "FREEZING WEATHER"
                   MOVE "FREEZING WEATHER" TO 7SEL-REC
               ELSE IF TEMP >= 0 AND <= 9
                   DISPLAY "VERY COLD WEATEHER"
                   MOVE "VERY COLD WEATHER" TO 7SEL-REC
               ELSE IF TEMP >= 10 AND <= 19
                   DISPLAY "COLD WEATHER"
                   MOVE "COLD WEATHER" TO 7SEL-REC
               ELSE IF TEMP >= 20 AND <= 29
                   DISPLAY "NORMAL IN TEMPERATURE"
                   MOVE "NORMAL IN TEMPERATURE" TO 7SEL-REC
               ELSE IF TEMP >= 30 AND <= 39
                   DISPLAY "HOT"
                   MOVE "HOT" TO 7SEL-REC
               ELSE
                   DISPLAY "VERY HOT"
                   MOVE "VERY HOT" TO 7SEL-REC
               END-IF.
           
               WRITE 7SEL-REC.
               CLOSE 7SEL-FILE.
       EXIT PROGRAM.
