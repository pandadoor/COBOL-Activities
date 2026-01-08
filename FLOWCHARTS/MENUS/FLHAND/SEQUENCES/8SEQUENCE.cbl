       IDENTIFICATION DIVISION.
       PROGRAM-ID. 8SEQUENCE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 8SEQUENCE-FILE
                ASSIGN TO 
              "SEQDATA/8SEQUENCE.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  8SEQUENCE-FILE
              LABEL RECORD IS STANDARD
              DATA RECORD IS 8SEQUENCE-REC.
       01  8SEQUENCE-REC.
           05 D-LENGTHH PIC ZZZZZZZZ9.99.
           05 D-WIDTHH PIC ZZZZZZZZ9.99.
           05 AREA_OUT PIC ZZZZZZZZ9.99.
           05 PERIMETER_OUT PIC ZZZZZZZZ9.99.    
       WORKING-STORAGE SECTION.
           01 LENGTHH     PIC 9(9)V99.
           01 WIDTHH      PIC 9(9)V99.
           01 AREAA       PIC 9(9)V99.
           01 PERIMETER  PIC 9(9)V99.

       PROCEDURE DIVISION.
           OPEN EXTEND 8SEQUENCE-FILE.

           DISPLAY "Enter length of rectangle: " WITH NO ADVANCING.
           ACCEPT LENGTHH.
           DISPLAY "Enter width of rectangle: " WITH NO ADVANCING.
           ACCEPT WIDTHH.
           MOVE LENGTHH TO D-LENGTHH
           MOVE WIDTHH TO D-WIDTHH

           COMPUTE AREAA = LENGTHH * WIDTHH
           COMPUTE PERIMETER = 2 * (LENGTHH + WIDTHH)

           MOVE AREAA TO AREA_OUT.
           MOVE PERIMETER TO PERIMETER_OUT.

           DISPLAY "Area of the rectangle: " AREA_OUT
           DISPLAY "Perimeter of the rectangle: " PERIMETER_OUT

           WRITE 8SEQUENCE-REC
           CLOSE 8SEQUENCE-FILE.
       EXIT PROGRAM.

