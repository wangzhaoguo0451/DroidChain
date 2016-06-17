.class public final Lbox;
.super Ljava/lang/Object;
.source "MaxiCodeReader.java"

# interfaces
.implements Lbnq;


# static fields
.field private static final a:[Lbns;


# instance fields
.field private final b:Lbpa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lbns;

    sput-object v0, Lbox;->a:[Lbns;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lbpa;

    invoke-direct {v0}, Lbpa;-><init>()V

    iput-object v0, p0, Lbox;->b:Lbpa;

    return-void
.end method


# virtual methods
.method public final a(Lbnn;Ljava/util/Map;)Lbnr;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbnn;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lbnr;"
        }
    .end annotation

    .prologue
    .line 69
    if-eqz p2, :cond_10

    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    invoke-virtual {p1}, Lbnn;->a()Lboa;

    move-result-object v7

    iget v4, v7, Lboa;->a:I

    iget v3, v7, Lboa;->b:I

    const/4 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget v5, v7, Lboa;->b:I

    if-ge v0, v5, :cond_5

    const/4 v5, 0x0

    :goto_1
    iget v6, v7, Lboa;->c:I

    if-ge v5, v6, :cond_4

    iget-object v6, v7, Lboa;->d:[I

    iget v8, v7, Lboa;->c:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v5

    aget v8, v6, v8

    if-eqz v8, :cond_13

    if-ge v0, v3, :cond_0

    move v3, v0

    :cond_0
    if-le v0, v1, :cond_1

    move v1, v0

    :cond_1
    mul-int/lit8 v6, v5, 0x20

    if-ge v6, v4, :cond_12

    const/4 v6, 0x0

    :goto_2
    rsub-int/lit8 v9, v6, 0x1f

    shl-int v9, v8, v9

    if-nez v9, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    mul-int/lit8 v9, v5, 0x20

    add-int/2addr v9, v6

    if-ge v9, v4, :cond_12

    mul-int/lit8 v4, v5, 0x20

    add-int/2addr v4, v6

    move v6, v4

    :goto_3
    mul-int/lit8 v4, v5, 0x20

    add-int/lit8 v4, v4, 0x1f

    if-le v4, v2, :cond_11

    const/16 v4, 0x1f

    :goto_4
    ushr-int v9, v8, v4

    if-nez v9, :cond_3

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_3
    mul-int/lit8 v8, v5, 0x20

    add-int/2addr v8, v4

    if-le v8, v2, :cond_11

    mul-int/lit8 v2, v5, 0x20

    add-int/2addr v2, v4

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sub-int/2addr v2, v4

    sub-int/2addr v1, v3

    if-ltz v2, :cond_6

    if-gez v1, :cond_7

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_7
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v2, 0x3

    aput v1, v0, v2

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v1, 0x1

    aget v3, v0, v1

    const/4 v1, 0x2

    aget v4, v0, v1

    const/4 v1, 0x3

    aget v5, v0, v1

    new-instance v6, Lboa;

    const/16 v0, 0x1e

    const/16 v1, 0x21

    invoke-direct {v6, v0, v1}, Lboa;-><init>(II)V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    const/16 v0, 0x21

    if-ge v1, v0, :cond_b

    mul-int v0, v1, v5

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x21

    add-int v8, v3, v0

    const/4 v0, 0x0

    :goto_8
    const/16 v9, 0x1e

    if-ge v0, v9, :cond_a

    mul-int v9, v0, v4

    div-int/lit8 v10, v4, 0x2

    add-int/2addr v9, v10

    and-int/lit8 v10, v1, 0x1

    mul-int/2addr v10, v4

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x1e

    add-int/2addr v9, v2

    invoke-virtual {v7, v9, v8}, Lboa;->a(II)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v6, v0, v1}, Lboa;->b(II)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 71
    :cond_b
    iget-object v0, p0, Lbox;->b:Lbpa;

    new-instance v4, Lboy;

    invoke-direct {v4, v6}, Lboy;-><init>(Lboa;)V

    const/16 v1, 0x90

    new-array v1, v1, [B

    iget-object v2, v4, Lboy;->b:Lboa;

    iget v5, v2, Lboa;->b:I

    iget-object v2, v4, Lboy;->b:Lboa;

    iget v6, v2, Lboa;->a:I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v5, :cond_e

    sget-object v3, Lboy;->a:[[I

    aget-object v7, v3, v2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v6, :cond_d

    aget v8, v7, v3

    if-ltz v8, :cond_c

    iget-object v9, v4, Lboy;->b:Lboa;

    invoke-virtual {v9, v3, v2}, Lboa;->a(II)Z

    move-result v9

    if-eqz v9, :cond_c

    div-int/lit8 v9, v8, 0x6

    aget-byte v10, v1, v9

    const/4 v11, 0x1

    rem-int/lit8 v8, v8, 0x6

    rsub-int/lit8 v8, v8, 0x5

    shl-int v8, v11, v8

    int-to-byte v8, v8

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v1, v9

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lbpa;->a([BIIII)V

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit8 v6, v2, 0xf

    packed-switch v6, :pswitch_data_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_0
    const/16 v2, 0x14

    const/16 v3, 0x54

    const/16 v4, 0x28

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lbpa;->a([BIIII)V

    const/16 v2, 0x14

    const/16 v3, 0x54

    const/16 v4, 0x28

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lbpa;->a([BIIII)V

    const/16 v0, 0x5e

    new-array v0, v0, [B

    :goto_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x14

    const/16 v3, 0xa

    array-length v4, v0

    add-int/lit8 v4, v4, -0xa

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v6}, Lboz;->a([BI)Lboc;

    move-result-object v0

    .line 76
    sget-object v1, Lbox;->a:[Lbns;

    .line 77
    new-instance v2, Lbnr;

    iget-object v3, v0, Lboc;->b:Ljava/lang/String;

    iget-object v4, v0, Lboc;->a:[B

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v3, v4, v1, v5}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V

    .line 79
    iget-object v0, v0, Lboc;->d:Ljava/lang/String;

    .line 80
    if-eqz v0, :cond_f

    .line 81
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v1, v0}, Lbnr;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 83
    :cond_f
    return-object v2

    .line 71
    :pswitch_1
    const/16 v2, 0x14

    const/16 v3, 0x44

    const/16 v4, 0x38

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lbpa;->a([BIIII)V

    const/16 v2, 0x14

    const/16 v3, 0x44

    const/16 v4, 0x38

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lbpa;->a([BIIII)V

    const/16 v0, 0x4e

    new-array v0, v0, [B

    goto :goto_b

    .line 73
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11
    move v4, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_5

    :cond_12
    move v6, v4

    goto/16 :goto_3

    :cond_13
    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_5

    .line 71
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
