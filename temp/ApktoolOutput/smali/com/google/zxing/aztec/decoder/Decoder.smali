.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# instance fields
.field private f:Lbnu;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "a"

    aput-object v1, v0, v5

    const-string v1, "b"

    aput-object v1, v0, v6

    const-string v1, "c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:[Ljava/lang/String;

    .line 56
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "\u0001"

    aput-object v1, v0, v5

    const-string v1, "\u0002"

    aput-object v1, v0, v6

    const-string v1, "\u0003"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u0004"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0005"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0006"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0007"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0008"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u000b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u000c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\r"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u001b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u001c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u001d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u001e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u001f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "`"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u007f"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_PL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "\r"

    aput-object v1, v0, v4

    const-string v1, "\r\n"

    aput-object v1, v0, v5

    const-string v1, ". "

    aput-object v1, v0, v6

    const-string v1, ", "

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ": "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->d:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "0"

    aput-object v1, v0, v5

    const-string v1, "1"

    aput-object v1, v0, v6

    const-string v1, "2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static a([ZII)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    const/4 v0, 0x0

    move v1, p1

    .line 326
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 327
    shl-int/lit8 v0, v0, 0x1

    .line 328
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    .line 329
    or-int/lit8 v0, v0, 0x1

    .line 326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_1
    return v0
.end method

