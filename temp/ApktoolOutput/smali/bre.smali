.class public final Lbre;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final a:Lbrf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lbrf;

    invoke-direct {v0}, Lbrf;-><init>()V

    sput-object v0, Lbre;->a:Lbrf;

    return-void
.end method

.method private static a(I[I[I[I[[I)Lboc;
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    move-object/from16 v0, p3

    array-length v1, v0

    new-array v9, v1, [I

    .line 301
    const/16 v1, 0x64

    .line 302
    :goto_0
    add-int/lit8 v8, v1, -0x1

    if-lez v1, :cond_1b

    .line 303
    const/4 v1, 0x0

    :goto_1
    array-length v2, v9

    if-ge v1, v2, :cond_0

    .line 304
    aget v2, p3, v1

    aget-object v3, p4, v1

    aget v4, v9, v1

    aget v3, v3, v4

    aput v3, p1, v2

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :catch_0
    move-exception v1

    array-length v1, v9

    if-nez v1, :cond_17

    .line 312
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    .line 307
    :cond_1
    const/4 v1, 0x1

    add-int/lit8 v2, p0, 0x1

    shl-int v7, v1, v2

    if-eqz p2, :cond_2

    :try_start_1
    move-object/from16 v0, p2

    array-length v1, v0

    div-int/lit8 v2, v7, 0x2

    add-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_3

    :cond_2
    if-ltz v7, :cond_3

    const/16 v1, 0x200

    if-le v7, v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    :cond_4
    sget-object v10, Lbre;->a:Lbrf;

    new-instance v3, Lbrh;

    iget-object v1, v10, Lbrf;->a:Lbrg;

    move-object/from16 v0, p1

    invoke-direct {v3, v1, v0}, Lbrh;-><init>(Lbrg;[I)V

    new-array v4, v7, [I

    const/4 v1, 0x0

    move v2, v7

    :goto_2
    if-lez v2, :cond_6

    iget-object v5, v10, Lbrf;->a:Lbrg;

    iget-object v5, v5, Lbrg;->b:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Lbrh;->b(I)I

    move-result v5

    sub-int v6, v7, v2

    aput v5, v4, v6

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    const/4 v1, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_13

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_7
    iget-object v1, v10, Lbrf;->a:Lbrg;

    iget-object v1, v1, Lbrg;->e:Lbrh;

    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_8

    aget v5, p2, v2

    iget-object v6, v10, Lbrf;->a:Lbrg;

    move-object/from16 v0, p1

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    sub-int v5, v11, v5

    iget-object v6, v6, Lbrg;->b:[I

    aget v5, v6, v5

    new-instance v6, Lbrh;

    iget-object v11, v10, Lbrf;->a:Lbrg;

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14, v5}, Lbrg;->b(II)I

    move-result v5

    aput v5, v12, v13

    const/4 v5, 0x1

    const/4 v13, 0x1

    aput v13, v12, v5

    invoke-direct {v6, v11, v12}, Lbrh;-><init>(Lbrg;[I)V

    invoke-virtual {v1, v6}, Lbrh;->c(Lbrh;)Lbrh;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    new-instance v2, Lbrh;

    iget-object v1, v10, Lbrf;->a:Lbrg;

    invoke-direct {v2, v1, v4}, Lbrh;-><init>(Lbrg;[I)V

    iget-object v1, v10, Lbrf;->a:Lbrg;

    const/4 v3, 0x1

    invoke-virtual {v1, v7, v3}, Lbrg;->a(II)Lbrh;

    move-result-object v1

    iget-object v3, v1, Lbrh;->b:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v2, Lbrh;->b:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1c

    move-object v4, v1

    :goto_5
    iget-object v1, v10, Lbrf;->a:Lbrg;

    iget-object v3, v1, Lbrg;->d:Lbrh;

    iget-object v1, v10, Lbrf;->a:Lbrg;

    iget-object v1, v1, Lbrg;->e:Lbrh;

    move-object/from16 v17, v3

    move-object v3, v4

    move-object/from16 v4, v17

    :goto_6
    iget-object v5, v3, Lbrh;->b:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v6, v7, 0x2

    if-lt v5, v6, :cond_e

    invoke-virtual {v3}, Lbrh;->a()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    :cond_9
    iget-object v5, v10, Lbrf;->a:Lbrg;

    iget-object v5, v5, Lbrg;->d:Lbrh;

    iget-object v6, v3, Lbrh;->b:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Lbrh;->a(I)I

    move-result v6

    iget-object v11, v10, Lbrf;->a:Lbrg;

    invoke-virtual {v11, v6}, Lbrg;->a(I)I

    move-result v11

    move-object/from16 v17, v5

    move-object v5, v2

    move-object/from16 v2, v17

    :goto_7
    iget-object v6, v5, Lbrh;->b:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iget-object v12, v3, Lbrh;->b:[I

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    if-lt v6, v12, :cond_d

    invoke-virtual {v5}, Lbrh;->a()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v5, Lbrh;->b:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iget-object v12, v3, Lbrh;->b:[I

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    sub-int v12, v6, v12

    iget-object v6, v10, Lbrf;->a:Lbrg;

    iget-object v13, v5, Lbrh;->b:[I

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v5, v13}, Lbrh;->a(I)I

    move-result v13

    invoke-virtual {v6, v13, v11}, Lbrg;->c(II)I

    move-result v13

    iget-object v6, v10, Lbrf;->a:Lbrg;

    invoke-virtual {v6, v12, v13}, Lbrg;->a(II)Lbrh;

    move-result-object v6

    invoke-virtual {v2, v6}, Lbrh;->a(Lbrh;)Lbrh;

    move-result-object v6

    if-gez v12, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_a
    if-nez v13, :cond_b

    iget-object v2, v3, Lbrh;->a:Lbrg;

    iget-object v2, v2, Lbrg;->d:Lbrh;

    :goto_8
    invoke-virtual {v5, v2}, Lbrh;->b(Lbrh;)Lbrh;

    move-result-object v5

    move-object v2, v6

    goto :goto_7

    :cond_b
    iget-object v2, v3, Lbrh;->b:[I

    array-length v14, v2

    add-int v2, v14, v12

    new-array v12, v2, [I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v14, :cond_c

    iget-object v15, v3, Lbrh;->a:Lbrg;

    iget-object v0, v3, Lbrh;->b:[I

    move-object/from16 v16, v0

    aget v16, v16, v2

    move/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Lbrg;->c(II)I

    move-result v15

    aput v15, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    new-instance v2, Lbrh;

    iget-object v13, v3, Lbrh;->a:Lbrg;

    invoke-direct {v2, v13, v12}, Lbrh;-><init>(Lbrg;[I)V

    goto :goto_8

    :cond_d
    invoke-virtual {v2, v1}, Lbrh;->c(Lbrh;)Lbrh;

    move-result-object v2

    invoke-virtual {v2, v4}, Lbrh;->b(Lbrh;)Lbrh;

    move-result-object v2

    invoke-virtual {v2}, Lbrh;->b()Lbrh;

    move-result-object v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_6

    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbrh;->a(I)I

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    :cond_f
    iget-object v4, v10, Lbrf;->a:Lbrg;

    invoke-virtual {v4, v2}, Lbrg;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lbrh;->c(I)Lbrh;

    move-result-object v1

    invoke-virtual {v3, v2}, Lbrh;->c(I)Lbrh;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lbrh;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x0

    aget-object v1, v3, v1

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v10, v1}, Lbrf;->a(Lbrh;)[I

    move-result-object v3

    invoke-virtual {v10, v2, v1, v3}, Lbrf;->a(Lbrh;Lbrh;[I)[I

    move-result-object v2

    const/4 v1, 0x0

    :goto_a
    array-length v4, v3

    if-ge v1, v4, :cond_12

    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    iget-object v5, v10, Lbrf;->a:Lbrg;

    aget v6, v3, v1

    if-nez v6, :cond_10

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_10
    iget-object v5, v5, Lbrg;->c:[I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    if-gez v4, :cond_11

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    :cond_11
    aget v5, p1, v4

    aget v6, v2, v1

    invoke-static {v5, v6}, Lbrg;->b(II)I

    move-result v5

    aput v5, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    array-length v1, v3

    goto/16 :goto_3

    :cond_13
    const/4 v2, 0x0

    aget v2, p1, v2

    move-object/from16 v0, p1

    array-length v3, v0

    if-le v2, v3, :cond_14

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_14
    if-nez v2, :cond_15

    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v7, v2, :cond_16

    const/4 v2, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v7

    aput v3, p1, v2

    :cond_15
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([ILjava/lang/String;)Lboc;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-object/from16 v0, p2

    array-length v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    return-object v2

    :cond_16
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
    :try_end_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    :cond_17
    const/4 v1, 0x0

    :goto_b
    array-length v2, v9

    if-ge v1, v2, :cond_1a

    .line 315
    aget v2, v9, v1

    aget-object v3, p4, v1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_18

    .line 316
    aget v2, v9, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v9, v1

    move v1, v8

    .line 317
    goto/16 :goto_0

    .line 319
    :cond_18
    const/4 v2, 0x0

    aput v2, v9, v1

    .line 320
    array-length v2, v9

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_19

    .line 321
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    .line 314
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1a
    move v1, v8

    goto/16 :goto_0

    .line 326
    :cond_1b
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    :cond_1c
    move-object v4, v2

    move-object v2, v1

    goto/16 :goto_5
.end method

.method public static a(Lboa;Lbns;Lbns;Lbns;Lbns;II)Lboc;
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    new-instance v1, Lbqx;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lbqx;-><init>(Lboa;Lbns;Lbns;Lbns;Lbns;)V

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v2, 0x0

    move v12, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v10

    :goto_0
    const/4 v4, 0x2

    if-ge v12, v4, :cond_4f

    .line 63
    if-eqz p1, :cond_4e

    .line 64
    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lbre;->a(Lboa;Lbqx;Lbns;ZII)Lbrc;

    move-result-object v10

    .line 67
    :goto_1
    if-eqz p3, :cond_4d

    .line 68
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lbre;->a(Lboa;Lbqx;Lbns;ZII)Lbrc;

    move-result-object v9

    .line 71
    :goto_2
    if-nez v10, :cond_0

    if-nez v9, :cond_0

    const/4 v1, 0x0

    .line 72
    :goto_3
    if-nez v1, :cond_a

    .line 73
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 71
    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lbrc;->a()Lbqv;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    if-nez v9, :cond_2

    const/4 v1, 0x0

    move-object v11, v1

    :goto_4
    if-nez v11, :cond_7

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v9}, Lbrc;->a()Lbqv;

    move-result-object v1

    move-object v11, v1

    goto :goto_4

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lbrc;->a()Lbqv;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    move-object v11, v1

    goto :goto_4

    :cond_5
    iget v4, v1, Lbqv;->a:I

    iget v5, v3, Lbqv;->a:I

    if-eq v4, v5, :cond_6

    iget v4, v1, Lbqv;->b:I

    iget v5, v3, Lbqv;->b:I

    if-eq v4, v5, :cond_6

    iget v4, v1, Lbqv;->e:I

    iget v3, v3, Lbqv;->e:I

    if-eq v4, v3, :cond_6

    const/4 v1, 0x0

    move-object v11, v1

    goto :goto_4

    :cond_6
    move-object v11, v1

    goto :goto_4

    :cond_7
    invoke-static {v10}, Lbre;->a(Lbrc;)Lbqx;

    move-result-object v6

    invoke-static {v9}, Lbre;->a(Lbrc;)Lbqx;

    move-result-object v1

    if-nez v6, :cond_8

    move-object v3, v1

    :goto_5
    new-instance v1, Lbra;

    invoke-direct {v1, v11, v3}, Lbra;-><init>(Lbqv;Lbqx;)V

    goto :goto_3

    :cond_8
    if-nez v1, :cond_9

    move-object v3, v6

    goto :goto_5

    :cond_9
    new-instance v3, Lbqx;

    iget-object v4, v6, Lbqx;->a:Lboa;

    iget-object v5, v6, Lbqx;->b:Lbns;

    iget-object v6, v6, Lbqx;->c:Lbns;

    iget-object v7, v1, Lbqx;->d:Lbns;

    iget-object v8, v1, Lbqx;->e:Lbns;

    invoke-direct/range {v3 .. v8}, Lbqx;-><init>(Lboa;Lbns;Lbns;Lbns;Lbns;)V

    goto :goto_5

    .line 75
    :cond_a
    if-nez v12, :cond_c

    iget-object v3, v1, Lbra;->c:Lbqx;

    if-eqz v3, :cond_c

    iget-object v3, v1, Lbra;->c:Lbqx;

    iget v3, v3, Lbqx;->h:I

    iget v4, v2, Lbqx;->h:I

    if-lt v3, v4, :cond_b

    iget-object v3, v1, Lbra;->c:Lbqx;

    iget v3, v3, Lbqx;->i:I

    iget v4, v2, Lbqx;->i:I

    if-le v3, v4, :cond_c

    .line 78
    :cond_b
    iget-object v3, v1, Lbra;->c:Lbqx;

    .line 62
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move-object v7, v9

    move-object v2, v3

    move-object v3, v10

    goto/16 :goto_0

    .line 80
    :cond_c
    iput-object v2, v1, Lbra;->c:Lbqx;

    move-object v11, v1

    move-object v3, v10

    move-object v1, v9

    .line 84
    :goto_6
    iget v4, v11, Lbra;->d:I

    add-int/lit8 v16, v4, 0x1

    .line 85
    iget-object v4, v11, Lbra;->b:[Lbrb;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 86
    iget-object v4, v11, Lbra;->b:[Lbrb;

    aput-object v1, v4, v16

    .line 88
    if-eqz v3, :cond_12

    const/4 v6, 0x1

    .line 89
    :goto_7
    const/4 v14, 0x1

    move/from16 v10, p6

    move/from16 v9, p5

    :goto_8
    move/from16 v0, v16

    if-gt v14, v0, :cond_24

    .line 90
    if-eqz v6, :cond_13

    move v12, v14

    .line 91
    :goto_9
    iget-object v1, v11, Lbra;->b:[Lbrb;

    aget-object v1, v1, v12

    if-nez v1, :cond_23

    .line 93
    if-eqz v12, :cond_d

    move/from16 v0, v16

    if-ne v12, v0, :cond_15

    .line 97
    :cond_d
    new-instance v3, Lbrc;

    if-nez v12, :cond_14

    const/4 v1, 0x1

    :goto_a
    invoke-direct {v3, v2, v1}, Lbrc;-><init>(Lbqx;Z)V

    move-object v15, v3

    .line 101
    :goto_b
    iget-object v1, v11, Lbra;->b:[Lbrb;

    aput-object v15, v1, v12

    .line 102
    const/4 v13, -0x1

    .line 105
    iget v8, v2, Lbqx;->h:I

    :goto_c
    iget v1, v2, Lbqx;->i:I

    if-gt v8, v1, :cond_23

    .line 106
    if-eqz v6, :cond_16

    const/4 v1, 0x1

    move v5, v1

    :goto_d
    const/4 v1, 0x0

    sub-int v3, v12, v5

    invoke-static {v11, v3}, Lbre;->a(Lbra;I)Z

    move-result v3

    if-eqz v3, :cond_e

    sub-int v1, v12, v5

    iget-object v3, v11, Lbra;->b:[Lbrb;

    aget-object v1, v3, v1

    invoke-virtual {v1, v8}, Lbrb;->c(I)Lbqy;

    move-result-object v1

    :cond_e
    if-eqz v1, :cond_18

    if-eqz v6, :cond_17

    iget v7, v1, Lbqy;->b:I

    .line 107
    :goto_e
    if-ltz v7, :cond_f

    iget v1, v2, Lbqx;->g:I

    if-le v7, v1, :cond_10

    .line 108
    :cond_f
    const/4 v1, -0x1

    if-eq v13, v1, :cond_11

    move v7, v13

    .line 113
    :cond_10
    iget v4, v2, Lbqx;->f:I

    iget v5, v2, Lbqx;->g:I

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lbre;->a(Lboa;IIZIIII)Lbqy;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_11

    .line 116
    invoke-virtual {v15, v8, v1}, Lbrb;->a(ILbqy;)V

    .line 118
    invoke-virtual {v1}, Lbqy;->c()I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 119
    invoke-virtual {v1}, Lbqy;->c()I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v13, v7

    .line 105
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 88
    :cond_12
    const/4 v6, 0x0

    goto :goto_7

    .line 90
    :cond_13
    sub-int v12, v16, v14

    goto :goto_9

    .line 97
    :cond_14
    const/4 v1, 0x0

    goto :goto_a

    .line 99
    :cond_15
    new-instance v1, Lbrb;

    invoke-direct {v1, v2}, Lbrb;-><init>(Lbqx;)V

    move-object v15, v1

    goto :goto_b

    .line 106
    :cond_16
    const/4 v1, -0x1

    move v5, v1

    goto :goto_d

    :cond_17
    iget v7, v1, Lbqy;->a:I

    goto :goto_e

    :cond_18
    iget-object v1, v11, Lbra;->b:[Lbrb;

    aget-object v1, v1, v12

    invoke-virtual {v1, v8}, Lbrb;->a(I)Lbqy;

    move-result-object v1

    if-eqz v1, :cond_1a

    if-eqz v6, :cond_19

    iget v7, v1, Lbqy;->a:I

    goto :goto_e

    :cond_19
    iget v7, v1, Lbqy;->b:I

    goto :goto_e

    :cond_1a
    sub-int v3, v12, v5

    invoke-static {v11, v3}, Lbre;->a(Lbra;I)Z

    move-result v3

    if-eqz v3, :cond_1b

    sub-int v1, v12, v5

    iget-object v3, v11, Lbra;->b:[Lbrb;

    aget-object v1, v3, v1

    invoke-virtual {v1, v8}, Lbrb;->a(I)Lbqy;

    move-result-object v1

    :cond_1b
    if-eqz v1, :cond_1d

    if-eqz v6, :cond_1c

    iget v7, v1, Lbqy;->b:I

    goto :goto_e

    :cond_1c
    iget v7, v1, Lbqy;->a:I

    goto :goto_e

    :cond_1d
    const/4 v1, 0x0

    move v3, v1

    move v1, v12

    :goto_f
    sub-int v4, v1, v5

    invoke-static {v11, v4}, Lbre;->a(Lbra;I)Z

    move-result v4

    if-eqz v4, :cond_21

    sub-int v4, v1, v5

    iget-object v1, v11, Lbra;->b:[Lbrb;

    aget-object v1, v1, v4

    iget-object v7, v1, Lbrb;->b:[Lbqy;

    array-length v0, v7

    move/from16 v17, v0

    const/4 v1, 0x0

    :goto_10
    move/from16 v0, v17

    if-ge v1, v0, :cond_20

    aget-object v18, v7, v1

    if-eqz v18, :cond_1f

    if-eqz v6, :cond_1e

    move-object/from16 v0, v18

    iget v1, v0, Lbqy;->b:I

    :goto_11
    mul-int/2addr v3, v5

    move-object/from16 v0, v18

    iget v4, v0, Lbqy;->b:I

    move-object/from16 v0, v18

    iget v5, v0, Lbqy;->a:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int v7, v1, v3

    goto/16 :goto_e

    :cond_1e
    move-object/from16 v0, v18

    iget v1, v0, Lbqy;->a:I

    goto :goto_11

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_f

    :cond_21
    if-eqz v6, :cond_22

    iget-object v1, v11, Lbra;->c:Lbqx;

    iget v7, v1, Lbqx;->f:I

    goto/16 :goto_e

    :cond_22
    iget-object v1, v11, Lbra;->c:Lbqx;

    iget v7, v1, Lbqx;->g:I

    goto/16 :goto_e

    .line 89
    :cond_23
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    .line 123
    :cond_24
    iget-object v1, v11, Lbra;->a:Lbqv;

    iget v1, v1, Lbqv;->e:I

    iget v2, v11, Lbra;->d:I

    add-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Lbqw;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lbqw;

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    array-length v2, v1

    if-ge v3, v2, :cond_26

    const/4 v2, 0x0

    :goto_13
    aget-object v4, v1, v3

    array-length v4, v4

    if-ge v2, v4, :cond_25

    aget-object v4, v1, v3

    new-instance v5, Lbqw;

    invoke-direct {v5}, Lbqw;-><init>()V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_25
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_12

    :cond_26
    const/4 v7, 0x0

    iget-object v2, v11, Lbra;->b:[Lbrb;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v11, v2}, Lbra;->a(Lbrb;)V

    iget-object v2, v11, Lbra;->b:[Lbrb;

    iget v3, v11, Lbra;->d:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v11, v2}, Lbra;->a(Lbrb;)V

    const/16 v2, 0x3a0

    move v6, v2

    :goto_14
    iget-object v2, v11, Lbra;->b:[Lbrb;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_27

    iget-object v2, v11, Lbra;->b:[Lbrb;

    iget v3, v11, Lbra;->d:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2b

    :cond_27
    iget-object v2, v11, Lbra;->b:[Lbrb;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_2e

    const/4 v3, 0x0

    :cond_28
    iget-object v2, v11, Lbra;->b:[Lbrb;

    iget v4, v11, Lbra;->d:I

    add-int/lit8 v4, v4, 0x1

    aget-object v2, v2, v4

    if-nez v2, :cond_32

    const/4 v4, 0x0

    :cond_29
    add-int v8, v3, v4

    if-nez v8, :cond_35

    const/4 v2, 0x0

    :goto_15
    if-lez v2, :cond_2a

    if-lt v2, v6, :cond_4b

    :cond_2a
    iget-object v5, v11, Lbra;->b:[Lbrb;

    array-length v6, v5

    const/4 v2, 0x0

    move v3, v7

    :goto_16
    if-ge v2, v6, :cond_41

    aget-object v4, v5, v2

    if-eqz v4, :cond_40

    iget-object v7, v4, Lbrb;->b:[Lbqy;

    array-length v8, v7

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v8, :cond_40

    aget-object v9, v7, v4

    if-eqz v9, :cond_3f

    iget v10, v9, Lbqy;->e:I

    if-ltz v10, :cond_3f

    array-length v12, v1

    if-lt v10, v12, :cond_3e

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_2b
    iget-object v2, v11, Lbra;->b:[Lbrb;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, v2, Lbrb;->b:[Lbqy;

    iget-object v2, v11, Lbra;->b:[Lbrb;

    iget v3, v11, Lbra;->d:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    iget-object v5, v2, Lbrb;->b:[Lbqy;

    const/4 v2, 0x0

    :goto_18
    array-length v3, v4

    if-ge v2, v3, :cond_27

    aget-object v3, v4, v2

    if-eqz v3, :cond_2d

    aget-object v3, v5, v2

    if-eqz v3, :cond_2d

    aget-object v3, v4, v2

    iget v3, v3, Lbqy;->e:I

    aget-object v8, v5, v2

    iget v8, v8, Lbqy;->e:I

    if-ne v3, v8, :cond_2d

    const/4 v3, 0x1

    :goto_19
    iget v8, v11, Lbra;->d:I

    if-gt v3, v8, :cond_2d

    iget-object v8, v11, Lbra;->b:[Lbrb;

    aget-object v8, v8, v3

    iget-object v8, v8, Lbrb;->b:[Lbqy;

    aget-object v8, v8, v2

    if-eqz v8, :cond_2c

    aget-object v9, v4, v2

    iget v9, v9, Lbqy;->e:I

    iput v9, v8, Lbqy;->e:I

    invoke-virtual {v8}, Lbqy;->a()Z

    move-result v8

    if-nez v8, :cond_2c

    iget-object v8, v11, Lbra;->b:[Lbrb;

    aget-object v8, v8, v3

    iget-object v8, v8, Lbrb;->b:[Lbqy;

    const/4 v9, 0x0

    aput-object v9, v8, v2

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2e
    const/4 v3, 0x0

    iget-object v2, v11, Lbra;->b:[Lbrb;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v8, v2, Lbrb;->b:[Lbqy;

    const/4 v2, 0x0

    :goto_1a
    array-length v4, v8

    if-ge v2, v4, :cond_28

    aget-object v4, v8, v2

    if-eqz v4, :cond_31

    aget-object v4, v8, v2

    iget v9, v4, Lbqy;->e:I

    const/4 v5, 0x0

    const/4 v4, 0x1

    move/from16 v19, v4

    move v4, v3

    move/from16 v3, v19

    :goto_1b
    iget v10, v11, Lbra;->d:I

    add-int/lit8 v10, v10, 0x1

    if-ge v3, v10, :cond_30

    const/4 v10, 0x2

    if-ge v5, v10, :cond_30

    iget-object v10, v11, Lbra;->b:[Lbrb;

    aget-object v10, v10, v3

    iget-object v10, v10, Lbrb;->b:[Lbqy;

    aget-object v10, v10, v2

    if-eqz v10, :cond_2f

    invoke-static {v9, v5, v10}, Lbra;->a(IILbqy;)I

    move-result v5

    invoke-virtual {v10}, Lbqy;->a()Z

    move-result v10

    if-nez v10, :cond_2f

    add-int/lit8 v4, v4, 0x1

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_30
    move v3, v4

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_32
    const/4 v4, 0x0

    iget-object v2, v11, Lbra;->b:[Lbrb;

    iget v5, v11, Lbra;->d:I

    add-int/lit8 v5, v5, 0x1

    aget-object v2, v2, v5

    iget-object v9, v2, Lbrb;->b:[Lbqy;

    const/4 v2, 0x0

    :goto_1c
    array-length v5, v9

    if-ge v2, v5, :cond_29

    aget-object v5, v9, v2

    if-eqz v5, :cond_34

    aget-object v5, v9, v2

    iget v10, v5, Lbqy;->e:I

    const/4 v8, 0x0

    iget v5, v11, Lbra;->d:I

    add-int/lit8 v5, v5, 0x1

    move/from16 v19, v5

    move v5, v8

    move/from16 v8, v19

    :goto_1d
    if-lez v8, :cond_34

    const/4 v12, 0x2

    if-ge v5, v12, :cond_34

    iget-object v12, v11, Lbra;->b:[Lbrb;

    aget-object v12, v12, v8

    iget-object v12, v12, Lbrb;->b:[Lbqy;

    aget-object v12, v12, v2

    if-eqz v12, :cond_33

    invoke-static {v10, v5, v12}, Lbra;->a(IILbqy;)I

    move-result v5

    invoke-virtual {v12}, Lbqy;->a()Z

    move-result v12

    if-nez v12, :cond_33

    add-int/lit8 v4, v4, 0x1

    :cond_33
    add-int/lit8 v8, v8, -0x1

    goto :goto_1d

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_35
    const/4 v2, 0x1

    move v5, v2

    :goto_1e
    iget v2, v11, Lbra;->d:I

    add-int/lit8 v2, v2, 0x1

    if-ge v5, v2, :cond_3d

    iget-object v2, v11, Lbra;->b:[Lbrb;

    aget-object v2, v2, v5

    iget-object v9, v2, Lbrb;->b:[Lbqy;

    const/4 v2, 0x0

    move v4, v2

    :goto_1f
    array-length v2, v9

    if-ge v4, v2, :cond_3c

    aget-object v2, v9, v4

    if-eqz v2, :cond_3b

    aget-object v2, v9, v4

    invoke-virtual {v2}, Lbqy;->a()Z

    move-result v2

    if-nez v2, :cond_3b

    aget-object v10, v9, v4

    iget-object v2, v11, Lbra;->b:[Lbrb;

    add-int/lit8 v3, v5, -0x1

    aget-object v2, v2, v3

    iget-object v3, v2, Lbrb;->b:[Lbqy;

    iget-object v2, v11, Lbra;->b:[Lbrb;

    add-int/lit8 v12, v5, 0x1

    aget-object v2, v2, v12

    if-eqz v2, :cond_4c

    iget-object v2, v11, Lbra;->b:[Lbrb;

    add-int/lit8 v12, v5, 0x1

    aget-object v2, v2, v12

    iget-object v2, v2, Lbrb;->b:[Lbqy;

    :goto_20
    const/16 v12, 0xe

    new-array v12, v12, [Lbqy;

    const/4 v13, 0x2

    aget-object v14, v3, v4

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aget-object v14, v2, v4

    aput-object v14, v12, v13

    if-lez v4, :cond_36

    const/4 v13, 0x0

    add-int/lit8 v14, v4, -0x1

    aget-object v14, v9, v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    add-int/lit8 v14, v4, -0x1

    aget-object v14, v3, v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    add-int/lit8 v14, v4, -0x1

    aget-object v14, v2, v14

    aput-object v14, v12, v13

    :cond_36
    const/4 v13, 0x1

    if-le v4, v13, :cond_37

    const/16 v13, 0x8

    add-int/lit8 v14, v4, -0x2

    aget-object v14, v9, v14

    aput-object v14, v12, v13

    const/16 v13, 0xa

    add-int/lit8 v14, v4, -0x2

    aget-object v14, v3, v14

    aput-object v14, v12, v13

    const/16 v13, 0xb

    add-int/lit8 v14, v4, -0x2

    aget-object v14, v2, v14

    aput-object v14, v12, v13

    :cond_37
    array-length v13, v9

    add-int/lit8 v13, v13, -0x1

    if-ge v4, v13, :cond_38

    const/4 v13, 0x1

    add-int/lit8 v14, v4, 0x1

    aget-object v14, v9, v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    add-int/lit8 v14, v4, 0x1

    aget-object v14, v3, v14

    aput-object v14, v12, v13

    const/4 v13, 0x7

    add-int/lit8 v14, v4, 0x1

    aget-object v14, v2, v14

    aput-object v14, v12, v13

    :cond_38
    array-length v13, v9

    add-int/lit8 v13, v13, -0x2

    if-ge v4, v13, :cond_39

    const/16 v13, 0x9

    add-int/lit8 v14, v4, 0x2

    aget-object v14, v9, v14

    aput-object v14, v12, v13

    const/16 v13, 0xc

    add-int/lit8 v14, v4, 0x2

    aget-object v3, v3, v14

    aput-object v3, v12, v13

    const/16 v3, 0xd

    add-int/lit8 v13, v4, 0x2

    aget-object v2, v2, v13

    aput-object v2, v12, v3

    :cond_39
    const/4 v2, 0x0

    :goto_21
    const/16 v3, 0xe

    if-ge v2, v3, :cond_3b

    aget-object v3, v12, v2

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Lbqy;->a()Z

    move-result v13

    if-eqz v13, :cond_3a

    iget v13, v3, Lbqy;->c:I

    iget v14, v10, Lbqy;->c:I

    if-ne v13, v14, :cond_3a

    iget v3, v3, Lbqy;->e:I

    iput v3, v10, Lbqy;->e:I

    const/4 v3, 0x1

    :goto_22
    if-nez v3, :cond_3b

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3a
    const/4 v3, 0x0

    goto :goto_22

    :cond_3b
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1f

    :cond_3c
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1e

    :cond_3d
    move v2, v8

    goto/16 :goto_15

    :cond_3e
    aget-object v10, v1, v10

    aget-object v10, v10, v3

    iget v9, v9, Lbqy;->d:I

    invoke-virtual {v10, v9}, Lbqw;->a(I)V

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_17

    :cond_40
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    :cond_41
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lbqw;->a()[I

    move-result-object v2

    iget v3, v11, Lbra;->d:I

    iget-object v4, v11, Lbra;->a:Lbqv;

    iget v4, v4, Lbqv;->e:I

    mul-int/2addr v3, v4

    iget-object v4, v11, Lbra;->a:Lbqv;

    iget v4, v4, Lbqv;->b:I

    const/4 v5, 0x2

    shl-int v4, v5, v4

    sub-int/2addr v3, v4

    array-length v4, v2

    if-nez v4, :cond_45

    if-lez v3, :cond_42

    const/16 v2, 0x3a0

    if-le v3, v2, :cond_43

    :cond_42
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_43
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lbqw;->a(I)V

    :cond_44
    :goto_23
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v11, Lbra;->a:Lbqv;

    iget v2, v2, Lbqv;->e:I

    iget v3, v11, Lbra;->d:I

    mul-int/2addr v2, v3

    new-array v5, v2, [I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_24
    iget-object v3, v11, Lbra;->a:Lbqv;

    iget v3, v3, Lbqv;->e:I

    if-ge v2, v3, :cond_49

    const/4 v3, 0x0

    :goto_25
    iget v8, v11, Lbra;->d:I

    if-ge v3, v8, :cond_48

    aget-object v8, v1, v2

    add-int/lit8 v9, v3, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lbqw;->a()[I

    move-result-object v8

    iget v9, v11, Lbra;->d:I

    mul-int/2addr v9, v2

    add-int/2addr v9, v3

    array-length v10, v8

    if-nez v10, :cond_46

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_45
    const/4 v4, 0x0

    aget v2, v2, v4

    if-eq v2, v3, :cond_44

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lbqw;->a(I)V

    goto :goto_23

    :cond_46
    array-length v10, v8

    const/4 v12, 0x1

    if-ne v10, v12, :cond_47

    const/4 v10, 0x0

    aget v8, v8, v10

    aput v8, v5, v9

    goto :goto_26

    :cond_47
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_49
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [[I

    const/4 v1, 0x0

    move v2, v1

    :goto_27
    array-length v1, v3

    if-ge v2, v1, :cond_4a

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_27

    :cond_4a
    iget-object v1, v11, Lbra;->a:Lbqv;

    iget v1, v1, Lbqv;->b:I

    invoke-static {v4}, Lbqs;->a(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-static {v7}, Lbqs;->a(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-static {v1, v5, v2, v4, v3}, Lbre;->a(I[I[I[I[[I)Lboc;

    move-result-object v1

    return-object v1

    :cond_4b
    move v6, v2

    goto/16 :goto_14

    :cond_4c
    move-object v2, v3

    goto/16 :goto_20

    :cond_4d
    move-object v9, v7

    goto/16 :goto_2

    :cond_4e
    move-object v10, v3

    goto/16 :goto_1

    :cond_4f
    move-object v11, v1

    move-object v1, v7

    goto/16 :goto_6
.end method

.method private static a(Lbrc;)Lbqx;
    .locals 14
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 143
    if-nez p0, :cond_0

    move-object v0, v5

    .line 172
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lbrc;->a()Lbqv;

    move-result-object v8

    if-nez v8, :cond_1

    move-object v7, v5

    .line 147
    :goto_1
    if-nez v7, :cond_c

    move-object v0, v5

    .line 148
    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lbrb;->a:Lbqx;

    iget-boolean v0, p0, Lbrc;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lbqx;->b:Lbns;

    :goto_2
    iget-boolean v3, p0, Lbrc;->c:Z

    if-eqz v3, :cond_4

    iget-object v1, v1, Lbqx;->c:Lbns;

    :goto_3
    iget v0, v0, Lbns;->b:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lbrc;->b(I)I

    move-result v0

    iget v1, v1, Lbns;->b:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lbrc;->b(I)I

    move-result v9

    iget-object v10, p0, Lbrb;->b:[Lbqy;

    move v1, v2

    move v3, v6

    move v7, v0

    move v0, v4

    :goto_4
    if-ge v7, v9, :cond_8

    aget-object v11, v10, v7

    if-eqz v11, :cond_2

    aget-object v11, v10, v7

    invoke-virtual {v11}, Lbqy;->b()V

    iget v12, v11, Lbqy;->e:I

    sub-int/2addr v12, v3

    if-nez v12, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    iget-object v0, v1, Lbqx;->d:Lbns;

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lbqx;->e:Lbns;

    goto :goto_3

    :cond_5
    if-ne v12, v2, :cond_6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v11, Lbqy;->e:I

    move v3, v1

    move v1, v0

    move v0, v2

    goto :goto_5

    :cond_6
    iget v12, v11, Lbqy;->e:I

    iget v13, v8, Lbqv;->e:I

    if-lt v12, v13, :cond_7

    aput-object v5, v10, v7

    goto :goto_5

    :cond_7
    iget v0, v11, Lbqy;->e:I

    move v3, v0

    move v0, v2

    goto :goto_5

    :cond_8
    iget v0, v8, Lbqv;->e:I

    new-array v0, v0, [I

    iget-object v2, p0, Lbrb;->b:[Lbqy;

    array-length v3, v2

    move v1, v4

    :goto_6
    if-ge v1, v3, :cond_b

    aget-object v7, v2, v1

    if-eqz v7, :cond_a

    iget v7, v7, Lbqy;->e:I

    array-length v8, v0

    if-lt v7, v8, :cond_9

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_9
    aget v8, v0, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v0, v7

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move-object v7, v0

    goto :goto_1

    .line 150
    :cond_c
    array-length v2, v7

    move v0, v4

    move v3, v6

    :goto_7
    if-ge v0, v2, :cond_d

    aget v1, v7, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_7

    .line 152
    :cond_d
    array-length v2, v7

    move v1, v4

    move v0, v4

    :goto_8
    if-ge v1, v2, :cond_e

    aget v5, v7, v1

    .line 153
    sub-int v6, v3, v5

    add-int/2addr v0, v6

    .line 154
    if-gtz v5, :cond_e

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 158
    :cond_e
    iget-object v5, p0, Lbrb;->b:[Lbqy;

    move v2, v0

    move v0, v4

    .line 159
    :goto_9
    if-lez v2, :cond_f

    aget-object v1, v5, v0

    if-nez v1, :cond_f

    .line 160
    add-int/lit8 v1, v2, -0x1

    .line 159
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_9

    .line 163
    :cond_f
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    move v0, v4

    :goto_a
    if-ltz v1, :cond_10

    .line 164
    aget v6, v7, v1

    sub-int v6, v3, v6

    add-int/2addr v0, v6

    .line 165
    aget v6, v7, v1

    if-gtz v6, :cond_10

    .line 166
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 169
    :cond_10
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    move v8, v0

    move v0, v1

    :goto_b
    if-lez v8, :cond_11

    aget-object v1, v5, v0

    if-nez v1, :cond_11

    .line 170
    add-int/lit8 v1, v8, -0x1

    .line 169
    add-int/lit8 v0, v0, -0x1

    move v8, v1

    goto :goto_b

    .line 172
    :cond_11
    iget-object v9, p0, Lbrb;->a:Lbqx;

    iget-boolean v10, p0, Lbrc;->c:Z

    iget-object v3, v9, Lbqx;->b:Lbns;

    iget-object v6, v9, Lbqx;->c:Lbns;

    iget-object v7, v9, Lbqx;->d:Lbns;

    iget-object v5, v9, Lbqx;->e:Lbns;

    if-lez v2, :cond_19

    if-eqz v10, :cond_14

    iget-object v0, v9, Lbqx;->b:Lbns;

    :goto_c
    iget v1, v0, Lbns;->b:F

    float-to-int v1, v1

    sub-int/2addr v1, v2

    if-gez v1, :cond_12

    move v1, v4

    :cond_12
    new-instance v2, Lbns;

    iget v0, v0, Lbns;->a:F

    int-to-float v1, v1

    invoke-direct {v2, v0, v1}, Lbns;-><init>(FF)V

    if-eqz v10, :cond_15

    move-object v4, v7

    :goto_d
    if-lez v8, :cond_18

    if-eqz v10, :cond_16

    iget-object v0, v9, Lbqx;->c:Lbns;

    :goto_e
    iget v1, v0, Lbns;->b:F

    float-to-int v1, v1

    add-int/2addr v1, v8

    iget-object v3, v9, Lbqx;->a:Lboa;

    iget v3, v3, Lboa;->b:I

    if-lt v1, v3, :cond_13

    iget-object v1, v9, Lbqx;->a:Lboa;

    iget v1, v1, Lboa;->b:I

    add-int/lit8 v1, v1, -0x1

    :cond_13
    new-instance v3, Lbns;

    iget v0, v0, Lbns;->a:F

    int-to-float v1, v1

    invoke-direct {v3, v0, v1}, Lbns;-><init>(FF)V

    if-eqz v10, :cond_17

    :goto_f
    invoke-virtual {v9}, Lbqx;->a()V

    new-instance v0, Lbqx;

    iget-object v1, v9, Lbqx;->a:Lboa;

    invoke-direct/range {v0 .. v5}, Lbqx;-><init>(Lboa;Lbns;Lbns;Lbns;Lbns;)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, v9, Lbqx;->d:Lbns;

    goto :goto_c

    :cond_15
    move-object v4, v2

    move-object v2, v3

    goto :goto_d

    :cond_16
    iget-object v0, v9, Lbqx;->e:Lbns;

    goto :goto_e

    :cond_17
    move-object v5, v3

    move-object v3, v6

    goto :goto_f

    :cond_18
    move-object v3, v6

    goto :goto_f

    :cond_19
    move-object v2, v3

    move-object v4, v7

    goto :goto_d
.end method

.method private static a(Lboa;IIZIIII)Lbqy;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    if-eqz p3, :cond_4

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v0

    move v4, p3

    move v0, p4

    :goto_1
    const/4 v1, 0x2

    if-ge v2, v1, :cond_8

    move v1, v0

    :goto_2
    if-eqz v4, :cond_0

    if-ge v1, p1, :cond_1

    :cond_0
    if-nez v4, :cond_6

    if-ge v1, p2, :cond_6

    :cond_1
    invoke-virtual {p0, v1, p5}, Lboa;->a(II)Z

    move-result v0

    if-ne v4, v0, :cond_6

    sub-int v0, p4, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v5, 0x2

    if-le v0, v5, :cond_5

    .line 414
    :goto_3
    const/16 v0, 0x8

    new-array v2, v0, [I

    const/4 v1, 0x0

    if-eqz p3, :cond_9

    const/4 v0, 0x1

    :goto_4
    move v4, p4

    move v5, p3

    :goto_5
    if-eqz p3, :cond_2

    if-lt v4, p2, :cond_3

    :cond_2
    if-nez p3, :cond_c

    if-lt v4, p1, :cond_c

    :cond_3
    const/16 v3, 0x8

    if-ge v1, v3, :cond_c

    invoke-virtual {p0, v4, p5}, Lboa;->a(II)Z

    move-result v3

    if-ne v3, v5, :cond_a

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    add-int v3, v4, v0

    move v4, v3

    goto :goto_5

    .line 409
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    add-int v0, v1, v3

    move v1, v0

    goto :goto_2

    :cond_6
    neg-int v3, v3

    if-nez v4, :cond_7

    const/4 v0, 0x1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    move v0, v1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    move p4, v0

    goto :goto_3

    .line 414
    :cond_9
    const/4 v0, -0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v1, 0x1

    if-nez v5, :cond_b

    const/4 v1, 0x1

    :goto_7
    move v5, v1

    move v1, v3

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    :cond_c
    const/16 v0, 0x8

    if-eq v1, v0, :cond_f

    if-eqz p3, :cond_d

    if-eq v4, p2, :cond_e

    :cond_d
    if-nez p3, :cond_10

    if-ne v4, p1, :cond_10

    :cond_e
    const/4 v0, 0x7

    if-ne v1, v0, :cond_10

    .line 415
    :cond_f
    :goto_8
    if-nez v2, :cond_11

    .line 416
    const/4 v0, 0x0

    .line 456
    :goto_9
    return-object v0

    .line 414
    :cond_10
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_8

    .line 419
    :cond_11
    invoke-static {v2}, Lbqs;->a([I)I

    move-result v3

    .line 420
    if-eqz p3, :cond_12

    .line 421
    add-int v0, p4, v3

    move v1, v0

    .line 445
    :goto_a
    add-int/lit8 v0, p6, -0x2

    if-gt v0, v3, :cond_14

    add-int/lit8 v0, p7, 0x2

    if-gt v3, v0, :cond_14

    const/4 v0, 0x1

    :goto_b
    if-nez v0, :cond_15

    .line 448
    const/4 v0, 0x0

    goto :goto_9

    .line 423
    :cond_12
    const/4 v0, 0x0

    :goto_c
    array-length v1, v2

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_13

    .line 424
    aget v1, v2, v0

    .line 425
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aget v4, v2, v4

    aput v4, v2, v0

    .line 426
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aput v1, v2, v4

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 429
    :cond_13
    sub-int v0, p4, v3

    move v1, p4

    move p4, v0

    goto :goto_a

    .line 445
    :cond_14
    const/4 v0, 0x0

    goto :goto_b

    .line 451
    :cond_15
    invoke-static {v2}, Lbrd;->a([I)I

    move-result v2

    .line 452
    invoke-static {v2}, Lbqs;->a(I)I

    move-result v3

    .line 453
    const/4 v0, -0x1

    if-ne v3, v0, :cond_16

    .line 454
    const/4 v0, 0x0

    goto :goto_9

    .line 456
    :cond_16
    new-instance v0, Lbqy;

    invoke-static {v2}, Lbre;->a(I)[I

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    sub-int/2addr v4, v5

    const/4 v5, 0x4

    aget v5, v2, v5

    add-int/2addr v4, v5

    const/4 v5, 0x6

    aget v2, v2, v5

    sub-int v2, v4, v2

    add-int/lit8 v2, v2, 0x9

    rem-int/lit8 v2, v2, 0x9

    invoke-direct {v0, p4, v1, v2, v3}, Lbqy;-><init>(IIII)V

    goto :goto_9
.end method

.method private static a(Lboa;Lbqx;Lbns;ZII)Lbrc;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    new-instance v10, Lbrc;

    invoke-direct {v10, p1, p3}, Lbrc;-><init>(Lbqx;Z)V

    .line 213
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v9, v0, :cond_4

    .line 214
    if-nez v9, :cond_1

    const/4 v0, 0x1

    move v8, v0

    .line 215
    :goto_1
    iget v0, p2, Lbns;->a:F

    float-to-int v4, v0

    .line 216
    iget v0, p2, Lbns;->b:F

    float-to-int v5, v0

    :goto_2
    iget v0, p1, Lbqx;->i:I

    if-gt v5, v0, :cond_3

    iget v0, p1, Lbqx;->h:I

    if-lt v5, v0, :cond_3

    .line 218
    const/4 v1, 0x0

    iget v2, p0, Lboa;->a:I

    move-object v0, p0

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lbre;->a(Lboa;IIZIIII)Lbqy;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v10, v5, v0}, Lbrc;->a(ILbqy;)V

    .line 222
    if-eqz p3, :cond_2

    .line 223
    iget v4, v0, Lbqy;->a:I

    .line 217
    :cond_0
    :goto_3
    add-int/2addr v5, v8

    goto :goto_2

    .line 214
    :cond_1
    const/4 v0, -0x1

    move v8, v0

    goto :goto_1

    .line 225
    :cond_2
    iget v4, v0, Lbqy;->b:I

    goto :goto_3

    .line 213
    :cond_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 230
    :cond_4
    return-object v10
.end method

.method private static a(Lbra;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 359
    if-ltz p1, :cond_0

    iget v0, p0, Lbra;->d:I

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(I)[I
    .locals 4
    .parameter

    .prologue
    .line 583
    const/16 v0, 0x8

    new-array v2, v0, [I

    .line 584
    const/4 v1, 0x0

    .line 585
    const/4 v0, 0x7

    .line 587
    :goto_0
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_0

    .line 588
    and-int/lit8 v1, p0, 0x1

    .line 589
    add-int/lit8 v0, v0, -0x1

    .line 590
    if-ltz v0, :cond_1

    .line 591
    :cond_0
    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 595
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 597
    :cond_1
    return-object v2
.end method
