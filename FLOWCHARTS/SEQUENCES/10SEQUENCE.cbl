       IDENTIFICATION DIVISION.
       PROGRAM-ID. SEQUENCE10.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 base      PIC 9(5)V99.
           01 heightt    PIC 9(5)V99.
           01 hypo      PIC 9(5)V99.
           01 areaa     PIC 9(5)V99.
           01 perimeter PIC 9(5)V99.
           01 areaa_out PIC ZZZZZ9.99.
           01 perimeter_out PIC ZZZZZ9.99.

       PROCEDURE DIVISION.
           DISPLAY "Input base: " WITH NO ADVANCING.
           ACCEPT base.

           DISPLAY "Input heightt: " WITH NO ADVANCING.
           ACCEPT heightt.

           COMPUTE hypo = FUNCTION SQRT(base * base + heightt * heightt)
           COMPUTE areaa = 0.5 * base * heightt.
           COMPUTE perimeter = base + heightt + hypo.

           MOVE areaa TO areaa_out.
           MOVE perimeter TO perimeter_out.
           DISPLAY "Area of the triangle: " areaa_out.
           DISPLAY "Perimeter of the triangle: " perimeter_out.
           STOP RUN.
       END PROGRAM SEQUENCE10.
