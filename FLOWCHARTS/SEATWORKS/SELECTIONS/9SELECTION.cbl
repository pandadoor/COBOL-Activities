       IDENTIFICATION DIVISION.
       PROGRAM-ID. 9SELECTION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 9SEL-FILE
           ASSIGN TO ".SEATWORKS/SELECTIONS/SELDATA/9SELECTION.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  9SEL-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 9SEL-REC.
       01  9SEL-REC PIC X(20).
       WORKING-STORAGE SECTION.
           01 DAYNUM PIC 9(1).
       PROCEDURE DIVISION.
               OPEN EXTEND 9SEL-FILE.
               
               DISPLAY "ENTER DAY: " WITH NO ADVANCING
               ACCEPT DAYNUM.
               MOVE DAYNUM TO 9SEL-REC.
               WRITE 9SEL-REC.

               IF DAYNUM >= 8 OR DAYNUM <= 0
                   DISPLAY "INVALID DAY"
                   MOVE "INVALID DAY" TO 9SEL-REC
               ELSE IF DAYNUM = 1
                   DISPLAY "MONDAY"
                   MOVE "MONDAY" TO 9SEL-REC
               ELSE IF DAYNUM = 2
                   DISPLAY "TUESDAY"
                   MOVE "TUESDAY" TO 9SEL-REC
               ELSE IF DAYNUM = 3
                   DISPLAY "WEDNESDAY"
                   MOVE "WEDNESDAY" TO 9SEL-REC
               ELSE IF DAYNUM = 4
                   DISPLAY "THURSDAY"
                   MOVE "THURSDAY" TO 9SEL-REC
               ELSE IF DAYNUM = 5
                   DISPLAY "FRIDAY"
                   MOVE "FRIDAY" TO 9SEL-REC
               ELSE IF DAYNUM = 6
                   DISPLAY "SATURDAY"
                   MOVE "SATURDAY" TO 9SEL-REC
               ELSE
                   DISPLAY "SUNDAY"
                   MOVE "SUNDAY" TO 9SEL-REC
               END-IF.
               
               WRITE 9SEL-REC
               CLOSE 9SEL-FILE.
       STOP RUN.
