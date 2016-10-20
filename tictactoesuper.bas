SCREEN _NEWIMAGE(350, 350, 32) '350,350
playAgain:

GOSUB varInit
GOSUB drawBoard
GOTO main

varInit: 'most of these don't need to be initialized but it helps reset it imho
DIM gameBoard(3, 3) AS STRING
DIM board1(3, 3) AS STRING
DIM board2(3, 3) AS STRING
DIM board3(3, 3) AS STRING
DIM board4(3, 3) AS STRING
DIM board5(3, 3) AS STRING
DIM board6(3, 3) AS STRING
DIM board7(3, 3) AS STRING
DIM board8(3, 3) AS STRING
DIM board9(3, 3) AS STRING
cPlayer$ = " X"


true = 1 'act as booleans because not built in
false = 0

bigBoardMove = true 'could be 1 it doesn't matter right now i just prefer it

turns = 1 'max of 81(?) turns
gameWon = false
'extraordinarily ghetto way to set all of the boards but it should work fine
FOR i = 1 TO 3 'row value
    FOR x = 1 TO 3 'column value

        IF i = 1 THEN
            gameBoard(i + 2, x) = STR$(i + x - 1)
        ELSE IF i = 2 THEN
                gameBoard(i, x) = STR$(i + x + 1)
            ELSE IF i = 3 THEN
                    gameBoard(i - 2, x) = STR$(i + x + 3)

                END IF
            END IF
        END IF
    NEXT
NEXT
FOR i = 1 TO 3 'row value
    FOR x = 1 TO 3 'column value

        IF i = 1 THEN
            board1(i + 2, x) = STR$(i + x - 1)
        ELSE IF i = 2 THEN
                board1(i, x) = STR$(i + x + 1)
            ELSE IF i = 3 THEN
                    board1(i - 2, x) = STR$(i + x + 3)

                END IF
            END IF
        END IF
    NEXT
NEXT

FOR i = 1 TO 3 'row value
    FOR x = 1 TO 3 'column value

        IF i = 1 THEN
            board2(i + 2, x) = STR$(i + x - 1)
        ELSE IF i = 2 THEN
                board2(i, x) = STR$(i + x + 1)
            ELSE IF i = 3 THEN
                    board2(i - 2, x) = STR$(i + x + 3)

                END IF
            END IF
        END IF
    NEXT
NEXT

FOR i = 1 TO 3 'row value
    FOR x = 1 TO 3 'column value

        IF i = 1 THEN
            board3(i + 2, x) = STR$(i + x - 1)
        ELSE IF i = 2 THEN
                board3(i, x) = STR$(i + x + 1)
            ELSE IF i = 3 THEN
                    board3(i - 2, x) = STR$(i + x + 3)

                END IF
            END IF
        END IF
    NEXT
NEXT

FOR i = 1 TO 3 'row value
    FOR x = 1 TO 3 'column value

        IF i = 1 THEN
            board4(i + 2, x) = STR$(i + x - 1)
        ELSE IF i = 2 THEN
                board4(i, x) = STR$(i + x + 1)
            ELSE IF i = 3 THEN
                    board4(i - 2, x) = STR$(i + x + 3)

                END IF
            END IF
        END IF
    NEXT
NEXT

FOR i = 1 TO 3 'row value
    FOR x = 1 TO 3 'column value

        IF i = 1 THEN
            board5(i + 2, x) = STR$(i + x - 1)
        ELSE IF i = 2 THEN
                board5(i, x) = STR$(i + x + 1)
            ELSE IF i = 3 THEN
                    board5(i - 2, x) = STR$(i + x + 3)

                END IF
            END IF
        END IF
    NEXT
NEXT

FOR i = 1 TO 3 'row value
    FOR x = 1 TO 3 'column value

        IF i = 1 THEN
            board6(i + 2, x) = STR$(i + x - 1)
        ELSE IF i = 2 THEN
                board6(i, x) = STR$(i + x + 1)
            ELSE IF i = 3 THEN
                    board6(i - 2, x) = STR$(i + x + 3)

                END IF
            END IF
        END IF
    NEXT
