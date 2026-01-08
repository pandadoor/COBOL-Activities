       IDENTIFICATION DIVISION.
       PROGRAM-ID. RECTANGLE-CALC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 LENGTHH   PIC 9(5)V99.
           01 WIDTHH    PIC 9(5)V99.
           01 AREAA     PIC 9(7)V99.
           01 PERIMETER PIC 9(7)V99.

           01 LENGTH-OUT PIC ZZZZZ9.99.
           01 WIDTH-OUT  PIC ZZZZZ9.99.
           01 AREA-OUT   PIC ZZZZZ9.99.
           01 PERI-OUT   PIC ZZZZZ9.99.

       PROCEDURE DIVISION.
           DISPLAY "Enter width of rectangle: "
           ACCEPT WIDTHH

           DISPLAY "Enter length of rectangle: "
           ACCEPT LENGTHH

           COMPUTE AREAA = LENGTHH * WIDTHH
           COMPUTE PERIMETER = 2 * (LENGTHH + WIDTHH)

           MOVE LENGTHH TO LENGTH-OUT
           MOVE WIDTHH  TO WIDTH-OUT
           MOVE AREAA   TO AREA-OUT
           MOVE PERIMETER TO PERI-OUT

           DISPLAY "Length     : " LENGTH-OUT
           DISPLAY "Width      : " WIDTH-OUT
           DISPLAY "Area       : " AREA-OUT
           DISPLAY "Perimeter  : " PERI-OUT

           STOP RUN.
       END PROGRAM RECTANGLE-CALC.
