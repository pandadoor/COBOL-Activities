       IDENTIFICATION DIVISION.
       PROGRAM-ID. 7LOOP.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           1 NUM PIC 9(5).
           1 DIGT PIC 9(5).
           1 SUMM PIC 9(5) VALUE 0.
           
           1 SUMM_OUT PIC ZZZZ.
       PROCEDURE DIVISION.
           DISPLAY "INPUT NUMBER: "
           ACCEPT NUM

           PERFORM UNTIL NUM = 0
                   COMPUTE DIGT = FUNCTION MOD(NUM 10)
                   COMPUTE SUMM = SUMM + DIGT
                   COMPUTE NUM = NUM / 10
           END-PERFORM

           MOVE SUMM TO SUMM_OUT
           DISPLAY "SUM: " SUMM_OUT.
       EXIT PROGRAM.
