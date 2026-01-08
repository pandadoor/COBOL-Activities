       IDENTIFICATION DIVISION.
       PROGRAM-ID. MIDTERM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  MCHOICE PIC A(9).

      *     SEQUENCE
       01  LENGTHH     PIC 9(5)V99.
       01  WIDTHH      PIC 9(5)V99.
       01  AREAA       PIC 9(7)V99.
       01  PERIMETER  PIC 9(7)V99.
       01  AREA_OUT PIC ZZZZZ9.99.
       01  PERIMETER_OUT PIC ZZZZZ9.99.


      *     SELECTION
       01  SNUM PIC S9(14).
       01  SNAME PIC X(99).
       01  USOLD PIC S9(14)V99.
       01  UPRICE PIC S9(14)V99.
       01  TS PIC S9(14)V99.
       01  COMM_IN PIC S9(14)V99.
       01  COMM_OUT PIC $ZZZ,ZZZ,ZZZ,ZZZ,ZZZ.9(2).


      *     ITERATION 
       01  N PIC 9(9).
       01  NEXTT PIC 9(5) VALUE 0.
       01  CURRENT PIC 9(5) VALUE 0.
       01  B PIC 9(5) VALUE 1.
       01  TERMS PIC 9(5) VALUE 1.
       01  CURRENT_OUT COMP-1.
       01  B_OUT PIC ZZZZ.
       01  NEXTT_OUT PIC ZZZZ.
       01  TERMS_OUT PIC ZZZ.

       PROCEDURE DIVISION.
           CALL "SYSTEM" USING "clear".
       MIDTERM-MENU.
           DISPLAY SPACE.
           DISPLAY "__________________________________________________".
           DISPLAY "               MIDTERM MENU | no. 8".
           DISPLAY SPACE.
           DISPLAY "A. Sequence"
           DISPLAY "B. Selection"
           DISPLAY "C. Iteration"
           DISPLAY SPACE.
           DISPLAY "D. Exit".
           DISPLAY "__________________________________________________".
           DISPLAY "Enter your choice: " WITH NO ADVANCING.
           ACCEPT MCHOICE.
           MOVE FUNCTION UPPER-CASE(MCHOICE) TO MCHOICE.

           EVALUATE MCHOICE
            WHEN 'D'
               STOP RUN
            WHEN 'A'
               PERFORM SEQUENCE-8
               PERFORM MIDTERM-MENU
            WHEN 'B'
               PERFORM SELECTION-8
              PERFORM MIDTERM-MENU
            WHEN 'C'
               PERFORM ITERATION-8
               PERFORM MIDTERM-MENU
            WHEN OTHER
               CALL "SYSTEM" USING "clear"
               PERFORM MIDTERM-MENU
           END-EVALUATE.


       SEQUENCE-8.
           CALL "SYSTEM" USING "clear".
           DISPLAY "Enter length of rectangle: " WITH NO ADVANCING.
           ACCEPT LENGTHH.

           DISPLAY "Enter width of rectangle: " WITH NO ADVANCING. 
           ACCEPT WIDTHH.

           COMPUTE AREAA = LENGTHH * WIDTHH.
           COMPUTE PERIMETER = 2 * (LENGTHH + WIDTHH).

           MOVE AREAA TO AREA_OUT.
           MOVE PERIMETER TO PERIMETER_OUT.

           DISPLAY "Area of the rectangle: " AREA_OUT.
           DISPLAY "Perimeter of the rectangle: " PERIMETER_OUT.
          
       SELECTION-8.
           CALL "SYSTEM" USING "clear".
           DISPLAY "ENTER SALESMAN NUMBER: " WITH NO ADVANCING
               ACCEPT SNUM
               DISPLAY "ENTER SALESMAN NAME: " WITH NO ADVANCING
               ACCEPT SNAME
               DISPLAY "ENTER SALESMAN SOLD: " WITH NO ADVANCING
               ACCEPT USOLD
               DISPLAY "ENTER SALESMAN PRICE: " WITH NO ADVANCING
               ACCEPT UPRICE

               COMPUTE TS = USOLD * UPRICE

               IF TS <= 15000
                   COMPUTE COMM_IN = TS * 0.15
                   MOVE COMM_IN TO COMM_OUT
                   DISPLAY "THE COMMISION IS 15% OF THE TOTAL SALES: "   -
                   FUNCTION TRIM(COMM_OUT)
               ELSE IF TS <= 20000
                   COMPUTE COMM_IN = TS * 0.20
                   MOVE COMM_IN TO COMM_OUT
                   DISPLAY "THE COMMISION IS 20% OF THE TOTAL SALES: "   -
                   FUNCTION TRIM(COMM_OUT)
               ELSE IF TS <= 25000
                   COMPUTE COMM_IN = TS * 0.25
                   MOVE COMM_IN TO COMM_OUT
                   DISPLAY "THE COMMISION IS 25% OF THE TOTAL SALES: "   -
                   FUNCTION TRIM(COMM_OUT)
               ELSE IF TS <= 30000
                   COMPUTE COMM_IN = TS * 0.30
                   MOVE COMM_IN TO COMM_OUT
                   DISPLAY "THE COMMISION IS 30% OF THE TOTAL SALES: "   -
                   FUNCTION TRIM(COMM_OUT)
               ELSE
                   COMPUTE COMM_IN = TS * 0.40
                   MOVE COMM_IN TO COMM_OUT
                   DISPLAY "THE COMMISION IS 40% OF THE TOTAL SALES: "   -
                   FUNCTION TRIM(COMM_OUT)
               END-IF.

       ITERATION-8.
           CALL "SYSTEM" USING "clear".
           DISPLAY "ENTER NUMBER: " WITH NO ADVANCING
                   ACCEPT N

                   PERFORM UNTIL TERMS > N
                       MOVE CURRENT TO CURRENT_OUT
                       MOVE B TO B_OUT
                       MOVE TERMS TO TERMS_OUT

                       DISPLAY "TERM " FUNCTION TRIM(TERMS_OUT) ": "
                           " CURRENT = " FUNCTION TRIM(CURRENT_OUT)
                           ", B = " FUNCTION TRIM(B_OUT)

                       COMPUTE NEXTT = CURRENT + B
                       MOVE NEXTT TO NEXTT_OUT

                       DISPLAY "NEXT = " FUNCTION TRIM(NEXTT_OUT)

                       MOVE B TO CURRENT
                       MOVE NEXTT TO B
                       ADD 1 TO TERMS
                   END-PERFORM
           STOP RUN.
