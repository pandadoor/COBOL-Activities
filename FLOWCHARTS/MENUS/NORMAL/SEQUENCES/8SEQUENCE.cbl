       IDENTIFICATION DIVISION.
       PROGRAM-ID. 8SEQUENCE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 LENGTHH     PIC 9(5)V99.
           01 WIDTHH      PIC 9(5)V99.
           01 AREAA       PIC 9(7)V99.
           01 PERIMETER  PIC 9(7)V99.
           01 AREA_OUT PIC ZZZZZ9.99.
           01 PERIMETER_OUT PIC ZZZZZ9.99.
       PROCEDURE DIVISION.
           DISPLAY "Enter length of rectangle: "
           ACCEPT LENGTHH

           DISPLAY "Enter width of rectangle: "
           ACCEPT WIDTHH

           COMPUTE AREAA = LENGTHH * WIDTHH
           COMPUTE PERIMETER = 2 * (LENGTHH + WIDTHH)

           MOVE AREAA TO AREA_OUT.
           MOVE PERIMETER TO PERIMETER_OUT.

           DISPLAY "Area of the rectangle: " AREA_OUT
           DISPLAY "Perimeter of the rectangle: " PERIMETER_OUT
       EXIT PROGRAM.
