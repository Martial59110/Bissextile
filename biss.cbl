       IDENTIFICATION DIVISION.
       PROGRAM-ID. biss.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
         01  YEAR                          PIC 9(4) VALUE ZEROS.
         01  LEAP-YEAR-FLAG                PIC X(50) VALUE SPACES.

       PROCEDURE DIVISION.
        START-PROGRAM.
           DISPLAY "Enter a year: ".
           ACCEPT YEAR.

           IF FUNCTION MOD(YEAR, 4) = 0 AND
           (FUNCTION MOD(YEAR, 100) <> 0 OR FUNCTION MOD(YEAR, 400) = 0)
           MOVE "Oui c'est une année bissextile" TO LEAP-YEAR-FLAG
           ELSE
           MOVE "Non ce n'est pas une année bissextile" TO 
           LEAP-YEAR-FLAG
           END-IF.

           DISPLAY "L'année " YEAR " est une année bissextile ?" SPACE
           LEAP-YEAR-FLAG.

           STOP RUN.