NEXT

FOR i = 1 TO 3 'row value
    FOR x = 1 TO 3 'column value

        IF i = 1 THEN
            board7(i + 2, x) = STR$(i + x - 1)
        ELSE IF i = 2 THEN
                board7(i, x) = STR$(i + x + 1)
            ELSE IF i = 3 THEN
                    board7(i - 2, x) = STR$(i + x + 3)

                END IF
            END IF
        END IF
    NEXT
NEXT

FOR i = 1 TO 3 'row value
    FOR x = 1 TO 3 'column value

        IF i = 1 THEN
            board8(i + 2, x) = STR$(i + x - 1)
        ELSE IF i = 2 THEN
                board8(i, x) = STR$(i + x + 1)
            ELSE IF i = 3 THEN
                    board8(i - 2, x) = STR$(i + x + 3)

                END IF
            END IF
        END IF
    NEXT
NEXT
FOR i = 1 TO 3 'row value
    FOR x = 1 TO 3 'column value

        IF i = 1 THEN
            board9(i + 2, x) = STR$(i + x - 1)
        ELSE IF i = 2 THEN
                board9(i, x) = STR$(i + x + 1)
            ELSE IF i = 3 THEN
                    board9(i - 2, x) = STR$(i + x + 3)

                END IF
            END IF
        END IF
    NEXT
NEXT
RETURN



setSmallboard:
SELECT CASE bbSel
    CASE 1 'i is column; x is row
        board1(i, x) = cPlayer$
        GOSUB isSmallTaken:
    CASE 2
        board2(i, x) = cPlayer$
        GOSUB isSmallTaken:
    CASE 3
        board3(i, x) = cPlayer$
        GOSUB isSmallTaken:
    CASE 4
        board4(i, x) = cPlayer$
        GOSUB isSmallTaken:
    CASE 5
        board5(i, x) = cPlayer$
        GOSUB isSmallTaken:
    CASE 6
        board6(i, x) = cPlayer$
        GOSUB isSmallTaken:
    CASE 7
        board7(i, x) = cPlayer$
        GOSUB isSmallTaken:
    CASE 8
        board8(i, x) = cPlayer$
        GOSUB isSmallTaken:
    CASE 9
        board9(i, x) = cPlayer$
        GOSUB isSmallTaken:
END SELECT

RETURN
isSBTaken:
SELECT CASE sbSel
    CASE 1 'i is column; x is row
        i = 3
        x = 1
    CASE 2
        i = 3
        x = 2
    CASE 3
        i = 3
        x = 3
    CASE 4
        i = 2
        x = 1
    CASE 5
        i = 2
        x = 2
    CASE 6
        i = 2
        x = 3
    CASE 7
        i = 1
        x = 1
    CASE 8
        i = 1
        x = 2
    CASE 9
        i = 1
        x = 3
END SELECT
SELECT CASE bbSel
    CASE 1 'i is column; x is row
        IF board1(i, x) = " X" OR board1(i, x) = " O" THEN GOSUB drawBoard: GOTO smallboardTurn
    CASE 2
        IF board2(i, x) = " X" OR board2(i, x) = " O" THEN GOSUB drawBoard: GOTO smallboardTurn
    CASE 3
        IF board3(i, x) = " X" OR board3(i, x) = " O" THEN GOSUB drawBoard: GOTO smallboardTurn
    CASE 4
        IF board4(i, x) = " X" OR board4(i, x) = " O" THEN GOSUB drawBoard: GOTO smallboardTurn
    CASE 5
        IF board5(i, x) = " X" OR board5(i, x) = " O" THEN GOSUB drawBoard: GOTO smallboardTurn
    CASE 6
        IF board6(i, x) = " X" OR board6(i, x) = " O" THEN GOSUB drawBoard: GOTO smallboardTurn
    CASE 7
        IF board7(i, x) = " X" OR board7(i, x) = " O" THEN GOSUB drawBoard: GOTO smallboardTurn
    CASE 8
        IF board8(i, x) = " X" OR board8(i, x) = " O" THEN GOSUB drawBoard: GOTO smallboardTurn
    CASE 9
        IF board9(i, x) = " X" OR board9(i, x) = " O" THEN GOSUB drawBoard: GOTO smallboardTurn
