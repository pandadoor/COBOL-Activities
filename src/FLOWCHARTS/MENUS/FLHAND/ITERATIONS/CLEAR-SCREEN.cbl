       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLEAR-SCREEN.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-OS-NAME                      PIC X(50).
       PROCEDURE DIVISION.
           ACCEPT WS-OS-NAME FROM ENVIRONMENT "OS"
           IF WS-OS-NAME = "Windows_NT"
               CALL "SYSTEM" USING "cls"
           ELSE 
               CALL "SYSTEM" USING "clear"
           END-IF.
       EXIT PROGRAM.
       