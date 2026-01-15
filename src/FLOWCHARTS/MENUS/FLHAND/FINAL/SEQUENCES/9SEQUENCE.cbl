       IDENTIFICATION DIVISION.
       PROGRAM-ID. 9SEQUENCE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 9SEQUENCE-FILE
                ASSIGN TO 
              "SEQUENCES/SEQDATA/9SEQUENCE.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  9SEQUENCE-FILE
              LABEL RECORDS ARE STANDARD
              DATA RECORD IS 9SEQUENCE-REC.
       01  9SEQUENCE-REC.
           05 AREA-OUT   PIC ZZZZZ9.99.
           05 PERI-OUT   PIC ZZZZZ9.99.
           05 D-LENGTHH  PIC ZZZZZ9.99.  
           05 D-WIDTHH   PIC ZZZZZ9.99.
       WORKING-STORAGE SECTION.
           01 LENGTHH   PIC 9(5)V99.
           01 WIDTHH    PIC 9(5)V99.
           01 AREAA     PIC 9(7)V99.
           01 PERIMETER PIC 9(7)V99.

       PROCEDURE DIVISION.
           CALL "CLEAR-SCREEN"
           OPEN EXTEND 9SEQUENCE-FILE

           DISPLAY "Enter width of rectangle: " WITH NO ADVANCING.
           ACCEPT WIDTHH
           DISPLAY "Enter length of rectangle: " WITH NO ADVANCING.
           ACCEPT LENGTHH
           MOVE WIDTHH TO D-WIDTHH
           MOVE LENGTHH TO D-LENGTHH

           COMPUTE AREAA = LENGTHH * WIDTHH
           COMPUTE PERIMETER = 2 * (LENGTHH + WIDTHH)

           MOVE AREAA   TO AREA-OUT
           MOVE PERIMETER TO PERI-OUT

           DISPLAY "Area       : " AREA-OUT
           DISPLAY "Perimeter  : " PERI-OUT

           WRITE 9SEQUENCE-REC
           CLOSE 9SEQUENCE-FILE.
       EXIT PROGRAM.
