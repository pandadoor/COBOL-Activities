       IDENTIFICATION DIVISION.
       PROGRAM-ID. 8SELECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SNUM PIC S9(9).
       01 SNAME PIC X(99).
       01 USOLD PIC S9(9)V99.
       01 UPRICE PIC S9(9)V99.
       01 TS PIC S9(9)V99.
       01 COMM_IN PIC S9(9)V99.
       01 COMM_OUT PIC $ZZZ,ZZZ,ZZZ.9(2).
       PROCEDURE DIVISION.
               DISPLAY "ENTER SALESMAN NUMBER: " WITH NO ADVANCING.
               ACCEPT SNUM.
               DISPLAY "ENTER SALESMAN NAME: " WITH NO ADVANCING.
               ACCEPT SNAME.
               DISPLAY "ENTER SALESMAN SOLD: " WITH NO ADVANCING.
               ACCEPT USOLD.
               DISPLAY "ENTER SALESMAN PRICE: " WITH NO ADVANCING.
               ACCEPT UPRICE.

               COMPUTE TS = USOLD * UPRICE.

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
       STOP RUN.
