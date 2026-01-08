       IDENTIFICATION DIVISION.
       PROGRAM-ID. TASK2.
       AUTHOR. PHILLIP.

       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 principal PIC 99999V99.
       01 rate_percent PIC 99V99.
       01 time_years PIC 9V9.
       01 interest PIC 9(6)V99.
       
       01 rate_percent_out PIC ZZZZZZ.9(2).
       01 time_years_out PIC ZZZZZZ.9(2).
       01 amount PIC ZZZZZZ.9(2).
       01 principal_out PIC ZZZZZZ.9(2).
       01 interest_out PIC ZZZZZZ.9(2).
              
       PROCEDURE DIVISION.
            DISPLAY "Input for principal: ".
            ACCEPT principal. 
            DISPLAY "Input for rate percent: ".
            ACCEPT rate_percent. 
            DISPLAY "Input for time in years: ".
            ACCEPT time_years. 

           COMPUTE interest = principal * rate_percent / 100 *          -
           time_years.
           COMPUTE AMOUNT = principal + interest.

           MOVE principal TO principal_out.
           MOVE interest TO interest_out.
           MOVE time_years TO time_years_out.
           MOVE rate_percent TO rate_percent_out.

           DISPLAY "Principal =           " principal_out.
           DISPLAY "Time in years =       " time_years_out.
           DISPLAY "Amount =              " amount.
           DISPLAY "Rate percent =        " rate_percent_out.
           DISPLAY "Interest =            " interest_out.
           
           STOP RUN.
       END PROGRAM TASK2.
