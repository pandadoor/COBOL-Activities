       IDENTIFICATION DIVISION.
       PROGRAM-ID. 7SEQUENCE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 7SEQUENCE-FILE
                ASSIGN TO 
              "SEQUENCES/SEQDATA/7SEQUENCE.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  7SEQUENCE-FILE
              LABEL RECORD IS STANDARD
              DATA RECORD IS 7SEQUENCE-REC.
       01  7SEQUENCE-REC.
           05 sname PIC X(15).
           05 d-snum PIC ZZZZZ9.
           05 d-usold PIC ZZZ,ZZZ,ZZZ.99.
           05 d-uprice PIC ZZZ,ZZZ,ZZZ.99.
           05 totalsale_out PIC ZZZ,ZZZ,ZZZ.99.
       WORKING-STORAGE SECTION.
           01 snum PIC 9(9).
           01 usold PIC 9(11)V99.
           01 uprice PIC 9(11)V99.
           01 totalsale PIC 9(11)v99.

       PROCEDURE DIVISION.
           OPEN EXTEND 7SEQUENCE-FILE.

           DISPLAY "Input Salesman number: " WITH NO ADVANCING.
           ACCEPT snum.
           DISPLAY "Input Salesman name: " WITH NO ADVANCING.
           ACCEPT sname.
           DISPLAY "Input Unit sold: " WITH NO ADVANCING.
           ACCEPT usold.
           DISPLAY "Input Unit price: " WITH NO ADVANCING.
           ACCEPT uprice.

           COMPUTE totalsale = usold * uprice.
           DISPLAY SPACE.
           MOVE totalsale TO totalsale_out.
           DISPLAY "Total sale: ", FUNCTION TRIM(totalsale_out).

           MOVE snum TO d-snum
           MOVE usold TO d-usold
           MOVE uprice to d-uprice
           WRITE 7SEQUENCE-REC.

           CLOSE 7SEQUENCE-FILE.
           EXIT PROGRAM.