END SELECT
takenStatus = false
RETURN


isBBTaken:
SELECT CASE bbSel
    CASE 1 'i is column; x is row
        i = 3
        x = 1
    CASE 2
        i = 3
        x = 2
    CASE 3
        i = 3
        x = 3
    CASE 4
        i = 2
        x = 1
    CASE 5
        i = 2
        x = 2
    CASE 6
        i = 2
        x = 3
    CASE 7
        i = 1
        x = 1
    CASE 8
        i = 1
        x = 2
    CASE 9
        i = 1
        x = 3
END SELECT
IF (gameBoard(i, x) = " X" OR gameBoard(i, x) = " O") THEN
    takenStatus = true
ELSE takenStatus = false
END IF
RETURN

bigBoardTurn:
INPUT "Which BB square would you like to play in? ", bbSel
GOSUB isBBTaken
IF takenStatus = true THEN GOSUB drawBoard: GOTO bigBoardTurn
bigBoardMove = false
takenStatus = false
RETURN

smallboardTurn:
INPUT "Which SB square would you like to play in? ", sbSel
GOSUB isSBTaken
IF takenStatus = true THEN GOSUB drawBoard: GOTO smallboardTurn
GOSUB setSmallboard
GOSUB doesSmallIntoBigScrewUp
bbSel = sbSel
RETURN

takeTurn:
IF bigBoardMove = true THEN GOSUB bigBoardTurn
GOSUB drawBoard
GOSUB smallboardTurn
RETURN

doesSmallIntoBigScrewUp:
SELECT CASE sbSel
    CASE 1 'i is column; x is row
        i = 3
        x = 1
    CASE 2
        i = 3
        x = 2
    CASE 3
        i = 3
        x = 3
    CASE 4
        i = 2
        x = 1
    CASE 5
        i = 2
        x = 2
    CASE 6
        i = 2
        x = 3
    CASE 7
        i = 1
        x = 1
    CASE 8
        i = 1
        x = 2
    CASE 9
        i = 1
        x = 3
END SELECT
IF (gameBoard(i, x) = " X" OR gameBoard(i, x) = " O") THEN bigBoardMove = true


RETURN

