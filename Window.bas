CONST WInH = 640
CONST WinW = 480
CONST WinCol = 32
Win = _NEWIMAGE(WInH, WinW, WinCol)
SCREEN Win


TYPE PngType
    IsLoaded AS _UNSIGNED _BYTE
    Handle AS LONG
END TYPE
TYPE PlayerType
    IsMoving AS _UNSIGNED _BYTE '1 or 0
    Direction AS _UNSIGNED _BYTE '1 thru 4
    Image AS PngType
    WalkFrame AS _BYTE
END TYPE

CONST UP = 1
CONST DOWN = 2
CONST LEFT = 3
CONST RIGHT = 4
CONST TWalkFrame = 2

DIM SHARED Player AS PlayerType
Player.Image.Handle = _LOADIMAGE(_CWD$ + "\Content\Pictures\Player\PlMov1-0.png")
Player.Image.IsLoaded = 1


DO
    _LIMIT 10
    'UpdateWorld
    UpdatePlayer
    IF Player.IsMoving = 0 THEN
        IF _KEYDOWN(18432) THEN
            Player.IsMoving = 1
            Player.Direction = UP
        ELSEIF _KEYDOWN(20480) THEN
            Player.IsMoving = 1
            Player.Direction = DOWN
        ELSEIF _KEYDOWN(19200) THEN
            Player.IsMoving = 1
            Player.Direction = LEFT
        ELSEIF _KEYDOWN(19712) THEN
            Player.IsMoving = 1
            Player.Direction = RIGHT
        END IF
    END IF
    'DisplayWorld
    DisplayPlayer
    _DISPLAY
LOOP
SYSTEM


SUB UpdatePlayer
IF Player.IsMoving = 1 THEN PlayerMove
END SUB

SUB PlayerMove

IF Player.WalkFrame = TWalkFrame THEN
    Player.WalkFrame = 0
    Player.IsMoving = 0
ELSE
    Player.WalkFrame = Player.WalkFrame + 1
    Player.IsMoving = 1
END IF

IF Player.Image.IsLoaded = 1 THEN PlayerDeleteImage
PlayerSetImage
END SUB

SUB PlayerDeleteImage
IF Player.Image.IsLoaded = 1 THEN
    _FREEIMAGE (Player.Image.Handle)
    Player.Image.IsLoaded = 0
END IF
END SUB

SUB PlayerSetImage
ImageDir$ = _CWD$ + "\Content\Pictures\Player\PlMov" + LTRIM$(STR$(Player.Direction)) + "-" + LTRIM$(STR$(Player.WalkFrame)) + ".png"
Player.Image.Handle = _LOADIMAGE(ImageDir$)
Player.Image.IsLoaded = 1
IF Player.Image.Handle = -1 THEN PRINT "Error!!": PRINT ImageDir$: SLEEP: SYSTEM
END SUB

SUB DisplayPlayer
_PUTIMAGE (20, 20)-(150, 150), Player.Image.Handle, Win
END SUB
