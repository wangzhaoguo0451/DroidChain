.class public Lcom/wandoujia/base/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/wandoujia/base/utils/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/wandoujia/base/utils/Base64;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wandoujia/base/utils/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/wandoujia/base/utils/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    new-instance v4, Lcrg;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v4, p3, v0}, Lcrg;-><init>(I[B)V

    .line 156
    iget v0, v4, Lcrg;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_c

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    add-int v5, p2, p1

    iget v2, v4, Lcrg;->c:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v6, v4, Lcrg;->a:[B

    iget-object v7, v4, Lcrg;->d:[I

    move v3, v2

    move v2, p1

    :goto_1
    if-ge v2, v5, :cond_b

    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v8, v2, 0x4

    if-gt v8, v5, :cond_1

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v7, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    shl-int/lit8 v8, v8, 0xc

    or-int/2addr v1, v8

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v1, v8

    add-int/lit8 v8, v2, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    or-int/2addr v1, v8

    if-ltz v1, :cond_1

    add-int/lit8 v8, v0, 0x2

    int-to-byte v9, v1

    aput-byte v9, v6, v8

    add-int/lit8 v8, v0, 0x1

    shr-int/lit8 v9, v1, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    shr-int/lit8 v8, v1, 0x10

    int-to-byte v8, v8

    aput-byte v8, v6, v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    :cond_1
    if-ge v2, v5, :cond_b

    :cond_2
    add-int/lit8 p1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v7, v2

    packed-switch v3, :pswitch_data_0

    :cond_3
    move v2, p1

    goto :goto_1

    :pswitch_0
    if-ltz v2, :cond_4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    move v2, p1

    goto :goto_1

    :cond_4
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcrg;->c:I

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    if-ltz v2, :cond_5

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, p1

    goto :goto_1

    :cond_5
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcrg;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_2
    if-ltz v2, :cond_6

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, p1

    goto/16 :goto_1

    :cond_6
    const/4 v8, -0x2

    if-ne v2, v8, :cond_7

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    const/4 v0, 0x4

    move v3, v0

    move v0, v2

    move v2, p1

    goto/16 :goto_1

    :cond_7
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcrg;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_3
    if-ltz v2, :cond_8

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, v1

    aput-byte v3, v6, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    add-int/lit8 v0, v0, 0x3

    const/4 v2, 0x0

    move v3, v2

    move v2, p1

    goto/16 :goto_1

    :cond_8
    const/4 v8, -0x2

    if-ne v2, v8, :cond_9

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x2

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    add-int/lit8 v0, v0, 0x2

    const/4 v2, 0x5

    move v3, v2

    move v2, p1

    goto/16 :goto_1

    :cond_9
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcrg;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_4
    const/4 v8, -0x2

    if-ne v2, v8, :cond_a

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, p1

    goto/16 :goto_1

    :cond_a
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcrg;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_5
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcrg;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    move v2, v1

    packed-switch v3, :pswitch_data_1

    :goto_3
    :pswitch_6
    iput v3, v4, Lcrg;->c:I

    iput v0, v4, Lcrg;->b:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_7
    const/4 v0, 0x6

    iput v0, v4, Lcrg;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_8
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    move v0, v1

    goto :goto_3

    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v5, v2, 0xa

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    goto :goto_3

    :pswitch_a
    const/4 v0, 0x6

    iput v0, v4, Lcrg;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 161
    :cond_c
    iget v0, v4, Lcrg;->b:I

    iget-object v1, v4, Lcrg;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_d

    .line 162
    iget-object v0, v4, Lcrg;->a:[B

    .line 169
    :goto_4
    return-object v0

    .line 167
    :cond_d
    iget v0, v4, Lcrg;->b:I

    new-array v0, v0, [B

    .line 168
    iget-object v1, v4, Lcrg;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v4, Lcrg;->b:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static decodeFromString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 497
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 498
    new-instance v0, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/wandoujia/base/utils/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decodeFromStringToBytes(Ljava/lang/String;I)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 487
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 488
    invoke-static {v0, p1}, Lcom/wandoujia/base/utils/Base64;->decode([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encode([BI)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 516
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/wandoujia/base/utils/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    new-instance v7, Lcrh;

    invoke-direct {v7, p3}, Lcrh;-><init>(I)V

    .line 537
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 540
    iget-boolean v1, v7, Lcrh;->f:Z

    if-eqz v1, :cond_4

    .line 541
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_0

    .line 542
    add-int/lit8 v0, v0, 0x4

    .line 558
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, v7, Lcrh;->g:Z

    if-eqz v1, :cond_1

    if-lez p2, :cond_1

    .line 559
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v2, v1, 0x1

    iget-boolean v1, v7, Lcrh;->h:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    :goto_1
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 563
    :cond_1
    new-array v1, v0, [B

    iput-object v1, v7, Lcrh;->a:[B

    .line 564
    iget-object v8, v7, Lcrh;->i:[B

    iget-object v9, v7, Lcrh;->a:[B

    const/4 v5, 0x0

    iget v2, v7, Lcrh;->e:I

    add-int v10, p2, p1

    const/4 v1, -0x1

    iget v3, v7, Lcrh;->d:I

    packed-switch v3, :pswitch_data_0

    :cond_2
    move v3, p1

    move v4, v1

    :goto_2
    const/4 v1, -0x1

    if-eq v4, v1, :cond_1a

    const/4 v1, 0x0

    shr-int/lit8 v5, v4, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    const/4 v1, 0x1

    shr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    const/4 v1, 0x2

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    const/4 v5, 0x3

    const/4 v1, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v5

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_19

    iget-boolean v2, v7, Lcrh;->h:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v4, 0xd

    aput-byte v4, v9, v2

    :cond_3
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v9, v1

    const/16 v1, 0x13

    move v6, v1

    :goto_3
    add-int/lit8 v1, v3, 0x3

    if-gt v1, v10, :cond_6

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v8, v2

    aput-byte v2, v9, v5

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v2

    add-int/lit8 v2, v5, 0x2

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v2

    add-int/lit8 v2, v5, 0x3

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v2

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v5, 0x4

    add-int/lit8 v1, v6, -0x1

    if-nez v1, :cond_18

    iget-boolean v1, v7, Lcrh;->h:Z

    if-eqz v1, :cond_17

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v2

    :goto_4
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v9, v1

    const/16 v1, 0x13

    move v6, v1

    goto :goto_3

    .line 545
    :cond_4
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 549
    :pswitch_1
    add-int/lit8 v0, v0, 0x2

    .line 550
    goto/16 :goto_0

    .line 552
    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 559
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_1

    :pswitch_3
    move v3, p1

    move v4, v1

    .line 564
    goto/16 :goto_2

    :pswitch_4
    add-int/lit8 v3, p1, 0x2

    if-gt v3, v10, :cond_2

    iget-object v1, v7, Lcrh;->c:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    add-int/lit8 p1, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    const/4 v3, 0x0

    iput v3, v7, Lcrh;->d:I

    move v3, p1

    move v4, v1

    goto/16 :goto_2

    :pswitch_5
    add-int/lit8 v3, p1, 0x1

    if-gt v3, v10, :cond_2

    iget-object v1, v7, Lcrh;->c:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget-object v3, v7, Lcrh;->c:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    const/4 v4, 0x0

    iput v4, v7, Lcrh;->d:I

    move v4, v1

    goto/16 :goto_2

    :cond_6
    iget v1, v7, Lcrh;->d:I

    sub-int v1, v3, v1

    add-int/lit8 v2, v10, -0x1

    if-ne v1, v2, :cond_c

    const/4 v2, 0x0

    iget v1, v7, Lcrh;->d:I

    if-lez v1, :cond_b

    iget-object v1, v7, Lcrh;->c:[B

    const/4 v4, 0x0

    const/4 v2, 0x1

    aget-byte v1, v1, v4

    :goto_5
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x4

    iget v1, v7, Lcrh;->d:I

    sub-int/2addr v1, v2

    iput v1, v7, Lcrh;->d:I

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v1, v4, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v5

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v2

    iget-boolean v2, v7, Lcrh;->f:Z

    if-eqz v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v2

    :cond_7
    iget-boolean v2, v7, Lcrh;->g:Z

    if-eqz v2, :cond_9

    iget-boolean v2, v7, Lcrh;->h:Z

    if-eqz v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v1

    move v1, v2

    :cond_8
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xa

    aput-byte v4, v9, v1

    move v1, v2

    :cond_9
    move v5, v1

    :cond_a
    :goto_6
    sget-boolean v1, Lcrh;->j:Z

    if-nez v1, :cond_12

    iget v1, v7, Lcrh;->d:I

    if-eqz v1, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    add-int/lit8 v4, v3, 0x1

    aget-byte v1, p0, v3

    move v3, v4

    goto :goto_5

    :cond_c
    iget v1, v7, Lcrh;->d:I

    sub-int v1, v3, v1

    add-int/lit8 v2, v10, -0x2

    if-ne v1, v2, :cond_11

    const/4 v2, 0x0

    iget v1, v7, Lcrh;->d:I

    const/4 v4, 0x1

    if-le v1, v4, :cond_f

    iget-object v1, v7, Lcrh;->c:[B

    const/4 v4, 0x0

    const/4 v2, 0x1

    aget-byte v1, v1, v4

    :goto_7
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v11, v1, 0xa

    iget v1, v7, Lcrh;->d:I

    if-lez v1, :cond_10

    iget-object v1, v7, Lcrh;->c:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v1, v1, v2

    move v2, v4

    :goto_8
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v11

    iget v4, v7, Lcrh;->d:I

    sub-int v2, v4, v2

    iput v2, v7, Lcrh;->d:I

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v5

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v2

    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v4

    iget-boolean v1, v7, Lcrh;->f:Z

    if-eqz v1, :cond_16

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v2

    :goto_9
    iget-boolean v2, v7, Lcrh;->g:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v7, Lcrh;->h:Z

    if-eqz v2, :cond_d

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v1

    move v1, v2

    :cond_d
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xa

    aput-byte v4, v9, v1

    move v1, v2

    :cond_e
    move v5, v1

    goto :goto_6

    :cond_f
    add-int/lit8 v4, v3, 0x1

    aget-byte v1, p0, v3

    move v3, v4

    goto :goto_7

    :cond_10
    add-int/lit8 v4, v3, 0x1

    aget-byte v1, p0, v3

    move v3, v4

    goto :goto_8

    :cond_11
    iget-boolean v1, v7, Lcrh;->g:Z

    if-eqz v1, :cond_a

    if-lez v5, :cond_a

    const/16 v1, 0x13

    if-eq v6, v1, :cond_a

    iget-boolean v1, v7, Lcrh;->h:Z

    if-eqz v1, :cond_15

    add-int/lit8 v1, v5, 0x1

    const/16 v2, 0xd

    aput-byte v2, v9, v5

    :goto_a
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v9, v1

    goto/16 :goto_6

    :cond_12
    sget-boolean v1, Lcrh;->j:Z

    if-nez v1, :cond_13

    if-eq v3, v10, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    iput v5, v7, Lcrh;->b:I

    iput v6, v7, Lcrh;->e:I

    .line 566
    sget-boolean v1, Lcom/wandoujia/base/utils/Base64;->$assertionsDisabled:Z

    if-nez v1, :cond_14

    iget v1, v7, Lcrh;->b:I

    if-eq v1, v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 568
    :cond_14
    iget-object v0, v7, Lcrh;->a:[B

    return-object v0

    :cond_15
    move v1, v5

    goto :goto_a

    :cond_16
    move v1, v2

    goto :goto_9

    :cond_17
    move v1, v2

    goto/16 :goto_4

    :cond_18
    move v6, v1

    move v5, v2

    goto/16 :goto_3

    :cond_19
    move v6, v2

    move v5, v1

    goto/16 :goto_3

    :cond_1a
    move v6, v2

    goto/16 :goto_3

    .line 564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 545
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 454
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 455
    :catch_0
    move-exception v0

    .line 457
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/wandoujia/base/utils/Base64;->encode([BIII)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 479
    :catch_0
    move-exception v0

    .line 481
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
