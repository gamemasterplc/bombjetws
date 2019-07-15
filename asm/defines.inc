.set SCREEN_WIDTH, 852
.set SCREEN_HEIGHT, 448

.altmacro

.macro put_float x
    .float x
.endm

.macro put_int_as_float, x
    put_float %x
.endm

.macro float_sub x, y
    put_float %(x-y)
.endm

.macro float_add x, y
    put_float %(x+y)
.endm

.macro write_aspect
    .float 1.7777777
.endm