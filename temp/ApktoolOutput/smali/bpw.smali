.class public final Lbpw;
.super Lbps;
.source "RSS14Reader.java"


# static fields
.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[[I


# instance fields
.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbpv;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbpv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 37
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbpw;->g:[I

    .line 38
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lbpw;->h:[I

    .line 39
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lbpw;->i:[I

    .line 40
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lbpw;->j:[I

    .line 41
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lbpw;->k:[I

    .line 42
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lbpw;->l:[I

    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    sput-object v0, Lbpw;->m:[[I

    return-void

    .line 37
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
    .end array-data

    .line 38
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
    .end array-data

    .line 39
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0xc1t 0x3t 0x0t 0x0t
        0xdft 0x7t 0x0t 0x0t
        0x9bt 0xat 0x0t 0x0t
    .end array-data

    .line 40
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0xct 0x4t 0x0t 0x0t
        0xect 0x5t 0x0t 0x0t
    .end array-data

    .line 41
    :array_4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 44
    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lbps;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbpw;->n:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbpw;->o:Ljava/util/List;

    .line 62
    return-void
.end method

.method private a(Lbnz;Lbpu;Z)Lbpt;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v3, p0, Lbps;->b:[I

    .line 194
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 195
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 196
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 197
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 198
    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 199
    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 200
    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 201
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 203
    if-eqz p3, :cond_2

    .line 204
    iget-object v0, p2, Lbpu;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0, v3}, Lbpw;->b(Lbnz;I[I)V

    .line 215
    :cond_0
    if-eqz p3, :cond_3

    const/16 v0, 0x10

    .line 216
    :goto_0
    invoke-static {v3}, Lbpw;->a([I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float v4, v1, v2

    .line 218
    iget-object v6, p0, Lbps;->e:[I

    .line 219
    iget-object v7, p0, Lbps;->f:[I

    .line 220
    iget-object v5, p0, Lbps;->c:[F

    .line 221
    iget-object v8, p0, Lbps;->d:[F

    .line 223
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/16 v1, 0x8

    if-ge v2, v1, :cond_6

    .line 224
    aget v1, v3, v2

    int-to-float v1, v1

    div-float v9, v1, v4

    .line 225
    const/high16 v1, 0x3f00

    add-float/2addr v1, v9

    float-to-int v1, v1

    .line 226
    if-gtz v1, :cond_4

    .line 227
    const/4 v1, 0x1

    .line 231
    :cond_1
    :goto_2
    div-int/lit8 v10, v2, 0x2

    .line 232
    and-int/lit8 v11, v2, 0x1

    if-nez v11, :cond_5

    .line 233
    aput v1, v6, v10

    .line 234
    int-to-float v1, v1

    sub-float v1, v9, v1

    aput v1, v5, v10

    .line 223
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 206
    :cond_2
    iget-object v0, p2, Lbpu;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0, v3}, Lbpw;->a(Lbnz;I[I)V

    .line 208
    const/4 v1, 0x0

    const/4 v0, 0x7

    :goto_4
    if-ge v1, v0, :cond_0

    .line 209
    aget v2, v3, v1

    .line 210
    aget v4, v3, v0

    aput v4, v3, v1

    .line 211
    aput v2, v3, v0

    .line 208
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 215
    :cond_3
    const/16 v0, 0xf

    goto :goto_0

    .line 228
    :cond_4
    const/16 v10, 0x8

    if-le v1, v10, :cond_1

    .line 229
    const/16 v1, 0x8

    goto :goto_2

    .line 236
    :cond_5
    aput v1, v7, v10

    .line 237
    int-to-float v1, v1

    sub-float v1, v9, v1

    aput v1, v8, v10

    goto :goto_3

    .line 241
    :cond_6
    iget-object v1, p0, Lbps;->e:[I

    invoke-static {v1}, Lbpw;->a([I)I

    move-result v8

    iget-object v1, p0, Lbps;->f:[I

    invoke-static {v1}, Lbpw;->a([I)I

    move-result v9

    add-int v1, v8, v9

    sub-int v10, v1, v0

    and-int/lit8 v1, v8, 0x1

    if-eqz p3, :cond_9

    const/4 v0, 0x1

    :goto_5
    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    move v5, v0

    :goto_6
    and-int/lit8 v0, v9, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    move v4, v0

    :goto_7
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_e

    const/16 v11, 0xc

    if-le v8, v11, :cond_c

    const/4 v2, 0x1

    :cond_7
    :goto_8
    const/16 v11, 0xc

    if-le v9, v11, :cond_d

    const/4 v0, 0x1

    :cond_8
    :goto_9
    const/4 v11, 0x1

    if-ne v10, v11, :cond_16

    if-eqz v5, :cond_14

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    move v5, v0

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    move v4, v0

    goto :goto_7

    :cond_c
    const/4 v11, 0x4

    if-ge v8, v11, :cond_7

    const/4 v3, 0x1

    goto :goto_8

    :cond_d
    const/4 v11, 0x4

    if-ge v9, v11, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/16 v11, 0xb

    if-le v8, v11, :cond_10

    const/4 v2, 0x1

    :cond_f
    :goto_a
    const/16 v11, 0xa

    if-le v9, v11, :cond_11

    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    const/4 v11, 0x5

    if-ge v8, v11, :cond_f

    const/4 v3, 0x1

    goto :goto_a

    :cond_11
    const/4 v11, 0x4

    if-ge v9, v11, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_12
    const/4 v2, 0x1

    :cond_13
    :goto_b
    if-eqz v3, :cond_20

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_14
    if-nez v4, :cond_15

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_b

    :cond_16
    const/4 v11, -0x1

    if-ne v10, v11, :cond_1a

    if-eqz v5, :cond_18

    if-eqz v4, :cond_17

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_17
    const/4 v3, 0x1

    goto :goto_b

    :cond_18
    if-nez v4, :cond_19

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_19
    const/4 v1, 0x1

    goto :goto_b

    :cond_1a
    if-nez v10, :cond_1e

    if-eqz v5, :cond_1d

    if-nez v4, :cond_1b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1b
    if-ge v8, v9, :cond_1c

    const/4 v3, 0x1

    const/4 v0, 0x1

    goto :goto_b

    :cond_1c
    const/4 v2, 0x1

    const/4 v1, 0x1

    goto :goto_b

    :cond_1d
    if-eqz v4, :cond_13

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1f
    iget-object v3, p0, Lbps;->e:[I

    iget-object v4, p0, Lbps;->c:[F

    invoke-static {v3, v4}, Lbpw;->a([I[F)V

    :cond_20
    if-eqz v2, :cond_21

    iget-object v2, p0, Lbps;->e:[I

    iget-object v3, p0, Lbps;->c:[F

    invoke-static {v2, v3}, Lbpw;->b([I[F)V

    :cond_21
    if-eqz v1, :cond_23

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_22
    iget-object v1, p0, Lbps;->f:[I

    iget-object v2, p0, Lbps;->c:[F

    invoke-static {v1, v2}, Lbpw;->a([I[F)V

    :cond_23
    if-eqz v0, :cond_24

    iget-object v0, p0, Lbps;->f:[I

    iget-object v1, p0, Lbps;->d:[F

    invoke-static {v0, v1}, Lbpw;->b([I[F)V

    .line 243
    :cond_24
    const/4 v2, 0x0

    .line 244
    const/4 v1, 0x0

    .line 245
    const/4 v0, 0x3

    move v3, v1

    move v4, v2

    :goto_c
    if-ltz v0, :cond_25

    .line 246
    mul-int/lit8 v1, v3, 0x9

    .line 247
    aget v2, v6, v0

    add-int/2addr v1, v2

    .line 248
    aget v2, v6, v0

    add-int/2addr v2, v4

    .line 245
    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v4, v2

    goto :goto_c

    .line 250
    :cond_25
    const/4 v1, 0x0

    .line 251
    const/4 v0, 0x0

    .line 252
    const/4 v2, 0x3

    :goto_d
    if-ltz v2, :cond_26

    .line 253
    mul-int/lit8 v1, v1, 0x9

    .line 254
    aget v5, v7, v2

    add-int/2addr v1, v5

    .line 255
    aget v5, v7, v2

    add-int/2addr v0, v5

    .line 252
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 257
    :cond_26
    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    .line 259
    if-eqz p3, :cond_29

    .line 260
    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_27

    const/16 v0, 0xc

    if-gt v4, v0, :cond_27

    const/4 v0, 0x4

    if-ge v4, v0, :cond_28

    .line 261
    :cond_27
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 263
    :cond_28
    rsub-int/lit8 v0, v4, 0xc

    div-int/lit8 v0, v0, 0x2

    .line 264
    sget-object v2, Lbpw;->k:[I

    aget v2, v2, v0

    .line 265
    rsub-int/lit8 v3, v2, 0x9

    .line 266
    const/4 v4, 0x0

    invoke-static {v6, v2, v4}, Ld;->a([IIZ)I

    move-result v2

    .line 267
    const/4 v4, 0x1

    invoke-static {v7, v3, v4}, Ld;->a([IIZ)I

    move-result v3

    .line 268
    sget-object v4, Lbpw;->g:[I

    aget v4, v4, v0

    .line 269
    sget-object v5, Lbpw;->i:[I

    aget v5, v5, v0

    .line 270
    new-instance v0, Lbpt;

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    invoke-direct {v0, v2, v1}, Lbpt;-><init>(II)V

    .line 282
    :goto_e
    return-object v0

    .line 272
    :cond_29
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_2a

    const/16 v2, 0xa

    if-gt v0, v2, :cond_2a

    const/4 v2, 0x4

    if-ge v0, v2, :cond_2b

    .line 273
    :cond_2a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 275
    :cond_2b
    rsub-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x2

    .line 276
    sget-object v2, Lbpw;->l:[I

    aget v2, v2, v0

    .line 277
    rsub-int/lit8 v3, v2, 0x9

    .line 278
    const/4 v4, 0x1

    invoke-static {v6, v2, v4}, Ld;->a([IIZ)I

    move-result v2

    .line 279
    const/4 v4, 0x0

    invoke-static {v7, v3, v4}, Ld;->a([IIZ)I

    move-result v3

    .line 280
    sget-object v4, Lbpw;->h:[I

    aget v4, v4, v0

    .line 281
    sget-object v5, Lbpw;->j:[I

    aget v5, v5, v0

    .line 282
    new-instance v0, Lbpt;

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    invoke-direct {v0, v2, v1}, Lbpt;-><init>(II)V

    goto :goto_e
.end method

.method private a(Lbnz;ZILjava/util/Map;)Lbpv;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbnz;",
            "ZI",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lbpv;"
        }
    .end annotation

    .prologue
    .line 165
    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lbps;->a:[I

    const/4 v0, 0x0

    const/4 v2, 0x0

    aput v2, v5, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v5, v0

    const/4 v0, 0x2

    const/4 v2, 0x0

    aput v2, v5, v0

    const/4 v0, 0x3

    const/4 v2, 0x0

    aput v2, v5, v0

    iget v6, p1, Lbnz;->b:I

    const/4 v0, 0x0

    :goto_0
    if-ge v1, v6, :cond_1

    invoke-virtual {p1, v1}, Lbnz;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-eq p2, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v4, v1

    move v8, v2

    move v2, v0

    move v0, v8

    :goto_2
    if-ge v4, v6, :cond_6

    invoke-virtual {p1, v4}, Lbnz;->a(I)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_2

    aget v3, v5, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v0

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v8, v1

    move v1, v2

    move v2, v8

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    invoke-static {v5}, Lbpw;->b([I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x2

    new-array v6, v0, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    const/4 v0, 0x1

    aput v4, v6, v0

    .line 166
    const/4 v0, 0x0

    aget v0, v6, v0

    invoke-virtual {p1, v0}, Lbnz;->a(I)Z

    move-result v1

    const/4 v0, 0x0

    aget v0, v6, v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    invoke-virtual {p1, v0}, Lbnz;->a(I)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_7

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 165
    :cond_3
    const/4 v3, 0x0

    aget v3, v5, v3

    const/4 v7, 0x1

    aget v7, v5, v7

    add-int/2addr v3, v7

    add-int/2addr v3, v1

    const/4 v1, 0x0

    const/4 v7, 0x2

    aget v7, v5, v7

    aput v7, v5, v1

    const/4 v1, 0x1

    const/4 v7, 0x3

    aget v7, v5, v7

    aput v7, v5, v1

    const/4 v1, 0x2

    const/4 v7, 0x0

    aput v7, v5, v1

    const/4 v1, 0x3

    const/4 v7, 0x0

    aput v7, v5, v1

    add-int/lit8 v1, v0, -0x1

    :goto_5
    const/4 v0, 0x1

    aput v0, v5, v1

    if-nez v2, :cond_5

    const/4 v0, 0x1

    :goto_6
    move v2, v3

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 186
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 166
    :cond_7
    add-int/lit8 v5, v0, 0x1

    const/4 v0, 0x0

    aget v0, v6, v0

    sub-int/2addr v0, v5

    iget-object v1, p0, Lbps;->a:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {v1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lbpw;->m:[[I

    invoke-static {v1, v0}, Lbpw;->a([I[[I)I

    move-result v1

    const/4 v0, 0x1

    aget v4, v6, v0

    if-eqz p2, :cond_b

    iget v0, p1, Lbnz;->b:I

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v5

    iget v0, p1, Lbnz;->b:I

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    :goto_8
    new-instance v0, Lbpu;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v7, 0x0

    aput v5, v2, v7

    const/4 v5, 0x1

    const/4 v7, 0x1

    aget v7, v6, v7

    aput v7, v2, v5

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lbpu;-><init>(I[IIII)V

    .line 168
    if-nez p4, :cond_a

    const/4 v1, 0x0

    move-object v2, v1

    .line 171
    :goto_9
    if-eqz v2, :cond_9

    .line 172
    const/4 v1, 0x0

    aget v1, v6, v1

    const/4 v3, 0x1

    aget v3, v6, v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    .line 173
    if-eqz p2, :cond_8

    .line 175
    iget v3, p1, Lbnz;->b:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    sub-float v1, v3, v1

    .line 177
    :cond_8
    new-instance v3, Lbns;

    int-to-float v4, p3

    invoke-direct {v3, v1, v4}, Lbns;-><init>(FF)V

    invoke-virtual {v2, v3}, Lbnt;->a(Lbns;)V

    .line 180
    :cond_9
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lbpw;->a(Lbnz;Lbpu;Z)Lbpt;

    move-result-object v2

    .line 181
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lbpw;->a(Lbnz;Lbpu;Z)Lbpt;

    move-result-object v3

    .line 182
    new-instance v1, Lbpv;

    iget v4, v2, Lbpt;->a:I

    mul-int/lit16 v4, v4, 0x63d

    iget v5, v3, Lbpt;->a:I

    add-int/2addr v4, v5

    iget v2, v2, Lbpt;->b:I

    iget v3, v3, Lbpt;->b:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-direct {v1, v4, v2, v0}, Lbpv;-><init>(IILbpu;)V

    move-object v0, v1

    goto :goto_7

    .line 168
    :cond_a
    sget-object v1, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbnt;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_9

    :cond_b
    move v3, v5

    goto :goto_8
.end method

.method private static a(Ljava/util/Collection;Lbpv;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbpv;",
            ">;",
            "Lbpv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v1, 0x0

    .line 97
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpv;

    .line 98
    iget v3, v0, Lbpt;->a:I

    iget v4, p1, Lbpt;->a:I

    if-ne v3, v4, :cond_2

    .line 99
    iget v1, v0, Lbpv;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lbpv;->d:I

    .line 100
    const/4 v0, 0x1

    .line 104
    :goto_1
    if-nez v0, :cond_0

    .line 105
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(ILbnz;Ljava/util/Map;)Lbnr;
    .locals 11
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
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p2, v3, p1, p3}, Lbpw;->a(Lbnz;ZILjava/util/Map;)Lbpv;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lbpw;->n:Ljava/util/List;

    invoke-static {v1, v0}, Lbpw;->a(Ljava/util/Collection;Lbpv;)V

    .line 70
    invoke-virtual {p2}, Lbnz;->b()V

    .line 71
    invoke-direct {p0, p2, v6, p1, p3}, Lbpw;->a(Lbnz;ZILjava/util/Map;)Lbpv;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lbpw;->o:Ljava/util/List;

    invoke-static {v1, v0}, Lbpw;->a(Ljava/util/Collection;Lbpv;)V

    .line 73
    invoke-virtual {p2}, Lbnz;->b()V

    .line 74
    iget-object v0, p0, Lbpw;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    .line 75
    :goto_0
    if-ge v2, v7, :cond_9

    .line 76
    iget-object v0, p0, Lbpw;->n:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lbpv;

    .line 77
    iget v0, v1, Lbpv;->d:I

    if-le v0, v6, :cond_8

    .line 78
    iget-object v0, p0, Lbpw;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    .line 79
    :goto_1
    if-ge v5, v8, :cond_8

    .line 80
    iget-object v0, p0, Lbpw;->o:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpv;

    .line 81
    iget v4, v0, Lbpv;->d:I

    if-le v4, v6, :cond_7

    .line 82
    iget v4, v1, Lbpt;->b:I

    iget v9, v0, Lbpt;->b:I

    mul-int/lit8 v9, v9, 0x10

    add-int/2addr v4, v9

    rem-int/lit8 v9, v4, 0x4f

    iget-object v4, v1, Lbpv;->c:Lbpu;

    iget v4, v4, Lbpu;->a:I

    mul-int/lit8 v4, v4, 0x9

    iget-object v10, v0, Lbpv;->c:Lbpu;

    iget v10, v10, Lbpu;->a:I

    add-int/2addr v4, v10

    const/16 v10, 0x48

    if-le v4, v10, :cond_0

    add-int/lit8 v4, v4, -0x1

    :cond_0
    const/16 v10, 0x8

    if-le v4, v10, :cond_1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    if-ne v9, v4, :cond_2

    move v4, v6

    :goto_2
    if-eqz v4, :cond_7

    .line 83
    const-wide/32 v4, 0x453af5

    iget v2, v1, Lbpt;->a:I

    int-to-long v8, v2

    mul-long/2addr v4, v8

    iget v2, v0, Lbpt;->a:I

    int-to-long v8, v2

    add-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0xd

    :goto_3
    if-lez v2, :cond_3

    const/16 v5, 0x30

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_2
    move v4, v3

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    move v5, v3

    :goto_4
    const/16 v2, 0xd

    if-ge v5, v2, :cond_5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_4

    mul-int/lit8 v2, v2, 0x3

    :cond_4
    add-int/2addr v2, v4

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto :goto_4

    :cond_5
    rem-int/lit8 v2, v4, 0xa

    rsub-int/lit8 v2, v2, 0xa

    const/16 v4, 0xa

    if-ne v2, v4, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lbpv;->c:Lbpu;

    iget-object v1, v1, Lbpu;->c:[Lbns;

    iget-object v0, v0, Lbpv;->c:Lbpu;

    iget-object v0, v0, Lbpu;->c:[Lbns;

    new-instance v2, Lbnr;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Lbns;

    aget-object v8, v1, v3

    aput-object v8, v7, v3

    aget-object v1, v1, v6

    aput-object v1, v7, v6

    const/4 v1, 0x2

    aget-object v3, v0, v3

    aput-object v3, v7, v1

    const/4 v1, 0x3

    aget-object v0, v0, v6

    aput-object v0, v7, v1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v4, v5, v7, v0}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V

    return-object v2

    .line 79
    :cond_7
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    .line 75
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 89
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbpw;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iget-object v0, p0, Lbpw;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    return-void
.end method
