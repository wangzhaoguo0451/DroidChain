.class public final Lbrx;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lbon;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lbon;

    sget-object v1, Lbol;->e:Lbol;

    invoke-direct {v0, v1}, Lbon;-><init>(Lbol;)V

    iput-object v0, p0, Lbrx;->a:Lbon;

    .line 42
    return-void
.end method

.method private a(Lbrl;Ljava/util/Map;)Lboc;
    .locals 18
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrl;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lboc;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual/range {p1 .. p1}, Lbrl;->b()Lbsa;

    move-result-object v10

    .line 146
    invoke-virtual/range {p1 .. p1}, Lbrl;->a()Lbry;

    move-result-object v1

    iget-object v11, v1, Lbry;->a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 149
    invoke-virtual/range {p1 .. p1}, Lbrl;->a()Lbry;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lbrl;->b()Lbsa;

    move-result-object v12

    iget-byte v1, v1, Lbry;->b:B

    invoke-static {v1}, Lbrn;->a(I)Lbrn;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lbrl;->a:Lboa;

    iget v13, v2, Lboa;->b:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lbrl;->a:Lboa;

    invoke-virtual {v1, v2, v13}, Lbrn;->a(Lboa;I)V

    invoke-virtual {v12}, Lbsa;->a()I

    move-result v3

    new-instance v14, Lboa;

    invoke-direct {v14, v3}, Lboa;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x9

    const/16 v5, 0x9

    invoke-virtual {v14, v1, v2, v4, v5}, Lboa;->a(IIII)V

    add-int/lit8 v1, v3, -0x8

    const/4 v2, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x9

    invoke-virtual {v14, v1, v2, v4, v5}, Lboa;->a(IIII)V

    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x8

    const/16 v4, 0x9

    const/16 v5, 0x8

    invoke-virtual {v14, v1, v2, v4, v5}, Lboa;->a(IIII)V

    iget-object v1, v12, Lbsa;->b:[I

    array-length v4, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    iget-object v1, v12, Lbsa;->b:[I

    aget v1, v1, v2

    add-int/lit8 v5, v1, -0x2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    add-int/lit8 v6, v4, -0x1

    if-eq v1, v6, :cond_2

    :cond_0
    add-int/lit8 v6, v4, -0x1

    if-ne v2, v6, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v6, v12, Lbsa;->b:[I

    aget v6, v6, v1

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-virtual {v14, v6, v5, v7, v8}, Lboa;->a(IIII)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    const/16 v2, 0x9

    const/4 v4, 0x1

    add-int/lit8 v5, v3, -0x11

    invoke-virtual {v14, v1, v2, v4, v5}, Lboa;->a(IIII)V

    const/16 v1, 0x9

    const/4 v2, 0x6

    add-int/lit8 v4, v3, -0x11

    const/4 v5, 0x1

    invoke-virtual {v14, v1, v2, v4, v5}, Lboa;->a(IIII)V

    iget v1, v12, Lbsa;->a:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_5

    add-int/lit8 v1, v3, -0xb

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x6

    invoke-virtual {v14, v1, v2, v4, v5}, Lboa;->a(IIII)V

    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0xb

    const/4 v3, 0x6

    const/4 v4, 0x3

    invoke-virtual {v14, v1, v2, v3, v4}, Lboa;->a(IIII)V

    :cond_5
    const/4 v2, 0x1

    iget v1, v12, Lbsa;->d:I

    new-array v15, v1, [B

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    add-int/lit8 v1, v13, -0x1

    move v9, v2

    :goto_2
    if-lez v1, :cond_b

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    add-int/lit8 v1, v1, -0x1

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v13, :cond_a

    if-eqz v9, :cond_8

    add-int/lit8 v2, v13, -0x1

    sub-int/2addr v2, v3

    :goto_4
    const/4 v4, 0x0

    move v8, v4

    move v4, v5

    move v5, v6

    :goto_5
    const/4 v6, 0x2

    if-ge v8, v6, :cond_9

    sub-int v6, v1, v8

    invoke-virtual {v14, v6, v2}, Lboa;->a(II)Z

    move-result v6

    if-nez v6, :cond_1b

    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lbrl;->a:Lboa;

    sub-int v16, v1, v8

    move/from16 v0, v16

    invoke-virtual {v6, v0, v2}, Lboa;->a(II)Z

    move-result v6

    if-eqz v6, :cond_7

    or-int/lit8 v5, v5, 0x1

    :cond_7
    const/16 v6, 0x8

    if-ne v4, v6, :cond_1b

    add-int/lit8 v6, v7, 0x1

    int-to-byte v4, v5

    aput-byte v4, v15, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move v7, v6

    goto :goto_5

    :cond_8
    move v2, v3

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    move v5, v4

    goto :goto_3

    :cond_a
    xor-int/lit8 v2, v9, 0x1

    add-int/lit8 v1, v1, -0x2

    move v9, v2

    goto :goto_2

    :cond_b
    iget v1, v12, Lbsa;->d:I

    if-eq v7, v1, :cond_c

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 151
    :cond_c
    array-length v1, v15

    iget v2, v10, Lbsa;->d:I

    if-eq v1, v2, :cond_d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_d
    iget-object v1, v10, Lbsa;->c:[Lbsc;

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v2

    aget-object v5, v1, v2

    const/4 v2, 0x0

    iget-object v6, v5, Lbsc;->b:[Lbsb;

    array-length v3, v6

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_e

    aget-object v4, v6, v1

    iget v4, v4, Lbsb;->a:I

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    new-array v8, v2, [Lbrm;

    const/4 v2, 0x0

    array-length v7, v6

    const/4 v1, 0x0

    move v4, v1

    :goto_8
    if-ge v4, v7, :cond_10

    aget-object v9, v6, v4

    const/4 v1, 0x0

    :goto_9
    iget v3, v9, Lbsb;->a:I

    if-ge v1, v3, :cond_f

    iget v12, v9, Lbsb;->b:I

    iget v3, v5, Lbsc;->a:I

    add-int v13, v3, v12

    add-int/lit8 v3, v2, 0x1

    new-instance v14, Lbrm;

    new-array v13, v13, [B

    invoke-direct {v14, v12, v13}, Lbrm;-><init>(I[B)V

    aput-object v14, v8, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_9

    :cond_f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    aget-object v1, v8, v1

    iget-object v1, v1, Lbrm;->b:[B

    array-length v3, v1

    array-length v1, v8

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_11

    aget-object v4, v8, v1

    iget-object v4, v4, Lbrm;->b:[B

    array-length v4, v4

    if-eq v4, v3, :cond_11

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_11
    add-int/lit8 v7, v1, 0x1

    iget v1, v5, Lbsc;->a:I

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v6, v1

    move v1, v4

    :goto_b
    if-ge v6, v3, :cond_13

    const/4 v4, 0x0

    move/from16 v17, v4

    move v4, v1

    move/from16 v1, v17

    :goto_c
    if-ge v1, v2, :cond_12

    aget-object v5, v8, v1

    iget-object v9, v5, Lbrm;->b:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v15, v4

    aput-byte v4, v9, v6

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_c

    :cond_12
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v4

    goto :goto_b

    :cond_13
    move v4, v7

    :goto_d
    if-ge v4, v2, :cond_14

    aget-object v5, v8, v4

    iget-object v6, v5, Lbrm;->b:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v15, v1

    aput-byte v1, v6, v3

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v5

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    aget-object v4, v8, v4

    iget-object v4, v4, Lbrm;->b:[B

    array-length v9, v4

    :goto_e
    if-ge v3, v9, :cond_17

    const/4 v4, 0x0

    move v5, v4

    move v4, v1

    :goto_f
    if-ge v5, v2, :cond_16

    if-ge v5, v7, :cond_15

    move v1, v3

    :goto_10
    aget-object v6, v8, v5

    iget-object v12, v6, Lbrm;->b:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v15, v4

    aput-byte v4, v12, v1

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v6

    goto :goto_f

    :cond_15
    add-int/lit8 v1, v3, 0x1

    goto :goto_10

    :cond_16
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_e

    .line 154
    :cond_17
    const/4 v2, 0x0

    .line 155
    array-length v3, v8

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v3, :cond_18

    aget-object v4, v8, v1

    .line 156
    iget v4, v4, Lbrm;->a:I

    add-int/2addr v2, v4

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 158
    :cond_18
    new-array v5, v2, [B

    .line 159
    const/4 v2, 0x0

    .line 162
    array-length v6, v8

    const/4 v1, 0x0

    move v4, v1

    :goto_12
    if-ge v4, v6, :cond_1a

    aget-object v1, v8, v4

    .line 163
    iget-object v7, v1, Lbrm;->b:[B

    .line 164
    iget v9, v1, Lbrm;->a:I

    .line 165
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lbrx;->a([BI)V

    .line 166
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v9, :cond_19

    .line 167
    add-int/lit8 v3, v2, 0x1

    aget-byte v12, v7, v1

    aput-byte v12, v5, v2

    .line 166
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_13

    .line 162
    :cond_19
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_12

    .line 172
    :cond_1a
    move-object/from16 v0, p2

    invoke-static {v5, v10, v11, v0}, Lbrw;->a([BLbsa;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lboc;

    move-result-object v1

    return-object v1

    :cond_1b
    move v6, v7

    goto/16 :goto_6
.end method

.method private a([BI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 184
    array-length v2, p1

    .line 186
    new-array v3, v2, [I

    move v1, v0

    .line 187
    :goto_0
    if-ge v1, v2, :cond_0

    .line 188
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 192
    :try_start_0
    iget-object v2, p0, Lbrx;->a:Lbon;

    invoke-virtual {v2, v3, v1}, Lbon;->a([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_1
    if-ge v0, p2, :cond_1

    .line 199
    aget v1, v3, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 201
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lboa;Ljava/util/Map;)Lboc;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lboa;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lboc;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    new-instance v4, Lbrl;

    invoke-direct {v4, p1}, Lbrl;-><init>(Lboa;)V

    .line 93
    :try_start_0
    invoke-direct {p0, v4, p2}, Lbrx;->a(Lbrl;Ljava/util/Map;)Lboc;
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v1

    .line 103
    :goto_1
    :try_start_1
    iget-object v0, v4, Lbrl;->c:Lbry;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lbrl;->c:Lbry;

    iget-byte v0, v0, Lbry;->b:B

    invoke-static {v0}, Lbrn;->a(I)Lbrn;

    move-result-object v0

    iget-object v1, v4, Lbrl;->a:Lboa;

    iget v1, v1, Lboa;->b:I

    iget-object v5, v4, Lbrl;->a:Lboa;

    invoke-virtual {v0, v5, v1}, Lbrn;->a(Lboa;I)V

    .line 106
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v4, Lbrl;->b:Lbsa;

    const/4 v0, 0x0

    iput-object v0, v4, Lbrl;->c:Lbry;

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbrl;->d:Z

    .line 109
    invoke-virtual {v4}, Lbrl;->b()Lbsa;

    .line 112
    invoke-virtual {v4}, Lbrl;->a()Lbry;

    .line 121
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, v4, Lbrl;->a:Lboa;

    iget v0, v0, Lboa;->a:I

    if-ge v1, v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_3
    iget-object v5, v4, Lbrl;->a:Lboa;

    iget v5, v5, Lboa;->b:I

    if-ge v0, v5, :cond_2

    iget-object v5, v4, Lbrl;->a:Lboa;

    invoke-virtual {v5, v1, v0}, Lboa;->a(II)Z

    move-result v5

    iget-object v6, v4, Lbrl;->a:Lboa;

    invoke-virtual {v6, v0, v1}, Lboa;->a(II)Z

    move-result v6

    if-eq v5, v6, :cond_1

    iget-object v5, v4, Lbrl;->a:Lboa;

    invoke-virtual {v5, v0, v1}, Lboa;->c(II)V

    iget-object v5, v4, Lbrl;->a:Lboa;

    invoke-virtual {v5, v1, v0}, Lboa;->c(II)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 96
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_1

    .line 121
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 123
    :cond_3
    invoke-direct {p0, v4, p2}, Lbrx;->a(Lbrl;Ljava/util/Map;)Lboc;

    move-result-object v0

    .line 126
    new-instance v1, Lbrz;

    invoke-direct {v1}, Lbrz;-><init>()V

    iput-object v1, v0, Lboc;->e:Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 130
    :catch_2
    move-exception v0

    .line 132
    :goto_4
    if-eqz v3, :cond_4

    .line 133
    throw v3

    .line 135
    :cond_4
    if-eqz v2, :cond_5

    .line 136
    throw v2

    .line 138
    :cond_5
    throw v0

    .line 130
    :catch_3
    move-exception v0

    goto :goto_4
.end method
