      ******************************************************************
      * Author: GABRIELA BARBOSA
      * Date: 20/08/2023
      * Purpose: CONVERSOR DE TEMPERATURA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONVERSOR-TEMPERATURA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           77 WS-CELSIUS      PIC 9(04)    VALUE ZEROS.
           77 WS-FAHRENHEIT   PIC 9(04)    VALUE ZEROS.
           77 WS-ESCALA       PIC X(01)    VALUE SPACES.
           77 WS-TEMPER       PIC 9(05)    VALUE ZEROS.
           77 WS-RESUL        PIC ZZZZ     VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "INFORME ESCALA (F OU C)"
            ACCEPT WS-ESCALA

           IF WS-ESCALA = "F" or "f"
                DISPLAY "INFORME A TEMPERATURA"
                ACCEPT WS-TEMPER
                COMPUTE WS-FAHRENHEIT = (WS-TEMPER - 32) / 1.8
                MOVE WS-FAHRENHEIT TO WS-RESUL
                DISPLAY "O RESULTADO EM CELSIUS EH " WS-RESUL
           ELSE IF WS-ESCALA = "C" or "c"
               DISPLAY "INFORME A TEMPERATURA"
               ACCEPT WS-TEMPER
               COMPUTE WS-CELSIUS = (WS-TEMPER * 1.8) + 32
               MOVE WS-CELSIUS TO WS-RESUL
               DISPLAY "O RESULTADO EM FAHRENHEIT EH " WS-RESUL
           END-IF

            STOP RUN.
       END PROGRAM CONVERSOR-TEMPERATURA.
