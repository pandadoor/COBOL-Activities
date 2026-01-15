       IDENTIFICATION DIVISION.
       PROGRAM-ID. 10SEQUENCE.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL. 
           SELECT 10SEQUENCE-FILE
               ASSIGN TO 
             "SEQUENCES/SEQDATA/10SEQUENCE.DAT"
               ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  10SEQUENCE-FILE
              LABEL RECORDS ARE STANDARD
              DATA RECORD IS 10SEQUENCE-REC.
       01  10SEQUENCE-REC.
           05 d-base PIC ZZZZZZZZZZZ9.99.
           05 d-heightt PIC ZZZZZZZZZZZ9.99.
           05 areaa_out PIC ZZZZZZZZZZZ9.99.
           05 perimeter_out PIC ZZZZZZZZZZZ9.99.

       WORKING-STORAGE SECTION.
           01 base      PIC 9(11)V99.
           01 heightt    PIC 9(11)V99.
           01 hypo      PIC 9(11)V99.
           01 areaa     PIC s9(11)V99.
           01 perimeter PIC s9(11)V99.

       PROCEDURE DIVISION.
           CALL "CLEAR-SCREEN"
           OPEN EXTEND 10SEQUENCE-FILE.

           DISPLAY "Input base: " WITH NO ADVANCING.
           ACCEPT base.
           DISPLAY "Input heightt: " WITH NO ADVANCING.
           ACCEPT heightt.
           MOVE base TO d-base.
           MOVE heightt TO d-heightt.

          COMPUTE hypo = FUNCTION SQRT(base * base + heightt * heightt).
          COMPUTE areaa = 0.5 * base * heightt.
          COMPUTE perimeter = base + heightt + hypo.

           MOVE areaa TO areaa_out.
           MOVE perimeter TO perimeter_out.
           DISPLAY "Area of the triangle: " areaa_out.
           DISPLAY "Perimeter of the triangle: " perimeter_out.

           WRITE 10SEQUENCE-REC.
           CLOSE 10SEQUENCE-FILE.
       EXIT PROGRAM.
