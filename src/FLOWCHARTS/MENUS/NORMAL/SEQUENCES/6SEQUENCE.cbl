       IDENTIFICATION DIVISION.
       PROGRAM-ID. 6SEQUENCE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 num PIC 9(5).
           01 square PIC 9(5)v99.
           01 cube PIC 9(5)v99.
           01 square_out PIC ZZZZZ9.99.
           01 cube_out PIC ZZZZZ9.99.

       PROCEDURE DIVISION.
           DISPLAY "Input number: " WITH NO ADVANCING.
           ACCEPT num.
           COMPUTE cube = num*num*num.
           COMPUTE square = num*num.

           MOVE square TO square_out.
           MOVE cube TO cube_out.
           DISPLAY SPACE.
           DISPLAY "Square: ", FUNCTION TRIM(square_out).
           DISPLAY "Cube: ", FUNCTION TRIM(cube_out).
       EXIT PROGRAM.
