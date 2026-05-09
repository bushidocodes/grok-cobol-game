       >>SOURCE FREE

IDENTIFICATION DIVISION.
PROGRAM-ID. WasteCutter.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 PLAYER-NAME PIC X(30).
01 WASTE-CUT PIC 9(12) VALUE 0.
01 CHOICE PIC 9.
01 CONTINUE-FLAG PIC X VALUE 'Y'.

PROCEDURE DIVISION.
MAIN-LOGIC.
    DISPLAY "=== WASTE CUTTER: Cut Government Waste Adventure ==="
    DISPLAY "What is your name, waste slayer? " WITH NO ADVANCING
    ACCEPT PLAYER-NAME
    DISPLAY "Welcome, " FUNCTION TRIM(PLAYER-NAME) "! Let's cut some waste."
    PERFORM GAME-LOOP UNTIL CONTINUE-FLAG = 'N'
    DISPLAY "Thanks for cutting $" WASTE-CUT " in government waste!"
    STOP RUN.

GAME-LOOP.
    DISPLAY " "
    DISPLAY "Total waste cut so far: $" WASTE-CUT
    DISPLAY "Choose action:"
    DISPLAY "1. Slash redundant regulations ($50M)"
    DISPLAY "2. Terminate ghost projects ($250M)"
    DISPLAY "3. Cut bureaucratic bloat ($150M)"
    DISPLAY "4. Audit pork-barrel spending ($300M)"
    DISPLAY "5. Quit mission"
    ACCEPT CHOICE
    EVALUATE CHOICE
        WHEN 1
            ADD 50000000 TO WASTE-CUT
            DISPLAY "Red tape slashed! +$50M"
        WHEN 2
            ADD 250000000 TO WASTE-CUT
            DISPLAY "Ghost projects terminated! +$250M"
        WHEN 3
            ADD 150000000 TO WASTE-CUT
            DISPLAY "Bureaucracy reduced! +$150M"
        WHEN 4
            ADD 300000000 TO WASTE-CUT
            DISPLAY "Pork barrel audited and cut! +$300M"
        WHEN 5
            MOVE 'N' TO CONTINUE-FLAG
        WHEN OTHER
            DISPLAY "Invalid choice. Try again."
    END-EVALUATE.
