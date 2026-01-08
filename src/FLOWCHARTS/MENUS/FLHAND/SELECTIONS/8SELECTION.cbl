       IDENTIFICATION DIVISION.
       PROGRAM-ID. 8SELECTION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 8SEL-FILE 
           ASSIGN TO 
           "SELDATA/8SELECTION.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  8SEL-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 8SEL-REC.
       01  8SEL-REC.
           05 TS_OUT PIC $ZZZ,ZZZ,ZZZ,ZZZ,ZZZ,ZZZ,ZZZ.9(2).
           05 COMM_OUT PIC $ZZZ,ZZZ,ZZZ,ZZZ,ZZZ,ZZZ.9(2).

           05 R-SNUM PIC ZZZZZZZZZZZZZZZZ.
           05 R-SNAME PIC ZZZZZZZZZZZZZZZZZZ.
           05 R-USOLD PIC $ZZZ,ZZZ,ZZZ,ZZZ,ZZZ,ZZZ.9(2).
           05 R-UPRICE PIC $ZZZ,ZZZ,ZZZ,ZZZ,ZZZ,ZZZ.9(2).
           
       WORKING-STORAGE SECTION.
       01  SNUM PIC S9(19).
       01  SNAME PIC X(20).
       01  USOLD PIC S9(19)V99.
       01  UPRICE PIC S9(19)V99.
       01  COMM_IN PIC S9(19)V99.
       01  TS PIC S9(19)V99.
       PROCEDURE DIVISION.
               OPEN OUTPUT 8SEL-FILE.

               DISPLAY "ENTER SALESMAN NUMBER: " WITH NO ADVANCING.
               ACCEPT SNUM.
               DISPLAY "ENTER SALESMAN NAME: " WITH NO ADVANCING.
               ACCEPT SNAME.
               DISPLAY "ENTER SALESMAN SOLD: " WITH NO ADVANCING.
               ACCEPT USOLD.
               DISPLAY "ENTER SALESMAN PRICE: " WITH NO ADVANCING.
               ACCEPT UPRICE.

               MOVE SNUM TO R-SNUM.
               MOVE SNAME TO R-SNAME.
               MOVE USOLD TO R-USOLD.
               MOVE UPRICE TO R-UPRICE.

               COMPUTE TS = USOLD * UPRICE.
               MOVE TS TO TS_OUT.

               IF TS <= 15000
                   COMPUTE COMM_IN = TS * 0.15
                   MOVE COMM_IN TO COMM_OUT
                   DISPLAY "THE COMMISION IS 15% OF THE TOTAL SALES: "   -
                   COMM_OUT
               ELSE IF TS <= 20000
                   COMPUTE COMM_IN = TS * 0.20
                   MOVE COMM_IN TO COMM_OUT
                   DISPLAY "THE COMMISION IS 20% OF THE TOTAL SALES: "   -
                   COMM_OUT
               ELSE IF TS <= 25000
                   COMPUTE COMM_IN = TS * 0.25
                   MOVE COMM_IN TO COMM_OUT
                   DISPLAY "THE COMMISION IS 25% OF THE TOTAL SALES: "   -
                   COMM_OUT
               ELSE IF TS <= 30000
                   COMPUTE COMM_IN = TS * 0.30
                   MOVE COMM_IN TO COMM_OUT
                   DISPLAY "THE COMMISION IS 30% OF THE TOTAL SALES: "   -
                   COMM_OUT
               ELSE
                   COMPUTE COMM_IN = TS * 0.40
                   MOVE COMM_IN TO COMM_OUT
                   DISPLAY "THE COMMISION IS 40% OF THE TOTAL SALES: "   -
                   COMM_OUT
               END-IF.

           WRITE 8SEL-REC.
           CLOSE 8SEL-FILE.
       EXIT PROGRAM.
