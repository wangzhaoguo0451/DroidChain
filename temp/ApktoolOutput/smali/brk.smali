.class public Lbrk;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lbnq;


# static fields
.field private static final a:[Lbns;


# instance fields
.field private final b:Lbrx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Lbns;

    sput-object v0, Lbrk;->a:[Lbns;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lbrx;

    invoke-direct {v0}, Lbrx;-><init>()V

    iput-object v0, p0, Lbrk;->b:Lbrx;

    return-void
.end method


# virtual methods
.method public final a(Lbnn;Ljava/util/Map;)Lbnr;
    .locals 18
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
    .line 72
    if-eqz p2, :cond_15

    sget-object v2, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 73
    invoke-virtual/range {p1 .. p1}, Lbnn;->a()Lboa;

    move-result-object v7

    invoke-virtual {v7}, Lboa;->a()[I

    move-result-object v8

    invoke-virtual {v7}, Lboa;->b()[I

    move-result-object v9

    if-eqz v8, :cond_0

    if-nez v9, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_1
    iget v10, v7, Lboa;->b:I

    iget v11, v7, Lboa;->a:I

    const/4 v2, 0x0

    aget v5, v8, v2

    const/4 v2, 0x1

    aget v3, v8, v2

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v6, v5

    move v5, v3

    :goto_0
    if-ge v6, v11, :cond_3

    if-ge v5, v10, :cond_3

    invoke-virtual {v7, v6, v5}, Lboa;->a(II)Z

    move-result v3

    if-eq v4, v3, :cond_33

    add-int/lit8 v3, v2, 0x1

    const/4 v2, 0x5

    if-eq v3, v2, :cond_3

    if-nez v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    :goto_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    if-eq v6, v11, :cond_4

    if-ne v5, v10, :cond_5

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_5
    const/4 v2, 0x0

    aget v2, v8, v2

    sub-int v2, v6, v2

    int-to-float v2, v2

    const/high16 v3, 0x40e0

    div-float v6, v2, v3

    const/4 v2, 0x1

    aget v3, v8, v2

    const/4 v2, 0x1

    aget v10, v9, v2

    const/4 v2, 0x0

    aget v4, v8, v2

    const/4 v2, 0x0

    aget v2, v9, v2

    if-ge v4, v2, :cond_6

    if-lt v3, v10, :cond_7

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_7
    sub-int v5, v10, v3

    sub-int v8, v2, v4

    if-eq v5, v8, :cond_8

    sub-int v2, v10, v3

    add-int/2addr v2, v4

    :cond_8
    sub-int v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int v5, v10, v3

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-lez v8, :cond_9

    if-gtz v9, :cond_a

    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_a
    if-eq v9, v8, :cond_b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_b
    const/high16 v5, 0x4000

    div-float v5, v6, v5

    float-to-int v11, v5

    add-int/2addr v3, v11

    add-int/2addr v4, v11

    add-int/lit8 v5, v8, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v4

    add-int/lit8 v2, v2, -0x1

    sub-int v2, v5, v2

    if-lez v2, :cond_32

    if-le v2, v11, :cond_c

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_c
    sub-int v2, v4, v2

    move v5, v2

    :goto_3
    add-int/lit8 v2, v9, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v2, v3

    add-int/lit8 v4, v10, -0x1

    sub-int/2addr v2, v4

    if-lez v2, :cond_31

    if-le v2, v11, :cond_d

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_d
    sub-int v2, v3, v2

    :goto_4
    new-instance v10, Lboa;

    invoke-direct {v10, v8, v9}, Lboa;-><init>(II)V

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    if-ge v4, v9, :cond_10

    int-to-float v3, v4

    mul-float/2addr v3, v6

    float-to-int v3, v3

    add-int v11, v2, v3

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v8, :cond_f

    int-to-float v12, v3

    mul-float/2addr v12, v6

    float-to-int v12, v12

    add-int/2addr v12, v5

    invoke-virtual {v7, v12, v11}, Lboa;->a(II)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v10, v3, v4}, Lboa;->b(II)V

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    .line 74
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lbrk;->b:Lbrx;

    move-object/from16 v0, p2

    invoke-virtual {v2, v10, v0}, Lbrx;->a(Lboa;Ljava/util/Map;)Lboc;

    move-result-object v3

    .line 75
    sget-object v2, Lbrk;->a:[Lbns;

    .line 83
    :goto_7
    iget-object v4, v3, Lboc;->e:Ljava/lang/Object;

    instance-of v4, v4, Lbrz;

    if-eqz v4, :cond_11

    .line 84
    if-eqz v2, :cond_11

    array-length v4, v2

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2e

    .line 87
    :cond_11
    :goto_8
    new-instance v4, Lbnr;

    iget-object v5, v3, Lboc;->b:Ljava/lang/String;

    iget-object v6, v3, Lboc;->a:[B

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v5, v6, v2, v7}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V

    .line 88
    iget-object v2, v3, Lboc;->c:Ljava/util/List;

    .line 89
    if-eqz v2, :cond_12

    .line 90
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v4, v5, v2}, Lbnr;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 92
    :cond_12
    iget-object v2, v3, Lboc;->d:Ljava/lang/String;

    .line 93
    if-eqz v2, :cond_13

    .line 94
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v4, v5, v2}, Lbnr;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 96
    :cond_13
    iget v2, v3, Lboc;->f:I

    if-ltz v2, :cond_2f

    iget v2, v3, Lboc;->g:I

    if-ltz v2, :cond_2f

    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_14

    .line 97
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    iget v5, v3, Lboc;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lbnr;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 99
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    iget v3, v3, Lboc;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lbnr;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 102
    :cond_14
    return-object v4

    .line 77
    :cond_15
    new-instance v9, Lbsf;

    invoke-virtual/range {p1 .. p1}, Lbnn;->a()Lboa;

    move-result-object v2

    invoke-direct {v9, v2}, Lbsf;-><init>(Lboa;)V

    if-nez p2, :cond_19

    const/4 v2, 0x0

    :goto_a
    iput-object v2, v9, Lbsf;->b:Lbnt;

    new-instance v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    iget-object v2, v9, Lbsf;->a:Lboa;

    iget-object v3, v9, Lbsf;->b:Lbnt;

    invoke-direct {v10, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lboa;Lbnt;)V

    if-eqz p2, :cond_1a

    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    move v4, v2

    :goto_b
    if-eqz p2, :cond_1b

    sget-object v2, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    move v3, v2

    :goto_c
    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    iget v11, v2, Lboa;->b:I

    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    iget v12, v2, Lboa;->a:I

    mul-int/lit8 v2, v11, 0x3

    div-int/lit16 v2, v2, 0xe4

    const/4 v5, 0x3

    if-lt v2, v5, :cond_16

    if-eqz v4, :cond_17

    :cond_16
    const/4 v2, 0x3

    :cond_17
    const/4 v7, 0x0

    const/4 v4, 0x5

    new-array v13, v4, [I

    add-int/lit8 v6, v2, -0x1

    move v4, v2

    :goto_d
    if-ge v6, v11, :cond_27

    if-nez v7, :cond_27

    const/4 v2, 0x0

    const/4 v5, 0x0

    aput v5, v13, v2

    const/4 v2, 0x1

    const/4 v5, 0x0

    aput v5, v13, v2

    const/4 v2, 0x2

    const/4 v5, 0x0

    aput v5, v13, v2

    const/4 v2, 0x3

    const/4 v5, 0x0

    aput v5, v13, v2

    const/4 v2, 0x4

    const/4 v5, 0x0

    aput v5, v13, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v12, :cond_25

    iget-object v8, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    invoke-virtual {v8, v5, v6}, Lboa;->a(II)Z

    move-result v8

    if-eqz v8, :cond_1c

    and-int/lit8 v8, v2, 0x1

    const/4 v14, 0x1

    if-ne v8, v14, :cond_18

    add-int/lit8 v2, v2, 0x1

    :cond_18
    aget v8, v13, v2

    add-int/lit8 v8, v8, 0x1

    aput v8, v13, v2

    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_19
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbnt;

    goto :goto_a

    :cond_1a
    const/4 v2, 0x0

    move v4, v2

    goto :goto_b

    :cond_1b
    const/4 v2, 0x0

    move v3, v2

    goto :goto_c

    :cond_1c
    and-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_24

    const/4 v8, 0x4

    if-ne v2, v8, :cond_23

    invoke-static {v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v10, v13, v6, v5, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([IIIZ)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v8, 0x2

    iget-boolean v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    if-eqz v2, :cond_1d

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a()Z

    move-result v2

    :goto_10
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    aput v14, v13, v7

    const/4 v7, 0x1

    const/4 v14, 0x0

    aput v14, v13, v7

    const/4 v7, 0x2

    const/4 v14, 0x0

    aput v14, v13, v7

    const/4 v7, 0x3

    const/4 v14, 0x0

    aput v14, v13, v7

    const/4 v7, 0x4

    const/4 v14, 0x0

    aput v14, v13, v7

    move v7, v2

    move v2, v4

    move v4, v8

    goto :goto_f

    :cond_1d
    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_20

    const/4 v2, 0x0

    iget-object v4, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v4, v2

    :cond_1e
    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsg;

    iget v15, v2, Lbsg;->d:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_1e

    if-nez v4, :cond_1f

    move-object v4, v2

    goto :goto_11

    :cond_1f
    const/4 v14, 0x1

    iput-boolean v14, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    iget v14, v4, Lbns;->a:F

    iget v15, v2, Lbns;->a:F

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iget v4, v4, Lbns;->b:F

    iget v2, v2, Lbns;->b:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v14, v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_12
    const/4 v4, 0x2

    aget v4, v13, v4

    if-le v2, v4, :cond_30

    const/4 v4, 0x2

    aget v4, v13, v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v6, v2

    add-int/lit8 v2, v12, -0x1

    :goto_13
    move v5, v2

    move v6, v4

    move v2, v7

    goto :goto_10

    :cond_20
    const/4 v2, 0x0

    goto :goto_12

    :cond_21
    const/4 v2, 0x0

    const/4 v8, 0x2

    aget v8, v13, v8

    aput v8, v13, v2

    const/4 v2, 0x1

    const/4 v8, 0x3

    aget v8, v13, v8

    aput v8, v13, v2

    const/4 v2, 0x2

    const/4 v8, 0x4

    aget v8, v13, v8

    aput v8, v13, v2

    const/4 v2, 0x3

    const/4 v8, 0x1

    aput v8, v13, v2

    const/4 v2, 0x4

    const/4 v8, 0x0

    aput v8, v13, v2

    const/4 v2, 0x3

    goto/16 :goto_f

    :cond_22
    const/4 v2, 0x0

    const/4 v8, 0x2

    aget v8, v13, v8

    aput v8, v13, v2

    const/4 v2, 0x1

    const/4 v8, 0x3

    aget v8, v13, v8

    aput v8, v13, v2

    const/4 v2, 0x2

    const/4 v8, 0x4

    aget v8, v13, v8

    aput v8, v13, v2

    const/4 v2, 0x3

    const/4 v8, 0x1

    aput v8, v13, v2

    const/4 v2, 0x4

    const/4 v8, 0x0

    aput v8, v13, v2

    const/4 v2, 0x3

    goto/16 :goto_f

    :cond_23
    add-int/lit8 v2, v2, 0x1

    aget v8, v13, v2

    add-int/lit8 v8, v8, 0x1

    aput v8, v13, v2

    goto/16 :goto_f

    :cond_24
    aget v8, v13, v2

    add-int/lit8 v8, v8, 0x1

    aput v8, v13, v2

    goto/16 :goto_f

    :cond_25
    invoke-static {v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v10, v13, v6, v12, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([IIIZ)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    aget v4, v13, v2

    iget-boolean v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    if-eqz v2, :cond_26

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a()Z

    move-result v7

    :cond_26
    add-int/2addr v6, v4

    goto/16 :goto_d

    :cond_27
    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x3

    if-ge v5, v2, :cond_28

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_28
    const/4 v2, 0x3

    if-le v5, v2, :cond_2b

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    move v3, v2

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsg;

    iget v2, v2, Lbsg;->c:F

    add-float/2addr v4, v2

    mul-float/2addr v2, v2

    add-float/2addr v2, v3

    move v3, v2

    goto :goto_14

    :cond_29
    int-to-float v2, v5

    div-float/2addr v4, v2

    int-to-float v2, v5

    div-float v2, v3, v2

    mul-float v3, v4, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    new-instance v5, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLd;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v3, 0x3e4ccccd

    mul-float/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2b

    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x3

    if-le v2, v6, :cond_2b

    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsg;

    iget v2, v2, Lbsg;->c:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2a

    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_2a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_15

    :cond_2b
    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2d

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsg;

    iget v2, v2, Lbsg;->c:F

    add-float/2addr v2, v3

    move v3, v2

    goto :goto_16

    :cond_2c
    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    iget-object v3, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    new-instance v4, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLd;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    const/4 v3, 0x3

    iget-object v4, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2d
    const/4 v2, 0x3

    new-array v3, v2, [Lbsg;

    const/4 v4, 0x0

    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsg;

    aput-object v2, v3, v4

    const/4 v4, 0x1

    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsg;

    aput-object v2, v3, v4

    const/4 v4, 0x2

    iget-object v2, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsg;

    aput-object v2, v3, v4

    invoke-static {v3}, Lbns;->a([Lbns;)V

    new-instance v2, Lbsh;

    invoke-direct {v2, v3}, Lbsh;-><init>([Lbsg;)V

    invoke-virtual {v9, v2}, Lbsf;->a(Lbsh;)Lboe;

    move-result-object v2

    .line 78
    move-object/from16 v0, p0

    iget-object v3, v0, Lbrk;->b:Lbrx;

    iget-object v4, v2, Lboe;->d:Lboa;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lbrx;->a(Lboa;Ljava/util/Map;)Lboc;

    move-result-object v3

    .line 79
    iget-object v2, v2, Lboe;->e:[Lbns;

    goto/16 :goto_7

    .line 84
    :cond_2e
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    aget-object v6, v2, v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    aput-object v4, v2, v5

    goto/16 :goto_8

    .line 96
    :cond_2f
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_30
    move v2, v5

    move v4, v6

    goto/16 :goto_13

    :cond_31
    move v2, v3

    goto/16 :goto_4

    :cond_32
    move v5, v4

    goto/16 :goto_3

    :cond_33
    move v3, v4

    goto/16 :goto_2
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method
