       IDENTIFICATION DIVISION.
       PROGRAM-ID. 6SELECTION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 6SEL-FILE
           ASSIGN TO 
           "SELDATA/6SELECTION.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  6SEL-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 6SEL-REC.
       01  6SEL-REC PIC X(50).
       WORKING-STORAGE SECTION.
       01 PRELIM PIC 9(3).
       01 FINALL PIC 9(3).
       01 MIDTERM PIC 9(3).
       01 AVERAGE PIC 9(5).
       PROCEDURE DIVISION.
           CALL "CLEAR-SCREEN"
           OPEN EXTEND 6SEL-FILE.

               DISPLAY "INPUT FOR PRELIM: " WITH NO ADVANCING.
               ACCEPT PRELIM.
               DISPLAY "INPUT FOR MIDTERM: " WITH NO ADVANCING.
               ACCEPT MIDTERM.
               DISPLAY "INPUT FOR FINAL: " WITH NO ADVANCING.
               ACCEPT FINALL.

               MOVE PRELIM TO 6SEL-REC
               WRITE 6SEL-REC.
               MOVE MIDTERM TO 6SEL-REC
               WRITE 6SEL-REC.
               MOVE FINALL TO 6SEL-REC
               WRITE 6SEL-REC.

               COMPUTE AVERAGE = (PRELIM + MIDTERM + FINALL) / 3.

               IF AVERAGE > 100 OR AVERAGE < 1
                   DISPLAY "INVALID AVERAGE"
                   MOVE "INVALID AVERAGE" TO 6SEL-REC
               ELSE IF AVERAGE >= 97 AND <= 100
                   DISPLAY "GRADE: 1.0"
                   MOVE "GRADE: 1.0" TO 6SEL-REC
               ELSE IF AVERAGE >= 94 AND <= 96
                   DISPLAY "GRADE: 1.25"
                   MOVE "GRADE: 1.25" TO 6SEL-REC
               ELSE IF AVERAGE >= 91 AND <= 93
                   DISPLAY "GRADE: 1.50"
                   MOVE "GRADE: 1.50" TO 6SEL-REC
               ELSE IF AVERAGE >= 88 AND <= 90
                   DISPLAY "GRADE: 1.75"
                   MOVE "GRADE: 1.75" TO 6SEL-REC
               ELSE IF AVERAGE >= 86 AND <= 87
                   DISPLAY "GRADE: 2.00"
                   MOVE "GRADE: 2.00" TO 6SEL-REC
               ELSE IF AVERAGE >= 82 AND <= 85
                   DISPLAY "GRADE: 2.25"
                   MOVE "GRADE: 2.25" TO 6SEL-REC
               ELSE IF AVERAGE >= 79 AND <= 81
                   DISPLAY "GRADE: 2.50"
                   MOVE "GRADE: 2.50" TO 6SEL-REC
               ELSE IF AVERAGE >= 76 AND <= 78
                   DISPLAY "GRADE: 2.75"
                   MOVE "GRADE: 2.75" TO 6SEL-REC
               ELSE IF AVERAGE = 75
                   DISPLAY "GRADE: 3.00"
                   MOVE "GRADE: 3.00" TO 6SEL-REC
               ELSE
                   DISPLAY "GRADE: 5.00"
                   MOVE "GRADE: 5.00" TO 6SEL-REC
               END-IF.

           WRITE 6SEL-REC.
           CLOSE 6SEL-FILE.
       EXIT PROGRAM.
