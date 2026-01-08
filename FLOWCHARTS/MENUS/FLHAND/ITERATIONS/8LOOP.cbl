       IDENTIFICATION DIVISION.
       PROGRAM-ID. 8LOOP.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 8ITER-FILE
           ASSIGN TO 
           "ITERDATA/8ITER.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  8ITER-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 8ITER-REC.
       01  8ITER-REC.
           05 CURRENT_OUT  PIC Z,ZZZ,ZZ9.
           05 B_OUT        PIC Z(14).
           05 NEXTT_OUT    PIC Z(14).
           05 TERMS_OUT    PIC Z(14).
           05 FILLER       PIC X(3).
           05  N           PIC 9(14).

       WORKING-STORAGE SECTION.
       
       01  NEXTT           PIC 9(13) VALUE 0.
       01  CURRENT         PIC 9(13) VALUE 0.
       01  B               PIC 9(13) VALUE 1.
       01  TERMS           PIC 9(13) VALUE 1.

    
       PROCEDURE DIVISION.
                   OPEN EXTEND 8ITER-FILE.
                   MOVE SPACES TO 8ITER-REC.

                   DISPLAY "ENTER NUMBER: " WITH NO ADVANCING.
                   ACCEPT N.

                   PERFORM UNTIL TERMS > N
                       MOVE CURRENT TO CURRENT_OUT
                       MOVE B TO B_OUT
                       MOVE TERMS TO TERMS_OUT

                       DISPLAY FUNCTION TRIM(TERMS_OUT) " TERM: "
                           FUNCTION TRIM(CURRENT_OUT)
                           ", B = " FUNCTION TRIM(B_OUT)

                       COMPUTE NEXTT = CURRENT + B
                       MOVE NEXTT TO NEXTT_OUT

                       DISPLAY "NEXT = " FUNCTION TRIM(NEXTT_OUT)
                       DISPLAY SPACE
                       MOVE B TO CURRENT
                       MOVE NEXTT TO B
                       WRITE 8ITER-REC
                       ADD 1 TO TERMS
                   END-PERFORM.

                   CLOSE 8ITER-FILE.
       EXIT PROGRAM.
