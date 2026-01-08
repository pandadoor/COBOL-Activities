       IDENTIFICATION DIVISION.
       PROGRAM-ID. WEEKLYSALARY.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT WS-EMPLOYEES-FILE
           ASSIGN TO "PRACTICALS/QUIZLAB3.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  WS-EMPLOYEES-FILE.
       01  WS-EMPLOYEES-REC.
           05 EMP-ID PIC X(8).
           05 WS-FILLER PIC X(2).
           05 WS-EMPLOYEE-NAME PIC X(15).
           05 WS-FILLER PIC X(2).
           05 WS-NO-OF-HOURS PIC X(15).
           05 WS-FILLER PIC X(2).
           05 WS-RATE-PER-HOUR PIC X(15).
           05 WS-FILLER PIC X(2).

           05 WS-BASIC-PAY PIC X(15).
           05 WS-FILLER PIC X(2).
           05 WS-TOTAL-PAY PIC X(15).
           05 WS-FILLER PIC X(2).
           05 WS-OVERTIME-PAY PIC X(15).


       WORKING-STORAGE SECTION.
       01  I-EMP-ID PIC 9(8).
       01  EMPLOYEE-NAME PIC X(15).
       01  NO-OF-HOURS PIC s9(15).
       01  RATE-PER-HOUR PIC s9(15).

       01  OVERTIME-HOURS PIC s9(15).
       01  OVERTIME-PAY PIC s9(15).

       01  BASIC-PAY PIC s9(15).
       01  TOTAL-PAY PIC s9(15).

       01  OUT-BP PIC ZZZ,ZZZ,ZZ9.99.
       01  OUT-TP PIC ZZZ,ZZZ,ZZ9.99.
       01  OUT-RPH PIC ZZZ,ZZZ,ZZ9.99.
       01  OUT-NOH PIC ZZZ,ZZZ,ZZ9.99.
       01  OUT-OTP PIC ZZZ,ZZZ,ZZ9.99.
       01  OUT-ID PIC ZZZZZZZZ.

       01  CHOICE PIC 9(10).
       01  AGAIN PIC X(10).
       01  FOUND PIC XX.

       PROCEDURE DIVISION.
       MAIN-PARA.
           CALL "SYSTEM" USING "clear".
           MOVE SPACES TO WS-EMPLOYEES-REC.

           DISPLAY "MAIN MENU".
           DISPLAY "1 - ADD RECORD".
           DISPLAY "2 - DISPLAY RECORDS".
           DISPLAY "3 - EDIT RECORD".
           DISPLAY "4 - EXIT".
           DISPLAY "ENTER YOUR CHOICE: " WITH NO ADVANCING.
           ACCEPT CHOICE.

           EVALUATE CHOICE
            WHEN 1 
               PERFORM ADD-RECORD
            WHEN 2 
               PERFORM DISPLAY-RECORDS
            WHEN 3
               PERFORM RECORD-EDIT
            WHEN 4 
               DISPLAY "TERMINATED..."
               STOP RUN
            WHEN OTHER
               PERFORM MAIN-PARA
           END-EVALUATE.

       ADD-RECORD.
           OPEN EXTEND WS-EMPLOYEES-FILE.

           DISPLAY "EMPLOYEE ID: " WITH NO ADVANCING.
           ACCEPT EMP-ID.
           DISPLAY "EMPLOYEE NAME: " WITH NO ADVANCING.
           ACCEPT EMPLOYEE-NAME.
           DISPLAY "NUMBER OF HOURS WORK: " WITH NO ADVANCING.
           ACCEPT NO-OF-HOURS.
           DISPLAY "RATE PER HOUR: " WITH NO ADVANCING.
           ACCEPT RATE-PER-HOUR.

           COMPUTE BASIC-PAY = NO-OF-HOURS * RATE-PER-HOUR

           IF NO-OF-HOURS > 40
             COMPUTE OVERTIME-HOURS = NO-OF-HOURS - 40
             COMPUTE OVERTIME-PAY = OVERTIME-HOURS * RATE-PER-HOUR * 1.5
             COMPUTE TOTAL-PAY = (40 * RATE-PER-HOUR) + OVERTIME-PAY
           ELSE 
               COMPUTE TOTAL-PAY = BASIC-PAY
           END-IF.
           
           MOVE BASIC-PAY TO OUT-BP.
           MOVE TOTAL-PAY TO OUT-TP.
           MOVE RATE-PER-HOUR TO OUT-RPH.
           MOVE NO-OF-HOURS TO OUT-NOH.
           MOVE OVERTIME-PAY TO OUT-OTP.
           
           DISPLAY SPACES.
           DISPLAY SPACES.
           DISPLAY "BASIC PAY: " FUNCTION TRIM(OUT-BP).
           DISPLAY "TOTAL PAY: " FUNCTION TRIM(OUT-TP).

           MOVE EMP-ID TO EMP-ID.
           MOVE EMPLOYEE-NAME TO WS-EMPLOYEE-NAME.
           MOVE OUT-NOH TO WS-NO-OF-HOURS.
           MOVE OUT-RPH TO WS-RATE-PER-HOUR.
           MOVE OUT-BP TO WS-BASIC-PAY.
           MOVE OUT-TP TO WS-TOTAL-PAY.
           MOVE OUT-OTP TO WS-OVERTIME-PAY.
          
           WRITE WS-EMPLOYEES-REC.
           CLOSE WS-EMPLOYEES-FILE.

           DISPLAY "WOULD YOU LIKE TO ADD ANOTHER? ('Y' or 'N')".
           ACCEPT AGAIN.
           MOVE FUNCTION UPPER-CASE(AGAIN) TO AGAIN.

           EVALUATE AGAIN
            WHEN 'Y'
               PERFORM ADD-RECORD
            WHEN 'N'
               PERFORM MAIN-PARA
            WHEN OTHER
               DISPLAY "INVALID CHOICE, TRY AGAIN: " WITH NO ADVANCING
               ACCEPT AGAIN
               MOVE FUNCTION UPPER-CASE(AGAIN) TO AGAIN
           END-EVALUATE.
           
       DISPLAY-RECORDS.
           OPEN INPUT WS-EMPLOYEES-FILE

           PERFORM UNTIL FOUND = 'Y'
           READ WS-EMPLOYEES-FILE 
               AT END 
                   MOVE 'Y' TO FOUND
                   CLOSE WS-EMPLOYEES-FILE
                   ACCEPT OMITTED
                   PERFORM MAIN-PARA
               NOT AT END 
                       DISPLAY SPACES 
                       DISPLAY SPACES
                       MOVE EMP-ID TO OUT-ID
                       DISPLAY "ID: " OUT-ID
                       DISPLAY "EMPLOYEE NAME: " WS-EMPLOYEE-NAME
                       DISPLAY "NUMBER HOURS OF WORK: " WS-NO-OF-HOURS
                       DISPLAY "RATE PER HOUR: " WS-RATE-PER-HOUR
                       DISPLAY "BASIC PAY: " WS-BASIC-PAY
                       DISPLAY "TOTAL PAY: " WS-TOTAL-PAY
                       DISPLAY "OVERTIME PAY: " WS-OVERTIME-PAY
           END-READ
           END-PERFORM.
       STOP RUN.
  