isSmallTaken:
SELECT CASE bbSel
    CASE 1 'i is column; x is row
        FOR row = 1 TO 3
            IF board1(row, 1) = board1(row, 2) AND board1(row, 1) = board1(row, 3) THEN
                gameBoard(3, 1) = board1(row, 1)
                RETURN
            END IF
        NEXT
        'checks columns, i.e. positions 1, 4, 5
        FOR col = 1 TO 3
            IF board1(1, col) = board1(2, col) AND board1(1, col) = board1(3, col) THEN
                gameBoard(3, 1) = board1(1, col)
                RETURN
            END IF
        NEXT
        'checks diagonals
        IF board1(1, 1) = board1(2, 2) AND board1(1, 1) = board1(3, 3) THEN
            gameBoard(3, 1) = board1(1, 1)
            RETURN
        END IF
        IF board1(1, 3) = board1(2, 2) AND board1(1, 3) = board1(3, 1) THEN
            gameBoard(3, 1) = board1(1, 3)
            RETURN
        END IF


    CASE 2
        FOR row = 1 TO 3
            IF board2(row, 1) = board2(row, 2) AND board2(row, 1) = board2(row, 3) THEN
                gameBoard(3, 2) = board2(row, 1)
                RETURN
            END IF
        NEXT
        'checks columns, i.e. positions 1, 4, 5
        FOR col = 1 TO 3
            IF board2(1, col) = board2(2, col) AND board2(1, col) = board2(3, col) THEN
                gameBoard(3, 2) = board2(1, col)
                RETURN
            END IF
        NEXT
        'checks diagonals
        IF board2(1, 1) = board2(2, 2) AND board2(1, 1) = board2(3, 3) THEN
            gameBoard(3, 2) = board2(1, 1)
            RETURN
        END IF
        IF board1(1, 3) = board1(2, 2) AND board1(1, 3) = board1(3, 1) THEN
            gameBoard(3, 2) = board2(2, 3)
            RETURN
        END IF


    CASE 3
        FOR row = 1 TO 3
            IF board3(row, 1) = board3(row, 2) AND board3(row, 1) = board3(row, 3) THEN
                gameBoard(3, 3) = board3(row, 1)
                RETURN
            END IF
        NEXT
        'checks columns, i.e. positions 1, 4, 5
        FOR col = 1 TO 3
            IF board3(1, col) = board3(2, col) AND board3(1, col) = board3(3, col) THEN
                gameBoard(3, 3) = board3(1, col)
                RETURN
            END IF
        NEXT
        'checks diagonals
        IF board3(1, 1) = board3(2, 2) AND board3(1, 1) = board3(3, 3) THEN
            gameBoard(3, 3) = board3(1, 1)
            RETURN
        END IF
        IF board3(1, 3) = board3(2, 2) AND board3(1, 3) = board3(3, 1) THEN
            gameBoard(3, 3) = board3(1, 3)
            RETURN
        END IF


    CASE 4
        FOR row = 1 TO 3
            IF board4(row, 1) = board4(row, 2) AND board4(row, 1) = board4(row, 3) THEN
                gameBoard(2, 1) = board4(row, 1)
                RETURN
            END IF
        NEXT
        'checks columns, i.e. positions 1, 4, 5
        FOR col = 1 TO 3
            IF board4(1, col) = board4(2, col) AND board4(1, col) = board4(3, col) THEN
                gameBoard(2, 1) = board4(1, col)
                RETURN
            END IF
        NEXT
        'checks diagonals
        IF board4(1, 1) = board4(2, 2) AND board4(1, 1) = board4(3, 3) THEN
            gameBoard(2, 1) = board4(1, 1)
            RETURN
        END IF
        IF board4(1, 3) = board4(2, 2) AND board4(1, 3) = board4(3, 1) THEN
            gameBoard(2, 1) = board4(1, 3)
            RETURN
        END IF


    CASE 5
        FOR row = 1 TO 3
            IF board5(row, 1) = board5(row, 2) AND board5(row, 1) = board5(row, 3) THEN
                gameBoard(2, 2) = board5(row, 1)
                RETURN
            END IF
        NEXT
        'checks columns, i.e. positions 1, 4, 5
        FOR col = 1 TO 3
            IF board5(1, col) = board5(2, col) AND board5(1, col) = board5(3, col) THEN
                gameBoard(2, 2) = board5(1, col)
                RETURN
            END IF
        NEXT
        'checks diagonals
        IF board5(1, 1) = board5(2, 2) AND board5(1, 1) = board5(3, 3) THEN
            gameBoard(2, 2) = board5(1, 1)
            RETURN
        END IF
        IF board5(1, 3) = board5(2, 2) AND board5(1, 3) = board5(3, 1) THEN
            gameBoard(2, 2) = board5(1, 3)
            RETURN
        END IF


    CASE 6
        FOR row = 1 TO 3
            IF board6(row, 1) = board6(row, 2) AND board6(row, 1) = board6(row, 3) THEN
                gameBoard(2, 3) = board6(row, 1)
                RETURN
            END IF
        NEXT
        'checks columns, i.e. positions 1, 4, 5
        FOR col = 1 TO 3
            IF board6(1, col) = board6(2, col) AND board6(1, col) = board6(3, col) THEN
                gameBoard(2, 3) = board6(1, col)
                RETURN
            END IF
        NEXT
        'checks diagonals
        IF board6(1, 1) = board6(2, 2) AND board6(1, 1) = board6(3, 3) THEN
            gameBoard(2, 3) = board5(1, 1)
            RETURN
        END IF
        IF board6(1, 3) = board6(2, 2) AND board6(1, 3) = board6(3, 1) THEN
            gameBoard(2, 3) = board6(1, 3)
            RETURN
        END IF


    CASE 7
        FOR row = 1 TO 3
            IF board7(row, 1) = board7(row, 2) AND board7(row, 1) = board7(row, 3) THEN
                gameBoard(1, 1) = board7(row, 1)
                RETURN
            END IF
        NEXT
        'checks columns, i.e. positions 1, 4, 5
        FOR col = 1 TO 3
            IF board7(1, col) = board7(2, col) AND board7(1, col) = board7(3, col) THEN
                gameBoard(1, 1) = board7(1, col)
                RETURN
            END IF
        NEXT
        'checks diagonals
        IF board7(1, 1) = board7(2, 2) AND board7(1, 1) = board7(3, 3) THEN
            gameBoard(1, 1) = board5(1, 1)
            RETURN
        END IF
        IF board7(1, 3) = board7(2, 2) AND board7(1, 3) = board7(3, 1) THEN
            gameBoard(1, 1) = board7(1, 3)
            RETURN
        END IF


    CASE 8
        FOR row = 1 TO 3
            IF board8(row, 1) = board8(row, 2) AND board8(row, 1) = board8(row, 3) THEN
                gameBoard(1, 2) = board8(row, 1)
                RETURN
            END IF
        NEXT
        'checks columns, i.e. positions 1, 4, 5
        FOR col = 1 TO 3
            IF board8(1, col) = board8(2, col) AND board8(1, col) = board8(3, col) THEN
                gameBoard(1, 2) = board8(1, col)
                RETURN
            END IF
        NEXT
        'checks diagonals
        IF board8(1, 1) = board8(2, 2) AND board8(1, 1) = board8(3, 3) THEN
            gameBoard(1, 2) = board5(1, 1)
            RETURN
        END IF
        IF board8(1, 3) = board8(2, 2) AND board8(1, 3) = board8(3, 1) THEN
            gameBoard(1, 2) = board8(1, 3)
            RETURN
        END IF


    CASE 9
        FOR row = 1 TO 3
            IF board9(row, 1) = board9(row, 2) AND board9(row, 1) = board9(row, 3) THEN
                gameBoard(1, 3) = board9(row, 1)
                RETURN
            END IF
        NEXT
        'checks columns, i.e. positions 1, 4, 5
        FOR col = 1 TO 3
            IF board9(1, col) = board9(2, col) AND board9(1, col) = board9(3, col) THEN
                gameBoard(1, 3) = board9(1, col)
                RETURN
            END IF
        NEXT
        'checks diagonals
        IF board9(1, 1) = board9(2, 2) AND board9(1, 1) = board9(3, 3) THEN
            gameBoard(1, 3) = board5(1, 1)
            RETURN
        END IF
        IF board9(1, 3) = board9(2, 2) AND board9(1, 3) = board9(3, 1) THEN
            gameBoard(1, 3) = board9(1, 3)
            RETURN
        END IF
        RETURN



        ISTHEGAMEWONPLEASEWORK:

        FOR row = 1 TO 3
            IF gameBoard(row, 1) = gameBoard(row, 2) AND gameBoard(row, 1) = gameBoard(row, 3) THEN
                gameWon = true
                winner$ = gameBoard(row, 1)
                RETURN
            END IF
        NEXT

        'checks columns, i.e. positions 1, 4, 5
        FOR col = 1 TO 3
            IF gameBoard(1, col) = gameBoard(2, col) AND gameBoard(1, col) = gameBoard(3, col) THEN
                gameWon = true
                winner$ = gameBoard(1, col)
                RETURN
            END IF
        NEXT

        'checks diagonals
        IF gameBoard(1, 1) = gameBoard(2, 2) AND gameBoard(1, 1) = gameBoard(3, 3) THEN
            gameWon = true
            winner$ = gameBoard(1, 1)
            RETURN
        END IF
        IF gameBoard(1, 3) = gameBoard(2, 2) AND gameBoard(1, 3) = gameBoard(3, 1) THEN
            gameWon = true
            winner$ = gameBoard(1, 3)
            RETURN
        END IF



