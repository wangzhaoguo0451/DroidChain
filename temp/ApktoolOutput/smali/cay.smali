.class public final Lcay;
.super Ljava/lang/Object;
.source "Stringer.java"


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcay;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const/4 v5, -0x1

    const/16 v11, 0x3d

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 47
    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    if-lez v3, :cond_0

    .line 48
    add-int/lit8 v0, v0, 0x4

    .line 50
    :cond_0
    new-instance v7, Lcba;

    new-array v0, v0, [B

    invoke-direct {v7, v0}, Lcba;-><init>([B)V

    .line 51
    array-length v0, p0

    sget-object v8, Lcba;->a:[B

    iget-object v9, v7, Lcba;->b:[B

    add-int/lit8 v10, v0, 0x0

    iget v0, v7, Lcba;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tailLen = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v7, Lcba;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    move v4, v5

    move v3, v2

    :goto_0
    if-eq v4, v5, :cond_7

    shr-int/lit8 v0, v4, 0x12

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v8, v0

    aput-byte v0, v9, v2

    shr-int/lit8 v0, v4, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v8, v0

    aput-byte v0, v9, v1

    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v8, v0

    aput-byte v0, v9, v6

    const/4 v5, 0x3

    const/4 v0, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v5

    move v4, v0

    :goto_1
    add-int/lit8 v0, v3, 0x3

    if-gt v0, v10, :cond_1

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v4

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v8, v6

    aput-byte v6, v9, v5

    add-int/lit8 v5, v4, 0x2

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v8, v6

    aput-byte v6, v9, v5

    add-int/lit8 v5, v4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v8, v0

    aput-byte v0, v9, v5

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v0, v4, 0x4

    move v4, v0

    goto :goto_1

    :pswitch_1
    if-gt v6, v10, :cond_8

    iget-object v0, v7, Lcba;->c:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iput v2, v7, Lcba;->d:I

    move v4, v0

    move v3, v6

    goto/16 :goto_0

    :pswitch_2
    if-lez v10, :cond_8

    iget-object v0, v7, Lcba;->c:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v3, v7, Lcba;->c:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iput v2, v7, Lcba;->d:I

    move v4, v0

    move v3, v1

    goto/16 :goto_0

    :cond_1
    iget v0, v7, Lcba;->d:I

    sub-int v0, v3, v0

    add-int/lit8 v5, v10, -0x1

    if-ne v0, v5, :cond_4

    iget v0, v7, Lcba;->d:I

    if-lez v0, :cond_3

    iget-object v0, v7, Lcba;->c:[B

    aget-byte v0, v0, v2

    :goto_2
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    iget v2, v7, Lcba;->d:I

    sub-int v1, v2, v1

    iput v1, v7, Lcba;->d:I

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v8, v2

    aput-byte v2, v9, v4

    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v8, v0

    aput-byte v0, v9, v1

    add-int/lit8 v0, v2, 0x1

    aput-byte v11, v9, v2

    aput-byte v11, v9, v0

    .line 53
    :cond_2
    :goto_3
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {v7}, Lcba;->a(Lcba;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_4
    return-object v0

    .line 51
    :cond_3
    aget-byte v0, p0, v3

    move v1, v2

    goto :goto_2

    :cond_4
    iget v0, v7, Lcba;->d:I

    sub-int v0, v3, v0

    add-int/lit8 v5, v10, -0x2

    if-ne v0, v5, :cond_2

    iget v0, v7, Lcba;->d:I

    if-le v0, v1, :cond_5

    iget-object v0, v7, Lcba;->c:[B

    aget-byte v0, v0, v2

    move v2, v1

    move v1, v3

    :goto_5
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0xa

    iget v0, v7, Lcba;->d:I

    if-lez v0, :cond_6

    iget-object v0, v7, Lcba;->c:[B

    add-int/lit8 v1, v2, 0x1

    aget-byte v0, v0, v2

    move v2, v1

    :goto_6
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v3

    iget v1, v7, Lcba;->d:I

    sub-int/2addr v1, v2

    iput v1, v7, Lcba;->d:I

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v8, v2

    aput-byte v2, v9, v4

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v8, v3

    aput-byte v3, v9, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v8, v0

    aput-byte v0, v9, v2

    aput-byte v11, v9, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p0, v3

    goto :goto_5

    :cond_6
    aget-byte v0, p0, v1

    goto :goto_6

    .line 55
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-static {v7}, Lcba;->a(Lcba;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_4

    :cond_7
    move v4, v2

    goto/16 :goto_1

    :cond_8
    move v4, v5

    move v3, v2

    goto/16 :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 15
    .parameter

    .prologue
    const/4 v14, -0x2

    const/4 v13, -0x1

    const/4 v12, 0x6

    const/4 v3, 0x0

    .line 32
    sget-object v0, Lcay;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 33
    new-instance v7, Lcaz;

    array-length v0, v6

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v7, v0}, Lcaz;-><init>([B)V

    .line 34
    array-length v0, v6

    iget v1, v7, Lcaz;->d:I

    if-ne v1, v12, :cond_0

    move v0, v3

    :goto_0
    if-nez v0, :cond_c

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    add-int/lit8 v8, v0, 0x0

    iget v0, v7, Lcaz;->d:I

    iget-object v9, v7, Lcaz;->b:[B

    sget-object v10, Lcaz;->a:[I

    move v1, v3

    move v4, v0

    move v2, v3

    move v0, v3

    :goto_1
    if-ge v2, v8, :cond_b

    if-nez v4, :cond_2

    :goto_2
    add-int/lit8 v5, v2, 0x4

    if-gt v5, v8, :cond_1

    aget-byte v1, v6, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v10, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v10, v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v1, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v10, v5

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v10, v5

    or-int/2addr v1, v5

    if-ltz v1, :cond_1

    add-int/lit8 v5, v0, 0x2

    int-to-byte v11, v1

    aput-byte v11, v9, v5

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v11, v1, 0x8

    int-to-byte v11, v11

    aput-byte v11, v9, v5

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v9, v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    :cond_1
    if-ge v2, v8, :cond_b

    :cond_2
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v10, v2

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    if-ltz v2, :cond_3

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v2

    move v2, v5

    goto :goto_1

    :cond_3
    if-eq v2, v13, :cond_a

    iput v12, v7, Lcaz;->d:I

    move v0, v3

    goto/16 :goto_0

    :pswitch_1
    if-ltz v2, :cond_4

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto/16 :goto_1

    :cond_4
    if-eq v2, v13, :cond_a

    iput v12, v7, Lcaz;->d:I

    move v0, v3

    goto/16 :goto_0

    :pswitch_2
    if-ltz v2, :cond_5

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto/16 :goto_1

    :cond_5
    if-ne v2, v14, :cond_6

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v4, v1, 0x4

    int-to-byte v4, v4

    aput-byte v4, v9, v0

    const/4 v0, 0x4

    move v4, v0

    move v0, v2

    move v2, v5

    goto/16 :goto_1

    :cond_6
    if-eq v2, v13, :cond_a

    iput v12, v7, Lcaz;->d:I

    move v0, v3

    goto/16 :goto_0

    :pswitch_3
    if-ltz v2, :cond_7

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    int-to-byte v4, v1

    aput-byte v4, v9, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v9, v2

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    add-int/lit8 v0, v0, 0x3

    move v4, v3

    move v2, v5

    goto/16 :goto_1

    :cond_7
    if-ne v2, v14, :cond_8

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v4, v1, 0x2

    int-to-byte v4, v4

    aput-byte v4, v9, v2

    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    add-int/lit8 v0, v0, 0x2

    const/4 v2, 0x5

    move v4, v2

    move v2, v5

    goto/16 :goto_1

    :cond_8
    if-eq v2, v13, :cond_a

    iput v12, v7, Lcaz;->d:I

    move v0, v3

    goto/16 :goto_0

    :pswitch_4
    if-ne v2, v14, :cond_9

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto/16 :goto_1

    :cond_9
    if-eq v2, v13, :cond_a

    iput v12, v7, Lcaz;->d:I

    move v0, v3

    goto/16 :goto_0

    :pswitch_5
    if-eq v2, v13, :cond_a

    iput v12, v7, Lcaz;->d:I

    move v0, v3

    goto/16 :goto_0

    :cond_a
    move v2, v5

    goto/16 :goto_1

    :cond_b
    move v2, v1

    packed-switch v4, :pswitch_data_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_6
    iput v12, v7, Lcaz;->d:I

    move v0, v3

    goto/16 :goto_0

    :pswitch_7
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    move v0, v1

    :goto_3
    :pswitch_8
    iput v4, v7, Lcaz;->d:I

    iput v0, v7, Lcaz;->c:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v5, v2, 0xa

    int-to-byte v5, v5

    aput-byte v5, v9, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v9, v1

    goto :goto_3

    :pswitch_a
    iput v12, v7, Lcaz;->d:I

    move v0, v3

    goto/16 :goto_0

    .line 37
    :cond_c
    invoke-static {v7}, Lcaz;->a(Lcaz;)I

    move-result v0

    invoke-static {v7}, Lcaz;->b(Lcaz;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_d

    .line 38
    invoke-static {v7}, Lcaz;->b(Lcaz;)[B

    move-result-object v0

    .line 42
    :goto_4
    return-object v0

    .line 40
    :cond_d
    invoke-static {v7}, Lcaz;->a(Lcaz;)I

    move-result v0

    new-array v0, v0, [B

    .line 41
    invoke-static {v7}, Lcaz;->b(Lcaz;)[B

    move-result-object v1

    invoke-static {v7}, Lcaz;->a(Lcaz;)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 34
    nop

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
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method
