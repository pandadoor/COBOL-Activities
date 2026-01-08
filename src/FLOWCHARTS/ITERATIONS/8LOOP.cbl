       IDENTIFICATION DIVISION.
       PROGRAM-ID. 8LOOP.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               1 N PIC 9(9).
               1 NEXTT PIC 9(5) VALUE 0.
               1 CURRENT PIC 9(5) VALUE 0.
               1 B PIC 9(5) VALUE 1.
               1 TERMS PIC 9(5) VALUE 1.

               1 CURRENT_OUT PIC ZZZZ.
               1 B_OUT PIC ZZZZ.
               1 NEXTT_OUT PIC ZZZZ.
               1 TERMS_OUT PIC ZZZ.
       PROCEDURE DIVISION.
                   DISPLAY "ENTER NUMBER: " WITH NO ADVANCING.
                   ACCEPT N.

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
