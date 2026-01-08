       IDENTIFICATION DIVISION.
       PROGRAM-ID. TASK1.
       
      *AUTHOR. PHILLIP.
       
      * HOURS WORK + HOURLY RATE INPUT 
        
      * HOURS WORK X HOURLY RATE
      * TAX = GROSSPAY X 0.10
      * NETPAY = GROSSPAY - TAX
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 HOURS-WORKED PIC 99V9.
       01 HOURLY-RATE PIC 999V99.
      
       01 GROSSPAY_IN PIC 9(6)V99.
       01 GROSSPAY_OUT PIC ZZZ,ZZZ.9(2).
       
       01 TAX PIC 9(6)V99.
       01 TAX_OUT PIC ZZZ,ZZZ.9(2).
       
       01 NETPAY PIC 9(6)V99.
       01 NETPAY_OUT PIC ZZZ,ZZZ.9(2).
              
       PROCEDURE DIVISION.
           DISPLAY "Input for Hours work: ".
           ACCEPT HOURS-WORKED. 
           DISPLAY "Input for Hourly rate: ".
           ACCEPT HOURLY-RATE. 
            
           COMPUTE GROSSPAY_IN = HOURS-WORKED * HOURLY-RATE.
           COMPUTE TAX = GROSSPAY_IN * 0.10.
           COMPUTE NETPAY = GROSSPAY_IN - TAX.

           MOVE GROSSPAY_IN TO GROSSPAY_OUT.
           MOVE TAX TO TAX_OUT.
           MOVE NETPAY TO NETPAY_OUT.
            
           DISPLAY "Grosspay:   " GROSSPAY_OUT.
           DISPLAY "Tax (10%):  " TAX_OUT.
           DISPLAY "Netpay:     " NETPAY_OUT.
           
            STOP RUN.
       END PROGRAM TASK1.
