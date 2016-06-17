.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# instance fields
.field public final a:Lboa;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsg;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field private final d:[I

.field private final e:Lbnt;


# direct methods
.method public constructor <init>(Lboa;Lbnt;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    .line 65
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lbnt;

    .line 66
    return-void
.end method

.method private static a([II)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 191
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static a([I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/high16 v6, 0x4040

    const/4 v0, 0x0

    .line 200
    move v2, v0

    move v3, v0

    .line 201
    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_2

    .line 202
    aget v4, p0, v2

    .line 203
    if-nez v4, :cond_1

    .line 214
    :cond_0
    :goto_1
    return v0

    .line 206
    :cond_1
    add-int/2addr v3, v4

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_2
    const/4 v2, 0x7

    if-lt v3, v2, :cond_0

    .line 211
    int-to-float v2, v3

    const/high16 v3, 0x40e0

    div-float/2addr v2, v3

    .line 212
    const/high16 v3, 0x4000

    div-float v3, v2, v3

    .line 214
    aget v4, p0, v0

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_0

    aget v4, p0, v1

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_0

    mul-float v4, v6, v2

    const/4 v5, 0x2

    aget v5, p0, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v5, v6, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_0

    const/4 v4, 0x4

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method private b()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    aput v2, v0, v2

    .line 224
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 225
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 227
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 558
    .line 560
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 561
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsg;

    .line 562
    iget v7, v0, Lbsg;->d:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 563
    add-int/lit8 v3, v3, 0x1

    .line 564
    iget v0, v0, Lbsg;->c:F

    add-float/2addr v0, v1

    move v1, v3

    :goto_1
    move v3, v1

    move v1, v0

    .line 566
    goto :goto_0

    .line 567
    :cond_0
    const/4 v0, 0x3

    if-ge v3, v0, :cond_2

    .line 579
    :cond_1
    :goto_2
    return v4

    .line 574
    :cond_2
    int-to-float v0, v5

    div-float v3, v1, v0

    .line 576
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsg;

    .line 577
    iget v0, v0, Lbsg;->c:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v2, v0

    .line 578
    goto :goto_3

    .line 579
    :cond_3
    const v0, 0x3d4ccccd

    mul-float/2addr v0, v1

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method public final a([IIIZ)Z
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 488
    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    add-int/2addr v1, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    add-int v4, v1, v2

    .line 490
    move/from16 v0, p3

    invoke-static {p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result v3

    .line 491
    float-to-int v2, v3

    const/4 v1, 0x2

    aget v5, p1, v1

    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    iget v7, v6, Lboa;->b:I

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b()[I

    move-result-object v8

    move/from16 v1, p2

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v6, v2, v1}, Lboa;->a(II)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/high16 v1, 0x7fc0

    move v2, v1

    .line 492
    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_35

    .line 494
    float-to-int v3, v3

    float-to-int v5, v2

    const/4 v1, 0x2

    aget v6, p1, v1

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    iget v8, v7, Lboa;->a:I

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b()[I

    move-result-object v9

    move v1, v3

    :goto_2
    if-ltz v1, :cond_10

    invoke-virtual {v7, v1, v5}, Lboa;->a(II)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x2

    aget v11, v9, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 491
    :cond_1
    :goto_3
    if-ltz v1, :cond_2

    invoke-virtual {v6, v2, v1}, Lboa;->a(II)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    aget v9, v8, v9

    if-gt v9, v5, :cond_2

    const/4 v9, 0x1

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_2
    if-ltz v1, :cond_3

    const/4 v9, 0x1

    aget v9, v8, v9

    if-le v9, v5, :cond_4

    :cond_3
    const/high16 v1, 0x7fc0

    move v2, v1

    goto :goto_1

    :cond_4
    :goto_4
    if-ltz v1, :cond_5

    invoke-virtual {v6, v2, v1}, Lboa;->a(II)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    aget v9, v8, v9

    if-gt v9, v5, :cond_5

    const/4 v9, 0x0

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    aget v1, v8, v1

    if-le v1, v5, :cond_6

    const/high16 v1, 0x7fc0

    move v2, v1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, p2, 0x1

    :goto_5
    if-ge v1, v7, :cond_7

    invoke-virtual {v6, v2, v1}, Lboa;->a(II)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x2

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    if-ne v1, v7, :cond_8

    const/high16 v1, 0x7fc0

    move v2, v1

    goto/16 :goto_1

    :cond_8
    :goto_6
    if-ge v1, v7, :cond_9

    invoke-virtual {v6, v2, v1}, Lboa;->a(II)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x3

    aget v9, v8, v9

    if-ge v9, v5, :cond_9

    const/4 v9, 0x3

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    if-eq v1, v7, :cond_a

    const/4 v9, 0x3

    aget v9, v8, v9

    if-lt v9, v5, :cond_b

    :cond_a
    const/high16 v1, 0x7fc0

    move v2, v1

    goto/16 :goto_1

    :cond_b
    :goto_7
    if-ge v1, v7, :cond_c

    invoke-virtual {v6, v2, v1}, Lboa;->a(II)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x4

    aget v9, v8, v9

    if-ge v9, v5, :cond_c

    const/4 v9, 0x4

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x4

    aget v2, v8, v2

    if-lt v2, v5, :cond_d

    const/high16 v1, 0x7fc0

    move v2, v1

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v5, 0x1

    aget v5, v8, v5

    add-int/2addr v2, v5

    const/4 v5, 0x2

    aget v5, v8, v5

    add-int/2addr v2, v5

    const/4 v5, 0x3

    aget v5, v8, v5

    add-int/2addr v2, v5

    const/4 v5, 0x4

    aget v5, v8, v5

    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v5, v4, 0x2

    if-lt v2, v5, :cond_e

    const/high16 v1, 0x7fc0

    move v2, v1

    goto/16 :goto_1

    :cond_e
    invoke-static {v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v8, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result v1

    move v2, v1

    goto/16 :goto_1

    :cond_f
    const/high16 v1, 0x7fc0

    move v2, v1

    goto/16 :goto_1

    .line 494
    :cond_10
    if-gez v1, :cond_11

    const/high16 v1, 0x7fc0

    move v3, v1

    .line 495
    :goto_8
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_35

    if-eqz p4, :cond_22

    float-to-int v5, v2

    float-to-int v6, v3

    const/4 v1, 0x2

    aget v7, p1, v1

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b()[I

    move-result-object v8

    const/4 v1, 0x0

    :goto_9
    if-lt v5, v1, :cond_20

    if-lt v6, v1, :cond_20

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    sub-int v10, v6, v1

    sub-int v11, v5, v1

    invoke-virtual {v9, v10, v11}, Lboa;->a(II)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x2

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 494
    :cond_11
    :goto_a
    if-ltz v1, :cond_12

    invoke-virtual {v7, v1, v5}, Lboa;->a(II)Z

    move-result v10

    if-nez v10, :cond_12

    const/4 v10, 0x1

    aget v10, v9, v10

    if-gt v10, v6, :cond_12

    const/4 v10, 0x1

    aget v11, v9, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_12
    if-ltz v1, :cond_13

    const/4 v10, 0x1

    aget v10, v9, v10

    if-le v10, v6, :cond_14

    :cond_13
    const/high16 v1, 0x7fc0

    move v3, v1

    goto :goto_8

    :cond_14
    :goto_b
    if-ltz v1, :cond_15

    invoke-virtual {v7, v1, v5}, Lboa;->a(II)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v10, 0x0

    aget v10, v9, v10

    if-gt v10, v6, :cond_15

    const/4 v10, 0x0

    aget v11, v9, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_15
    const/4 v1, 0x0

    aget v1, v9, v1

    if-le v1, v6, :cond_16

    const/high16 v1, 0x7fc0

    move v3, v1

    goto :goto_8

    :cond_16
    add-int/lit8 v1, v3, 0x1

    :goto_c
    if-ge v1, v8, :cond_17

    invoke-virtual {v7, v1, v5}, Lboa;->a(II)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x2

    aget v10, v9, v3

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    if-ne v1, v8, :cond_18

    const/high16 v1, 0x7fc0

    move v3, v1

    goto/16 :goto_8

    :cond_18
    :goto_d
    if-ge v1, v8, :cond_19

    invoke-virtual {v7, v1, v5}, Lboa;->a(II)Z

    move-result v3

    if-nez v3, :cond_19

    const/4 v3, 0x3

    aget v3, v9, v3

    if-ge v3, v6, :cond_19

    const/4 v3, 0x3

    aget v10, v9, v3

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    if-eq v1, v8, :cond_1a

    const/4 v3, 0x3

    aget v3, v9, v3

    if-lt v3, v6, :cond_1b

    :cond_1a
    const/high16 v1, 0x7fc0

    move v3, v1

    goto/16 :goto_8

    :cond_1b
    :goto_e
    if-ge v1, v8, :cond_1c

    invoke-virtual {v7, v1, v5}, Lboa;->a(II)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x4

    aget v3, v9, v3

    if-ge v3, v6, :cond_1c

    const/4 v3, 0x4

    aget v10, v9, v3

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    const/4 v3, 0x4

    aget v3, v9, v3

    if-lt v3, v6, :cond_1d

    const/high16 v1, 0x7fc0

    move v3, v1

    goto/16 :goto_8

    :cond_1d
    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v5, 0x1

    aget v5, v9, v5

    add-int/2addr v3, v5

    const/4 v5, 0x2

    aget v5, v9, v5

    add-int/2addr v3, v5

    const/4 v5, 0x3

    aget v5, v9, v5

    add-int/2addr v3, v5

    const/4 v5, 0x4

    aget v5, v9, v5

    add-int/2addr v3, v5

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    if-lt v3, v4, :cond_1e

    const/high16 v1, 0x7fc0

    move v3, v1

    goto/16 :goto_8

    :cond_1e
    invoke-static {v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {v9, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result v1

    move v3, v1

    goto/16 :goto_8

    :cond_1f
    const/high16 v1, 0x7fc0

    move v3, v1

    goto/16 :goto_8

    .line 495
    :cond_20
    if-lt v5, v1, :cond_21

    if-ge v6, v1, :cond_25

    :cond_21
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_35

    .line 497
    :cond_22
    int-to-float v1, v4

    const/high16 v4, 0x40e0

    div-float v7, v1, v4

    .line 498
    const/4 v5, 0x0

    .line 499
    const/4 v1, 0x0

    move v4, v1

    :goto_10
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_36

    .line 500
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsg;

    .line 502
    iget v6, v1, Lbns;->b:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_33

    iget v6, v1, Lbns;->a:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_33

    iget v6, v1, Lbsg;->c:F

    sub-float v6, v7, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v8, 0x3f80

    cmpg-float v8, v6, v8

    if-lez v8, :cond_23

    iget v8, v1, Lbsg;->c:F

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_32

    :cond_23
    const/4 v6, 0x1

    :goto_11
    if-eqz v6, :cond_34

    .line 503
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    iget v6, v1, Lbsg;->d:I

    add-int/lit8 v6, v6, 0x1

    iget v8, v1, Lbsg;->d:I

    int-to-float v8, v8

    iget v9, v1, Lbns;->a:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    int-to-float v9, v6

    div-float/2addr v8, v9

    iget v9, v1, Lbsg;->d:I

    int-to-float v9, v9

    iget v10, v1, Lbns;->b:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v2

    int-to-float v10, v6

    div-float/2addr v9, v10

    iget v10, v1, Lbsg;->d:I

    int-to-float v10, v10

    iget v1, v1, Lbsg;->c:F

    mul-float/2addr v1, v10

    add-float/2addr v1, v7

    int-to-float v10, v6

    div-float/2addr v1, v10

    new-instance v10, Lbsg;

    invoke-direct {v10, v8, v9, v1, v6}, Lbsg;-><init>(FFFI)V

    invoke-interface {v5, v4, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    const/4 v1, 0x1

    .line 508
    :goto_12
    if-nez v1, :cond_24

    .line 509
    new-instance v1, Lbsg;

    invoke-direct {v1, v3, v2, v7}, Lbsg;-><init>(FFF)V

    .line 510
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lbnt;

    if-eqz v2, :cond_24

    .line 512
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lbnt;

    invoke-virtual {v2, v1}, Lbnt;->a(Lbns;)V

    .line 515
    :cond_24
    const/4 v1, 0x1

    .line 518
    :goto_13
    return v1

    .line 495
    :cond_25
    :goto_14
    if-lt v5, v1, :cond_26

    if-lt v6, v1, :cond_26

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    sub-int v10, v6, v1

    sub-int v11, v5, v1

    invoke-virtual {v9, v10, v11}, Lboa;->a(II)Z

    move-result v9

    if-nez v9, :cond_26

    const/4 v9, 0x1

    aget v9, v8, v9

    if-gt v9, v7, :cond_26

    const/4 v9, 0x1

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    if-lt v5, v1, :cond_27

    if-lt v6, v1, :cond_27

    const/4 v9, 0x1

    aget v9, v8, v9

    if-le v9, v7, :cond_28

    :cond_27
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_28
    :goto_15
    if-lt v5, v1, :cond_29

    if-lt v6, v1, :cond_29

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    sub-int v10, v6, v1

    sub-int v11, v5, v1

    invoke-virtual {v9, v10, v11}, Lboa;->a(II)Z

    move-result v9

    if-eqz v9, :cond_29

    const/4 v9, 0x0

    aget v9, v8, v9

    if-gt v9, v7, :cond_29

    const/4 v9, 0x0

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_29
    const/4 v1, 0x0

    aget v1, v8, v1

    if-gt v1, v7, :cond_31

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    iget v9, v1, Lboa;->b:I

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    iget v10, v1, Lboa;->a:I

    const/4 v1, 0x1

    :goto_16
    add-int v11, v5, v1

    if-ge v11, v9, :cond_2a

    add-int v11, v6, v1

    if-ge v11, v10, :cond_2a

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    add-int v12, v6, v1

    add-int v13, v5, v1

    invoke-virtual {v11, v12, v13}, Lboa;->a(II)Z

    move-result v11

    if-eqz v11, :cond_2a

    const/4 v11, 0x2

    aget v12, v8, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v8, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2a
    add-int v11, v5, v1

    if-ge v11, v9, :cond_2b

    add-int v11, v6, v1

    if-lt v11, v10, :cond_2c

    :cond_2b
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_2c
    :goto_17
    add-int v11, v5, v1

    if-ge v11, v9, :cond_2d

    add-int v11, v6, v1

    if-ge v11, v10, :cond_2d

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    add-int v12, v6, v1

    add-int v13, v5, v1

    invoke-virtual {v11, v12, v13}, Lboa;->a(II)Z

    move-result v11

    if-nez v11, :cond_2d

    const/4 v11, 0x3

    aget v11, v8, v11

    if-ge v11, v7, :cond_2d

    const/4 v11, 0x3

    aget v12, v8, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v8, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2d
    add-int v11, v5, v1

    if-ge v11, v9, :cond_2e

    add-int v11, v6, v1

    if-ge v11, v10, :cond_2e

    const/4 v11, 0x3

    aget v11, v8, v11

    if-lt v11, v7, :cond_2f

    :cond_2e
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_2f
    :goto_18
    add-int v11, v5, v1

    if-ge v11, v9, :cond_30

    add-int v11, v6, v1

    if-ge v11, v10, :cond_30

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lboa;

    add-int v12, v6, v1

    add-int v13, v5, v1

    invoke-virtual {v11, v12, v13}, Lboa;->a(II)Z

    move-result v11

    if-eqz v11, :cond_30

    const/4 v11, 0x4

    aget v11, v8, v11

    if-ge v11, v7, :cond_30

    const/4 v11, 0x4

    aget v12, v8, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v8, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_30
    const/4 v1, 0x4

    aget v1, v8, v1

    if-ge v1, v7, :cond_31

    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v5, 0x1

    aget v5, v8, v5

    add-int/2addr v1, v5

    const/4 v5, 0x2

    aget v5, v8, v5

    add-int/2addr v1, v5

    const/4 v5, 0x3

    aget v5, v8, v5

    add-int/2addr v1, v5

    const/4 v5, 0x4

    aget v5, v8, v5

    add-int/2addr v1, v5

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v5, v4, 0x2

    if-ge v1, v5, :cond_31

    invoke-static {v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    goto/16 :goto_f

    :cond_31
    const/4 v1, 0x0

    goto/16 :goto_f

    .line 502
    :cond_32
    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_33
    const/4 v6, 0x0

    goto/16 :goto_11

    .line 499
    :cond_34
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_10

    .line 518
    :cond_35
    const/4 v1, 0x0

    goto/16 :goto_13

    :cond_36
    move v1, v5

    goto/16 :goto_12
.end method
