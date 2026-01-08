       IDENTIFICATION DIVISION.
       PROGRAM-ID. 2SEQUENCE.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 2SEQUENCE-FILE
               ASSIGN TO 
              "SEQDATA/2SEQUENCE.DAT"
               ORGANIZATION IS LINE SEQUENTIAL. 
       DATA DIVISION.
       FILE SECTION.
       FD  2SEQUENCE-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS 2SEQUENCE-REC.
      
       01  2SEQUENCE-REC PIC X(4).

       WORKING-STORAGE SECTION.
       01  a   PIC X(4) VALUE "5".
       01  b   PIC X(4) VALUE "10".
       01  c   PIC X(4).
           
       PROCEDURE DIVISION.
           OPEN EXTEND 2SEQUENCE-FILE
           
           MOVE a TO 2SEQUENCE-REC
           WRITE 2SEQUENCE-REC
           MOVE b TO 2SEQUENCE-REC
           WRITE 2SEQUENCE-REC
           
           DISPLAY " --- BEFORE SWAPPING --- "
           DISPLAY "A: " a.
           DISPLAY "B: " b.

           MOVE a TO c.
           MOVE b TO a.
           MOVE c TO b.

           DISPLAY " --- AFTER SWAPPING --- "
           DISPLAY "A: " a.
           DISPLAY "B: " b.

           MOVE a TO 2SEQUENCE-REC
           WRITE 2SEQUENCE-REC
           MOVE b TO 2SEQUENCE-REC
           WRITE 2SEQUENCE-REC
 
           CLOSE 2SEQUENCE-FILE.
       EXIT PROGRAM.