END SELECT


RETURN

drawBoard:
CLS
'     " 13          | 13         | 13          " THIS IS SO GHETTO HOLY CRAP
PRINT " "; board7(1, 1); " |"; board7(1, 2); " |"; board7(1, 3); "  | "; board8(1, 1); " |"; board8(1, 2); " |"; board8(1, 3); "  | "; board9(1, 1); " |"; board9(1, 2); " |"; board9(1, 3)
PRINT "  ---------  |  ---------  |  ---------  "
PRINT " "; board7(2, 1); " |"; board7(2, 2); " |"; board7(2, 3); "  | "; board8(2, 1); " |"; board8(2, 2); " |"; board8(2, 3); "  | "; board9(2, 1); " |"; board9(2, 2); " |"; board9(2, 3)
PRINT "  ---------  |  ---------  |  ---------  "
PRINT " "; board7(3, 1); " |"; board7(3, 2); " |"; board7(3, 3); "  | "; board8(3, 1); " |"; board8(3, 2); " |"; board8(3, 3); "  | "; board9(3, 1); " |"; board9(3, 2); " |"; board9(3, 3)
PRINT "-------------|-------------|-------------"
PRINT " "; board4(1, 1); " |"; board4(1, 2); " |"; board4(1, 3); "  | "; board5(1, 1); " |"; board5(1, 2); " |"; board5(1, 3); "  | "; board6(1, 1); " |"; board6(1, 2); " |"; board6(1, 3)
PRINT "  ---------  |  ---------  |  ---------  "
PRINT " "; board4(2, 1); " |"; board4(2, 2); " |"; board4(2, 3); "  | "; board5(2, 1); " |"; board5(2, 2); " |"; board5(2, 3); "  | "; board6(2, 1); " |"; board6(2, 2); " |"; board6(2, 3)
PRINT "  ---------  |  ---------  |  ---------  "
PRINT " "; board4(3, 1); " |"; board4(3, 2); " |"; board4(3, 3); "  | "; board5(3, 1); " |"; board5(3, 2); " |"; board5(3, 3); "  | "; board6(3, 1); " |"; board6(3, 2); " |"; board6(3, 3)
PRINT "-------------|-------------|-------------"
PRINT " "; board1(1, 1); " |"; board1(1, 2); " |"; board1(1, 3); "  | "; board2(1, 1); " |"; board2(1, 2); " |"; board2(1, 3); "  | "; board3(1, 1); " |"; board3(1, 2); " |"; board3(1, 3)
PRINT "  ---------  |  ---------  |  ---------  "
PRINT " "; board1(2, 1); " |"; board1(2, 2); " |"; board1(2, 3); "  | "; board2(2, 1); " |"; board2(2, 2); " |"; board2(2, 3); "  | "; board3(2, 1); " |"; board3(2, 2); " |"; board3(2, 3)
PRINT "  ---------  |  ---------  |  ---------  "
PRINT " "; board1(3, 1); " |"; board1(3, 2); " |"; board1(3, 3); "  | "; board2(3, 1); " |"; board2(3, 2); " |"; board2(3, 3); "  | "; board3(3, 1); " |"; board3(3, 2); " |"; board3(3, 3)
LINE (106, 0)-(109, 270), _RGB(227, 177, 255), BF
LINE (219, 0)-(222, 270), _RGB(227, 177, 255), BF
LINE (0, 86)-(335, 88), _RGB(227, 177, 255), BF
LINE (0, 182)-(335, 184), _RGB(227, 177, 255), BF


RETURN


main:

WHILE gameWon = false AND turns < 82
    GOSUB takeTurn
    GOSUB drawBoard
    GOSUB ISTHEGAMEWONPLEASEWORK
    'TODO check if gameWon if it is, set gameBoard(i,x) to the won space- this will not change
    ' the board in any way however it should prevent anything else from screwing up
    IF cPlayer$ = " X" THEN cPlayer$ = " O" ELSE cPlayer$ = " X"
WEND
PRINT winner$; " won the game!"



