       IDENTIFICATION DIVISION.
       PROGRAM-ID. 9SELECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 DAYNUM PIC 9(1).
       PROCEDURE DIVISION.
               DISPLAY "ENTER DAY: "
               ACCEPT DAYNUM.

               IF DAYNUM >= 8 OR DAYNUM <= 0
                   DISPLAY "INVALID DAY"
               ELSE IF DAYNUM = 1
                   DISPLAY "MONDAY"
               ELSE IF DAYNUM = 2
                   DISPLAY "TUESDAY"
               ELSE IF DAYNUM = 3
                   DISPLAY "WEDNESDAY"
               ELSE IF DAYNUM = 4
                   DISPLAY "THURSDAY"
               ELSE IF DAYNUM = 5
                   DISPLAY "FRIDAY"
               ELSE IF DAYNUM = 6
                   DISPLAY "SATURDAY"
               ELSE
                   DISPLAY "SUNDAY"
               END-IF.
       STOP RUN.
