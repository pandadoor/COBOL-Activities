       IDENTIFICATION DIVISION.
       PROGRAM-ID. TASK3.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  weight_in PIC 999V9.
       01  height_in PIC 9V999.
       
       01  weight_out PIC 999V9.
       01  height_out PIC 9V999.
       01  bmi PIC ZZZ.99.

       PROCEDURE DIVISION.
           DISPLAY "Enter Weight in kilograms  = ".
           ACCEPT weight_in.
           DISPLAY "Enter Height in meters     = ". 
           ACCEPT height_in.

           COMPUTE bmi = weight_in / (height_in * height_in).

           MOVE weight_in TO weight_out.
           MOVE height_in TO height_out.

           DISPLAY "Enter Weight in kilograms  = " weight_out " kg".
           DISPLAY "Enter Height in meters     = " height_out " m".
           DISPLAY "Your BMI is                = " bmi.
           STOP RUN.