.method private a([Z)[Z
    .locals 13
    .parameter

    .prologue
    const/16 v0, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 202
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lbnu;

    iget v1, v1, Lbnu;->c:I

    const/4 v4, 0x2

    if-gt v1, v4, :cond_0

    .line 203
    const/4 v0, 0x6

    .line 204
    sget-object v1, Lbol;->c:Lbol;

    .line 216
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lbnu;

    iget v8, v4, Lbnu;->b:I

    .line 217
    array-length v4, p1

    div-int v6, v4, v0

    .line 218
    if-ge v6, v8, :cond_3

    .line 219
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lbnu;

    iget v1, v1, Lbnu;->c:I

    if-gt v1, v0, :cond_1

    .line 207
    sget-object v1, Lbol;->g:Lbol;

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lbnu;

    iget v0, v0, Lbnu;->c:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    .line 209
    const/16 v0, 0xa

    .line 210
    sget-object v1, Lbol;->b:Lbol;

    goto :goto_0

    .line 212
    :cond_2
    const/16 v0, 0xc

    .line 213
    sget-object v1, Lbol;->a:Lbol;

    goto :goto_0

    .line 221
    :cond_3
    array-length v4, p1

    rem-int/2addr v4, v0

    .line 222
    sub-int v7, v6, v8

    .line 224
    new-array v9, v6, [I

    move v5, v4

    move v4, v3

    .line 225
    :goto_1
    if-ge v4, v6, :cond_4

    .line 226
    invoke-static {p1, v5, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v10

    aput v10, v9, v4

    .line 225
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v0

    goto :goto_1

    .line 230
    :cond_4
    :try_start_0
    new-instance v4, Lbon;

    invoke-direct {v4, v1}, Lbon;-><init>(Lbol;)V

    .line 231
    invoke-virtual {v4, v9, v7}, Lbon;->a([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    shl-int v1, v2, v0

    add-int/lit8 v10, v1, -0x1

    move v4, v3

    move v1, v3

    .line 240
    :goto_2
    if-ge v4, v8, :cond_9

    .line 241
    aget v5, v9, v4

    .line 242
    if-eqz v5, :cond_5

    if-ne v5, v10, :cond_6

    .line 243
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 233
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 244
    :cond_6
    if-eq v5, v2, :cond_7

    add-int/lit8 v6, v10, -0x1

    if-ne v5, v6, :cond_8

    .line 245
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 240
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 249
    :cond_9
    mul-int v4, v8, v0

    sub-int v1, v4, v1

    new-array v11, v1, [Z

    move v4, v3

    move v7, v3

    .line 251
    :goto_3
    if-ge v7, v8, :cond_e

    .line 252
    aget v12, v9, v7

    .line 253
    if-eq v12, v2, :cond_a

    add-int/lit8 v1, v10, -0x1

    if-ne v12, v1, :cond_c

    .line 255
    :cond_a
    add-int v1, v4, v0

    add-int/lit8 v5, v1, -0x1

    if-le v12, v2, :cond_b

    move v1, v2

    :goto_4
    invoke-static {v11, v4, v5, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 256
    add-int/lit8 v1, v0, -0x1

    add-int/2addr v1, v4

    .line 251
    :goto_5
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v1

    goto :goto_3

    :cond_b
    move v1, v3

    .line 255
    goto :goto_4

    .line 258
    :cond_c
    add-int/lit8 v1, v0, -0x1

    move v5, v1

    :goto_6
    if-ltz v5, :cond_f

    .line 259
    add-int/lit8 v6, v4, 0x1

    shl-int v1, v2, v5

    and-int/2addr v1, v12

    if-eqz v1, :cond_d

    move v1, v2

    :goto_7
    aput-boolean v1, v11, v4

    .line 258
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move v4, v6

    goto :goto_6

    :cond_d
    move v1, v3

    .line 259
    goto :goto_7

    .line 263
    :cond_e
    return-object v11

    :cond_f
    move v1, v4

    goto :goto_5
.end method


# virtual methods
.method public final a(Lbnu;)Lboc;
    .locals 19
    .parameter

    .prologue
    .line 74
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lbnu;

    .line 75
    move-object/from16 v0, p1

    iget-object v8, v0, Lboe;->d:Lboa;

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lbnu;

    iget-boolean v9, v2, Lbnu;->a:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lbnu;

    iget v10, v2, Lbnu;->c:I

    if-eqz v9, :cond_0

    mul-int/lit8 v2, v10, 0x4

    add-int/lit8 v2, v2, 0xb

    :goto_0
    new-array v11, v2, [I

    if-eqz v9, :cond_1

    const/16 v3, 0x58

    :goto_1
    mul-int/lit8 v4, v10, 0x10

    add-int/2addr v3, v4

    mul-int/2addr v3, v10

    new-array v12, v3, [Z

    if-eqz v9, :cond_2

    const/4 v3, 0x0

    :goto_2
    array-length v4, v11

    if-ge v3, v4, :cond_3

    aput v3, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    mul-int/lit8 v2, v10, 0x4

    add-int/lit8 v2, v2, 0xe

    goto :goto_0

    :cond_1
    const/16 v3, 0x70

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v2, 0x1

    div-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0xf

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_3

    div-int/lit8 v6, v3, 0xf

    add-int/2addr v6, v3

    sub-int v7, v4, v3

    add-int/lit8 v7, v7, -0x1

    sub-int v13, v5, v6

    add-int/lit8 v13, v13, -0x1

    aput v13, v11, v7

    add-int v7, v4, v3

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v11, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    const/4 v3, 0x0

    move v6, v3

    move v7, v4

    :goto_4
    if-ge v7, v10, :cond_7

    if-eqz v9, :cond_4

    sub-int v3, v10, v7

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x9

    :goto_5
    mul-int/lit8 v13, v7, 0x2

    add-int/lit8 v4, v2, -0x1

    sub-int v14, v4, v13

    const/4 v4, 0x0

    move v5, v4

    :goto_6
    if-ge v5, v3, :cond_6

    mul-int/lit8 v15, v5, 0x2

    const/4 v4, 0x0

    :goto_7
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v4, v0, :cond_5

    add-int v16, v6, v15

    add-int v16, v16, v4

    add-int v17, v13, v4

    aget v17, v11, v17

    add-int v18, v13, v5

    aget v18, v11, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lboa;->a(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    mul-int/lit8 v16, v3, 0x2

    add-int v16, v16, v6

    add-int v16, v16, v15

    add-int v16, v16, v4

    add-int v17, v13, v5

    aget v17, v11, v17

    sub-int v18, v14, v4

    aget v18, v11, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lboa;->a(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    mul-int/lit8 v16, v3, 0x4

    add-int v16, v16, v6

    add-int v16, v16, v15

    add-int v16, v16, v4

    sub-int v17, v14, v4

    aget v17, v11, v17

    sub-int v18, v14, v5

    aget v18, v11, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lboa;->a(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    mul-int/lit8 v16, v3, 0x6

    add-int v16, v16, v6

    add-int v16, v16, v15

    add-int v16, v16, v4

    sub-int v17, v14, v5

    aget v17, v11, v17

    add-int v18, v13, v4

    aget v18, v11, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lboa;->a(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_4
    sub-int v3, v10, v7

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xc

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6

    :cond_6
    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v6

    add-int/lit8 v4, v7, 0x1

    move v6, v3

    move v7, v4

    goto/16 :goto_4

    .line 77
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/zxing/aztec/decoder/Decoder;->a([Z)[Z

    move-result-object v8

    .line 78
    array-length v4, v8

    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    sget-object v5, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move-object v7, v5

    move-object v5, v3

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_e

    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v7, v2, :cond_a

    sub-int v2, v4, v3

    const/4 v6, 0x5

    if-lt v2, v6, :cond_e

    const/4 v2, 0x5

    invoke-static {v8, v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v2

    add-int/lit8 v3, v3, 0x5

    if-nez v2, :cond_8

    sub-int v2, v4, v3

    const/16 v6, 0xb

    if-lt v2, v6, :cond_e

    const/16 v2, 0xb

    invoke-static {v8, v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    add-int/lit8 v3, v3, 0xb

    :cond_8
    const/4 v6, 0x0

    :goto_9
    if-ge v6, v2, :cond_f

    sub-int v7, v4, v3

    const/16 v10, 0x8

    if-ge v7, v10, :cond_9

    move v2, v4

    :goto_a
    move v3, v2

    move-object v7, v5

    goto :goto_8

    :cond_9
    const/16 v7, 0x8

    invoke-static {v8, v3, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v7

    goto :goto_9

    :cond_a
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v7, v2, :cond_b

    const/4 v2, 0x4

    :goto_b
    sub-int v6, v4, v3

    if-lt v6, v2, :cond_e

    invoke-static {v8, v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v10

    add-int v6, v3, v2

    sget-object v2, Lbnw;->a:[I

    invoke-virtual {v7}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Bad table"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    const/4 v2, 0x5

    goto :goto_b

    :pswitch_0
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->a:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object v3, v2

    :goto_c
    const-string v2, "CTRL_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    :goto_d
    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x4c

    if-ne v3, v7, :cond_d

    move v3, v6

    move-object v7, v2

    move-object v5, v2

    goto/16 :goto_8

    :pswitch_1
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->b:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object v3, v2

    goto :goto_c

    :pswitch_2
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->c:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object v3, v2

    goto :goto_c

    :pswitch_3
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->d:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object v3, v2

    goto :goto_c

    :pswitch_4
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->e:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object v3, v2

    goto :goto_c

    :sswitch_0
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_d

    :sswitch_1
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_d

    :sswitch_2
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_d

    :sswitch_3
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_d

    :sswitch_4
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_d

    :cond_c
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v5

    :cond_d
    move v3, v6

    move-object v7, v2

    goto/16 :goto_8

    :cond_e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    new-instance v3, Lboc;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Lboc;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v3

    :cond_f
    move v2, v3

    goto/16 :goto_a

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x44 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method
