       IDENTIFICATION DIVISION.
       PROGRAM-ID. 7SEQUENCE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 snum PIC 9(5).
           01 usold PIC 9(5).
           01 uprice PIC 9(5).
           01 sname PIC a(5).
           01 totalsale PIC 9(5)v99.
           01 totalsale_out PIC $ZZZ,ZZZ,ZZZ.99.

       PROCEDURE DIVISION.
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
           STOP RUN.
       END PROGRAM 7SEQUENCE.
