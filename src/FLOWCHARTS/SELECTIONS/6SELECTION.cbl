       IDENTIFICATION DIVISION.
       PROGRAM-ID. 6SELECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PRELIM PIC 9(3).
       01 FINALL PIC 9(3).
       01 MIDTERM PIC 9(3).
       01 AVERAGE PIC 9(5).
       PROCEDURE DIVISION.
               DISPLAY "INPUT FOR PRELIM: " WITH NO ADVANCING.
               ACCEPT PRELIM.
               DISPLAY "INPUT FOR MIDTERM: " WITH NO ADVANCING.
               ACCEPT MIDTERM.
               DISPLAY "INPUT FOR FINAL: " WITH NO ADVANCING.
               ACCEPT FINALL.

               COMPUTE AVERAGE = (PRELIM + MIDTERM + FINALL) / 3.

               IF AVERAGE > 100 OR AVERAGE < 1
                   DISPLAY "INVALID AVERAGE"
               ELSE IF AVERAGE >= 97 AND <= 100
                   DISPLAY "GRADE: 1.0"
               ELSE IF AVERAGE >= 94 AND <= 96
                   DISPLAY "GRADE: 1.25"
               ELSE IF AVERAGE >= 91 AND <= 93
                   DISPLAY "GRADE: 1.50"
               ELSE IF AVERAGE >= 88 AND <= 90
                   DISPLAY "GRADE: 1.75"
               ELSE IF AVERAGE >= 86 AND <= 87
                   DISPLAY "GRADE: 2.00"
               ELSE IF AVERAGE >= 82 AND <= 85
                   DISPLAY "GRADE: 2.25"
               ELSE IF AVERAGE >= 79 AND <= 81
                   DISPLAY "GRADE: 2.50"
               ELSE IF AVERAGE >= 76 AND <= 78
                   DISPLAY "GRADE: 2.75"
               ELSE IF AVERAGE = 75
                   DISPLAY "GRADE: 3.00"
               ELSE
                   DISPLAY "GRADE: 5.00"
               END-IF.
       STOP RUN.
