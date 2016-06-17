.class public final Lbpb;
.super Lbpl;
.source "CodaBarReader.java"


# static fields
.field private static a:[C

.field private static b:[I

.field private static final c:[C


# instance fields
.field private final d:Ljava/lang/StringBuilder;

.field private e:[I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lbpb;->a:[C

    .line 50
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbpb;->b:[I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lbpb;->c:[C

    return-void

    .line 50
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_1
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lbpl;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    .line 75
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lbpb;->e:[I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lbpb;->f:I

    .line 77
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lbpb;->e:[I

    iget v1, p0, Lbpb;->f:I

    aput p1, v0, v1

    .line 255
    iget v0, p0, Lbpb;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbpb;->f:I

    .line 256
    iget v0, p0, Lbpb;->f:I

    iget-object v1, p0, Lbpb;->e:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 257
    iget v0, p0, Lbpb;->f:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 258
    iget-object v1, p0, Lbpb;->e:[I

    iget v2, p0, Lbpb;->f:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v0, p0, Lbpb;->e:[I

    .line 261
    :cond_0
    return-void
.end method

.method private static a([CC)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 282
    if-eqz p0, :cond_0

    .line 283
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v3, p0, v1

    .line 284
    if-ne v3, p1, :cond_1

    .line 285
    const/4 v0, 0x1

    .line 289
    :cond_0
    return v0

    .line 283
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(I)I
    .locals 10
    .parameter

    .prologue
    const v3, 0x7fffffff

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 294
    add-int/lit8 v7, p1, 0x7

    .line 295
    iget v0, p0, Lbpb;->f:I

    if-lt v7, v0, :cond_1

    move v0, v4

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    iget-object v8, p0, Lbpb;->e:[I

    move v6, p1

    move v2, v3

    move v1, v5

    .line 303
    :goto_1
    if-ge v6, v7, :cond_3

    .line 304
    aget v0, v8, v6

    .line 305
    if-ge v0, v2, :cond_2

    move v2, v0

    .line 308
    :cond_2
    if-le v0, v1, :cond_b

    .line 303
    :goto_2
    add-int/lit8 v1, v6, 0x2

    move v6, v1

    move v1, v0

    goto :goto_1

    .line 312
    :cond_3
    add-int v0, v2, v1

    div-int/lit8 v2, v0, 0x2

    .line 316
    add-int/lit8 v0, p1, 0x1

    move v1, v5

    move v6, v0

    :goto_3
    if-ge v6, v7, :cond_5

    .line 317
    aget v0, v8, v6

    .line 318
    if-ge v0, v3, :cond_4

    move v3, v0

    .line 321
    :cond_4
    if-le v0, v1, :cond_a

    .line 316
    :goto_4
    add-int/lit8 v1, v6, 0x2

    move v6, v1

    move v1, v0

    goto :goto_3

    .line 325
    :cond_5
    add-int v0, v3, v1

    div-int/lit8 v1, v0, 0x2

    .line 327
    const/16 v0, 0x80

    move v6, v0

    move v7, v5

    move v3, v5

    .line 329
    :goto_5
    const/4 v0, 0x7

    if-ge v7, v0, :cond_7

    .line 330
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_6

    move v0, v2

    .line 331
    :goto_6
    shr-int/lit8 v6, v6, 0x1

    .line 332
    add-int v9, p1, v7

    aget v9, v8, v9

    if-le v9, v0, :cond_9

    .line 333
    or-int v0, v3, v6

    .line 329
    :goto_7
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v0

    goto :goto_5

    :cond_6
    move v0, v1

    .line 330
    goto :goto_6

    :cond_7
    move v0, v5

    .line 337
    :goto_8
    const/16 v1, 0x14

    if-ge v0, v1, :cond_8

    .line 338
    sget-object v1, Lbpb;->b:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_0

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    move v0, v4

    .line 342
    goto :goto_0

    :cond_9
    move v0, v3

    goto :goto_7

    :cond_a
    move v0, v1

    goto :goto_4

    :cond_b
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a(ILbnz;Ljava/util/Map;)Lbnr;
    .locals 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbnz;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lbnr;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lbpb;->e:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lbpb;->f:I

    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lbnz;->d(I)I

    move-result v2

    move-object/from16 v0, p2

    iget v5, v0, Lbnz;->b:I

    if-lt v2, v5, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_0
    const/4 v3, 0x1

    const/4 v1, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lbnz;->a(I)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lbpb;->a(I)V

    const/4 v2, 0x1

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v14, v2

    move v2, v1

    move v1, v14

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1}, Lbpb;->a(I)V

    .line 84
    const/4 v1, 0x1

    :goto_3
    iget v2, p0, Lbpb;->f:I

    if-ge v1, v2, :cond_8

    invoke-direct {p0, v1}, Lbpb;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    sget-object v3, Lbpb;->c:[C

    sget-object v4, Lbpb;->a:[C

    aget-char v2, v4, v2

    invoke-static {v3, v2}, Lbpb;->a([CC)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_4
    add-int/lit8 v4, v1, 0x7

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lbpb;->e:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lbpb;->e:[I

    add-int/lit8 v4, v1, -0x1

    aget v2, v2, v4

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_7

    .line 87
    :cond_5
    iget-object v2, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move v2, v1

    .line 89
    :cond_6
    invoke-direct {p0, v2}, Lbpb;->b(I)I

    move-result v3

    .line 90
    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 91
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 84
    :cond_7
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 96
    :cond_9
    iget-object v4, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    int-to-char v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v2, v2, 0x8

    .line 99
    iget-object v4, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    sget-object v4, Lbpb;->c:[C

    sget-object v5, Lbpb;->a:[C

    aget-char v3, v5, v3

    invoke-static {v4, v3}, Lbpb;->a([CC)Z

    move-result v3

    if-nez v3, :cond_b

    .line 101
    :cond_a
    iget v3, p0, Lbpb;->f:I

    if-lt v2, v3, :cond_6

    .line 106
    :cond_b
    iget-object v3, p0, Lbpb;->e:[I

    add-int/lit8 v4, v2, -0x1

    aget v5, v3, v4

    .line 107
    const/4 v4, 0x0

    .line 108
    const/4 v3, -0x8

    :goto_5
    const/4 v6, -0x1

    if-ge v3, v6, :cond_c

    .line 109
    iget-object v6, p0, Lbpb;->e:[I

    add-int v7, v2, v3

    aget v6, v6, v7

    add-int/2addr v4, v6

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 115
    :cond_c
    iget v3, p0, Lbpb;->f:I

    if-ge v2, v3, :cond_d

    div-int/lit8 v3, v4, 0x2

    if-ge v5, v3, :cond_d

    .line 116
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 119
    :cond_d
    const/4 v3, 0x4

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    const/4 v3, 0x4

    new-array v8, v3, [I

    fill-array-data v8, :array_1

    iget-object v3, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v9, v3, -0x1

    const/4 v3, 0x0

    move v4, v1

    :goto_6
    sget-object v5, Lbpb;->b:[I

    iget-object v6, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    aget v6, v5, v6

    const/4 v5, 0x6

    :goto_7
    if-ltz v5, :cond_e

    and-int/lit8 v10, v5, 0x1

    and-int/lit8 v11, v6, 0x1

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    aget v11, v7, v10

    iget-object v12, p0, Lbpb;->e:[I

    add-int v13, v4, v5

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v7, v10

    aget v11, v8, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v8, v10

    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_e
    if-ge v3, v9, :cond_f

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    const/4 v3, 0x4

    new-array v10, v3, [F

    const/4 v3, 0x4

    new-array v11, v3, [F

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x2

    if-ge v3, v4, :cond_10

    const/4 v4, 0x0

    aput v4, v11, v3

    add-int/lit8 v4, v3, 0x2

    aget v5, v7, v3

    int-to-float v5, v5

    aget v6, v8, v3

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    aget v6, v7, v6

    int-to-float v6, v6

    add-int/lit8 v12, v3, 0x2

    aget v12, v8, v12

    int-to-float v12, v12

    div-float/2addr v6, v12

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    aput v5, v11, v4

    add-int/lit8 v4, v3, 0x2

    aget v4, v11, v4

    aput v4, v10, v3

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v3, 0x2

    aget v5, v7, v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    const/high16 v6, 0x3fc0

    add-float/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    aget v6, v8, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    move v4, v1

    :goto_9
    sget-object v5, Lbpb;->b:[I

    iget-object v6, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x6

    :goto_a
    if-ltz v6, :cond_13

    and-int/lit8 v7, v6, 0x1

    and-int/lit8 v8, v5, 0x1

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Lbpb;->e:[I

    add-int v12, v4, v6

    aget v8, v8, v12

    int-to-float v12, v8

    aget v13, v11, v7

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_11

    int-to-float v8, v8

    aget v7, v10, v7

    cmpl-float v7, v8, v7

    if-lez v7, :cond_12

    :cond_11
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_12
    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    :cond_13
    if-ge v3, v9, :cond_14

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 122
    :cond_14
    const/4 v3, 0x0

    :goto_b
    iget-object v4, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_15

    .line 123
    iget-object v4, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    sget-object v5, Lbpb;->a:[C

    iget-object v6, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 126
    :cond_15
    iget-object v3, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 127
    sget-object v4, Lbpb;->c:[C

    invoke-static {v4, v3}, Lbpb;->a([CC)Z

    move-result v3

    if-nez v3, :cond_16

    .line 128
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 130
    :cond_16
    iget-object v3, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 131
    sget-object v4, Lbpb;->c:[C

    invoke-static {v4, v3}, Lbpb;->a([CC)Z

    move-result v3

    if-nez v3, :cond_17

    .line 132
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 136
    :cond_17
    iget-object v3, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_18

    .line 138
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 141
    :cond_18
    if-eqz p3, :cond_19

    sget-object v3, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 142
    :cond_19
    iget-object v3, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 143
    iget-object v3, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 146
    :cond_1a
    const/4 v4, 0x0

    .line 147
    const/4 v3, 0x0

    move v14, v3

    move v3, v4

    move v4, v14

    :goto_c
    if-ge v4, v1, :cond_1b

    .line 148
    iget-object v5, p0, Lbpb;->e:[I

    aget v5, v5, v4

    add-int/2addr v5, v3

    .line 147
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_c

    .line 150
    :cond_1b
    int-to-float v4, v3

    move v14, v3

    move v3, v1

    move v1, v14

    .line 151
    :goto_d
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_1c

    .line 152
    iget-object v5, p0, Lbpb;->e:[I

    aget v5, v5, v3

    add-int/2addr v1, v5

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 154
    :cond_1c
    int-to-float v1, v1

    .line 155
    new-instance v2, Lbnr;

    iget-object v3, p0, Lbpb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lbns;

    const/4 v7, 0x0

    new-instance v8, Lbns;

    move/from16 v0, p1

    int-to-float v9, v0

    invoke-direct {v8, v4, v9}, Lbns;-><init>(FF)V

    aput-object v8, v6, v7

    const/4 v4, 0x1

    new-instance v7, Lbns;

    move/from16 v0, p1

    int-to-float v8, v0

    invoke-direct {v7, v1, v8}, Lbns;-><init>(FF)V

    aput-object v7, v6, v4

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v3, v5, v6, v1}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V

    return-object v2

    .line 119
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
