.class public abstract Lbpq;
.super Lbpl;
.source "UPCEANReader.java"


# static fields
.field static final a:[I

.field static final b:[[I

.field static final c:[[I

.field private static d:[I


# instance fields
.field private final e:Ljava/lang/StringBuilder;

.field private final f:Lbpp;

.field private final g:Lbph;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 53
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    sput-object v2, Lbpq;->d:[I

    .line 58
    new-array v2, v7, [I

    fill-array-data v2, :array_1

    sput-object v2, Lbpq;->a:[I

    .line 63
    new-array v2, v0, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_2

    aput-object v3, v2, v1

    const/4 v3, 0x1

    new-array v4, v5, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_5

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_6

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_7

    aput-object v3, v2, v7

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_9

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    sput-object v2, Lbpq;->b:[[I

    .line 82
    const/16 v2, 0x14

    new-array v2, v2, [[I

    sput-object v2, Lbpq;->c:[[I

    .line 83
    sget-object v2, Lbpq;->b:[[I

    sget-object v3, Lbpq;->c:[[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v0

    .line 84
    :goto_0
    const/16 v0, 0x14

    if-ge v2, v0, :cond_1

    .line 85
    sget-object v0, Lbpq;->b:[[I

    add-int/lit8 v3, v2, -0xa

    aget-object v3, v0, v3

    .line 86
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    .line 87
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 88
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    aput v5, v4, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_0
    sget-object v0, Lbpq;->c:[[I

    aput-object v4, v0, v2

    .line 84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 92
    :cond_1
    return-void

    .line 53
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 58
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lbpl;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lbpq;->e:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Lbpp;

    invoke-direct {v0}, Lbpp;-><init>()V

    iput-object v0, p0, Lbpq;->f:Lbpp;

    .line 101
    new-instance v0, Lbph;

    invoke-direct {v0}, Lbph;-><init>()V

    iput-object v0, p0, Lbpq;->g:Lbph;

    .line 102
    return-void
.end method

.method static a(Lbnz;[II[[I)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-static {p0, p2, p1}, Lbpq;->a(Lbnz;I[I)V

    .line 356
    const v3, 0x3ef5c28f

    .line 357
    const/4 v0, -0x1

    .line 358
    array-length v4, p3

    .line 359
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 360
    aget-object v2, p3, v1

    .line 361
    const v5, 0x3f333333

    invoke-static {p1, v2, v5}, Lbpq;->a([I[IF)F

    move-result v2

    .line 362
    cmpg-float v5, v2, v3

    if-gez v5, :cond_2

    move v0, v1

    .line 359
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    .line 367
    :cond_0
    if-ltz v0, :cond_1

    .line 368
    return v0

    .line 370
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method static a(Lbnz;)[I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 108
    new-array v4, v7, [I

    move v1, v2

    move-object v3, v0

    move v0, v2

    .line 109
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 110
    invoke-static {v4, v2, v7, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 111
    sget-object v3, Lbpq;->d:[I

    invoke-static {p0, v1, v2, v3, v4}, Lbpq;->a(Lbnz;IZ[I[I)[I

    move-result-object v3

    .line 112
    aget v5, v3, v2

    .line 113
    const/4 v1, 0x1

    aget v1, v3, v1

    .line 117
    sub-int v6, v1, v5

    sub-int v6, v5, v6

    .line 118
    if-ltz v6, :cond_0

    .line 119
    invoke-virtual {p0, v6, v5}, Lbnz;->a(II)Z

    move-result v0

    goto :goto_0

    .line 122
    :cond_1
    return-object v3
.end method

.method static a(Lbnz;IZ[I)[I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lbpq;->a(Lbnz;IZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static a(Lbnz;IZ[I[I)[I
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 312
    array-length v6, p3

    .line 313
    iget v7, p0, Lbnz;->b:I

    .line 315
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lbnz;->d(I)I

    move-result v0

    :goto_0
    move v2, p2

    move v1, v4

    move v5, v0

    .line 318
    :goto_1
    if-ge v5, v7, :cond_5

    .line 319
    invoke-virtual {p0, v5}, Lbnz;->a(I)Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_1

    .line 320
    aget v8, p4, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, p4, v1

    .line 318
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 315
    :cond_0
    invoke-virtual {p0, p1}, Lbnz;->c(I)I

    move-result v0

    goto :goto_0

    .line 322
    :cond_1
    add-int/lit8 v8, v6, -0x1

    if-ne v1, v8, :cond_3

    .line 323
    const v8, 0x3f333333

    invoke-static {p4, p3, v8}, Lbpq;->a([I[IF)F

    move-result v8

    const v9, 0x3ef5c28f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 324
    new-array v1, v10, [I

    aput v0, v1, v4

    aput v5, v1, v3

    return-object v1

    .line 326
    :cond_2
    aget v8, p4, v4

    aget v9, p4, v3

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 327
    add-int/lit8 v8, v6, -0x2

    invoke-static {p4, v10, p4, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    add-int/lit8 v8, v6, -0x2

    aput v4, p4, v8

    .line 329
    add-int/lit8 v8, v6, -0x1

    aput v4, p4, v8

    .line 330
    add-int/lit8 v1, v1, -0x1

    .line 334
    :goto_3
    aput v3, p4, v1

    .line 335
    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    .line 332
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v2, v4

    .line 335
    goto :goto_2

    .line 338
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected abstract a(Lbnz;[ILjava/lang/StringBuilder;)I
.end method

.method public a(ILbnz;Ljava/util/Map;)Lbnr;
    .locals 1
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
    .line 128
    invoke-static {p2}, Lbpq;->a(Lbnz;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lbpq;->a(ILbnz;[ILjava/util/Map;)Lbnr;

    move-result-object v0

    return-object v0
.end method

.method public a(ILbnz;[ILjava/util/Map;)Lbnr;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbnz;",
            "[I",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lbnr;"
        }
    .end annotation

    .prologue
    .line 151
    if-nez p4, :cond_4

    const/4 v0, 0x0

    .line 154
    :goto_0
    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Lbns;

    const/4 v2, 0x0

    aget v2, p3, v2

    const/4 v3, 0x1

    aget v3, p3, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    int-to-float v3, p1

    invoke-direct {v1, v2, v3}, Lbns;-><init>(FF)V

    invoke-virtual {v0, v1}, Lbnt;->a(Lbns;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lbpq;->e:Ljava/lang/StringBuilder;

    .line 161
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 162
    invoke-virtual {p0, p2, p3, v1}, Lbpq;->a(Lbnz;[ILjava/lang/StringBuilder;)I

    move-result v2

    .line 164
    if-eqz v0, :cond_1

    .line 165
    new-instance v3, Lbns;

    int-to-float v4, v2

    int-to-float v5, p1

    invoke-direct {v3, v4, v5}, Lbns;-><init>(FF)V

    invoke-virtual {v0, v3}, Lbnt;->a(Lbns;)V

    .line 170
    :cond_1
    invoke-virtual {p0, p2, v2}, Lbpq;->a(Lbnz;I)[I

    move-result-object v2

    .line 172
    if-eqz v0, :cond_2

    .line 173
    new-instance v3, Lbns;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, p1

    invoke-direct {v3, v4, v5}, Lbns;-><init>(FF)V

    invoke-virtual {v0, v3}, Lbnt;->a(Lbns;)V

    .line 181
    :cond_2
    const/4 v0, 0x1

    aget v0, v2, v0

    .line 182
    const/4 v3, 0x0

    aget v3, v2, v3

    sub-int v3, v0, v3

    add-int/2addr v3, v0

    .line 183
    iget v4, p2, Lbnz;->b:I

    if-ge v3, v4, :cond_3

    invoke-virtual {p2, v0, v3}, Lbnz;->a(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 184
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 151
    :cond_4
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnt;

    goto :goto_0

    .line 187
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_6

    .line 190
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 192
    :cond_6
    invoke-virtual {p0, v4}, Lbpq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 193
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 196
    :cond_7
    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget v1, p3, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 197
    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v3, 0x0

    aget v3, v2, v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    .line 198
    invoke-virtual {p0}, Lbpq;->b()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    .line 199
    new-instance v6, Lbnr;

    const/4 v3, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lbns;

    const/4 v8, 0x0

    new-instance v9, Lbns;

    int-to-float v10, p1

    invoke-direct {v9, v0, v10}, Lbns;-><init>(FF)V

    aput-object v9, v7, v8

    const/4 v0, 0x1

    new-instance v8, Lbns;

    int-to-float v9, p1

    invoke-direct {v8, v1, v9}, Lbns;-><init>(FF)V

    aput-object v8, v7, v0

    invoke-direct {v6, v4, v3, v7, v5}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V

    .line 206
    const/4 v0, 0x0

    .line 209
    :try_start_0
    iget-object v1, p0, Lbpq;->f:Lbpp;

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, p1, p2, v2}, Lbpp;->a(ILbnz;I)Lbnr;

    move-result-object v1

    .line 210
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    iget-object v3, v1, Lbnr;->a:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Lbnr;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 211
    iget-object v2, v1, Lbnr;->e:Ljava/util/Map;

    invoke-virtual {v6, v2}, Lbnr;->a(Ljava/util/Map;)V

    .line 212
    iget-object v2, v1, Lbnr;->c:[Lbns;

    iget-object v3, v6, Lbnr;->c:[Lbns;

    if-nez v3, :cond_a

    iput-object v2, v6, Lbnr;->c:[Lbns;

    .line 213
    :cond_8
    :goto_1
    iget-object v1, v1, Lbnr;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v3, v0

    .line 218
    :goto_2
    if-nez p4, :cond_b

    const/4 v0, 0x0

    move-object v2, v0

    .line 220
    :goto_3
    if-eqz v2, :cond_d

    .line 221
    const/4 v0, 0x0

    .line 222
    array-length v7, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v7, :cond_9

    aget v8, v2, v1

    .line 223
    if-ne v3, v8, :cond_c

    .line 224
    const/4 v0, 0x1

    .line 228
    :cond_9
    if-nez v0, :cond_d

    .line 229
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 212
    :cond_a
    if-eqz v2, :cond_8

    :try_start_1
    array-length v7, v2

    if-lez v7, :cond_8

    array-length v7, v3

    array-length v8, v2

    add-int/2addr v7, v8

    new-array v7, v7, [Lbns;

    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v3

    invoke-static {v3, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x0

    array-length v3, v3

    array-length v9, v2

    invoke-static {v2, v8, v7, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v7, v6, Lbnr;->c:[Lbns;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move v3, v0

    goto :goto_2

    .line 218
    :cond_b
    sget-object v0, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v2, v0

    goto :goto_3

    .line 222
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 233
    :cond_d
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v5, v0, :cond_e

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-ne v5, v0, :cond_f

    .line 234
    :cond_e
    iget-object v3, p0, Lbpq;->g:Lbph;

    invoke-virtual {v3}, Lbph;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v0, v3, Lbph;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v5, :cond_12

    iget-object v0, v3, Lbph;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x0

    aget v2, v0, v2

    if-lt v4, v2, :cond_12

    array-length v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    move v0, v2

    :goto_6
    if-gt v4, v0, :cond_11

    iget-object v0, v3, Lbph;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    :goto_7
    if-eqz v0, :cond_f

    .line 236
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v6, v1, v0}, Lbnr;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 240
    :cond_f
    return-object v6

    .line 234
    :cond_10
    const/4 v2, 0x1

    aget v0, v0, v2

    goto :goto_6

    :cond_11
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_12
    const/4 v0, 0x0

    goto :goto_7
.end method

.method a(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x0

    .line 249
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v1, v3, -0x2

    move v2, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_0

    if-le v4, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    add-int/2addr v2, v4

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    if-ltz v3, :cond_3

    if-le v3, v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_4
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    :cond_5
    rem-int/lit8 v1, v2, 0xa

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method a(Lbnz;I)[I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 286
    const/4 v0, 0x0

    sget-object v1, Lbpq;->d:[I

    invoke-static {p1, p2, v0, v1}, Lbpq;->a(Lbnz;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method abstract b()Lcom/google/zxing/BarcodeFormat;
.end method
