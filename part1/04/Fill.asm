@i
M=0
@8192
D=A
@n
M=D
@SCREEN
D=A
@curr
M=D
(EVENT_LOOP)
    @i
    D=M
    @n
    D=D-M
    @OVERFLOW
    D;JGE
    @KBD
    D=M
    @EMPTY_LOOP
    D;JEQ
    (FILL_LOOP)
        @i
        D=M
        @n
        D=D-M
        @EVENT_LOOP
        D;JGT
        @curr
        M=M+1
        A=M-1
        M=-1
        @i
        M=M+1
        @KBD
        D=M
        @EMPTY_LOOP_PREP
        D;JEQ
        @FILL_LOOP
        0;JMP
    (EMPTY_LOOP)
        @i
        D=M
        @n
        D=D-M
        @EVENT_LOOP
        D;JEQ
        @curr
        M=M+1
        A=M-1
        M=0
        @i
        M=M+1
        @KBD
        D=M
        @FILL_LOOP_PREP
        D;JGT
        @EMPTY_LOOP
        0;JMP
    (EMPTY_LOOP_PREP)
        @i
        M=0
        @SCREEN
        D=A
        @curr
        M=D
        @EMPTY_LOOP
        0;JMP
    (FILL_LOOP_PREP)
        @i
        M=0
        @SCREEN
        D=A
        @curr
        M=D
        @FILL_LOOP
        0;JMP
    (OVERFLOW)
        @n
        D=A
        @i
        M=D
        @SCREEN
        D=A
        @curr
        M=D
        @EVENT_LOOP
        0;JMP
