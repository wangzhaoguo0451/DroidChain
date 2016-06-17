.class public final Lbnx;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final g:[I


# instance fields
.field private final a:Lboa;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbnx;->g:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xe0t 0xet 0x0t 0x0t
        0xdct 0x1t 0x0t 0x0t
        0x3bt 0x8t 0x0t 0x0t
        0x7t 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lboa;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lbnx;->a:Lboa;

    .line 49
    return-void
.end method

.method private static a(JZ)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 198
    if-eqz p2, :cond_0

    .line 199
    const/4 v2, 0x7

    .line 200
    const/4 v0, 0x2

    .line 206
    :goto_0
    sub-int v4, v2, v0

    .line 207
    new-array v5, v2, [I

    .line 208
    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 209
    long-to-int v6, p0

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v2

    .line 210
    shr-long/2addr p0, v1

    .line 208
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 202
    :cond_0
    const/16 v0, 0xa

    move v2, v0

    move v0, v1

    .line 203
    goto :goto_0

    .line 213
    :cond_1
    :try_start_0
    new-instance v1, Lbon;

    sget-object v2, Lbol;->d:Lbol;

    invoke-direct {v1, v2}, Lbon;-><init>(Lbol;)V

    .line 214
    invoke-virtual {v1, v5, v4}, Lbon;->a([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 220
    :goto_2
    if-ge v3, v0, :cond_2

    .line 221
    shl-int/lit8 v1, v1, 0x4

    aget v2, v5, v3

    add-int/2addr v1, v2

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 216
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 223
    :cond_2
    return v1
.end method

.method private a(Lbns;Lbns;I)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 401
    .line 403
    iget v1, p1, Lbns;->a:F

    iget v2, p1, Lbns;->b:F

    iget v3, p2, Lbns;->a:F

    iget v4, p2, Lbns;->b:F

    invoke-static {v1, v2, v3, v4}, Ld;->a(FFFF)F

    move-result v1

    .line 404
    int-to-float v2, p3

    div-float v2, v1, v2

    .line 405
    iget v3, p1, Lbns;->a:F

    .line 406
    iget v4, p1, Lbns;->b:F

    .line 407
    iget v5, p2, Lbns;->a:F

    iget v6, p1, Lbns;->a:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    div-float/2addr v5, v1

    .line 408
    iget v6, p2, Lbns;->b:F

    iget v7, p1, Lbns;->b:F

    sub-float/2addr v6, v7

    mul-float/2addr v2, v6

    div-float/2addr v2, v1

    move v1, v0

    .line 409
    :goto_0
    if-ge v1, p3, :cond_1

    .line 410
    iget-object v6, p0, Lbnx;->a:Lboa;

    int-to-float v7, v1

    mul-float/2addr v7, v5

    add-float/2addr v7, v3

    invoke-static {v7}, Ld;->a(F)I

    move-result v7

    int-to-float v8, v1

    mul-float/2addr v8, v2

    add-float/2addr v8, v4

    invoke-static {v8}, Ld;->a(F)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lboa;->a(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 411
    const/4 v6, 0x1

    sub-int v7, p3, v1

    add-int/lit8 v7, v7, -0x1

    shl-int/2addr v6, v7

    or-int/2addr v0, v6

    .line 409
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :cond_1
    return v0
.end method

.method private a(Lbny;Lbny;)I
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 463
    invoke-static {p1, p2}, Lbnx;->b(Lbny;Lbny;)F

    move-result v4

    .line 464
    iget v0, p2, Lbny;->a:I

    iget v1, p1, Lbny;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v5, v0, v4

    .line 465
    iget v0, p2, Lbny;->b:I

    iget v1, p1, Lbny;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v6, v0, v4

    .line 466
    const/4 v3, 0x0

    .line 468
    iget v0, p1, Lbny;->a:I

    int-to-float v2, v0

    .line 469
    iget v0, p1, Lbny;->b:I

    int-to-float v1, v0

    .line 471
    iget-object v0, p0, Lbnx;->a:Lboa;

    iget v7, p1, Lbny;->a:I

    iget v8, p1, Lbny;->b:I

    invoke-virtual {v0, v7, v8}, Lboa;->a(II)Z

    move-result v7

    .line 473
    const/4 v0, 0x0

    move v11, v0

    move v0, v3

    move v3, v2

    move v2, v1

    move v1, v11

    :goto_0
    int-to-float v8, v1

    cmpg-float v8, v8, v4

    if-gez v8, :cond_1

    .line 474
    add-float/2addr v3, v5

    .line 475
    add-float/2addr v2, v6

    .line 476
    iget-object v8, p0, Lbnx;->a:Lboa;

    invoke-static {v3}, Ld;->a(F)I

    move-result v9

    invoke-static {v2}, Ld;->a(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lboa;->a(II)Z

    move-result v8

    if-eq v8, v7, :cond_0

    .line 477
    add-int/lit8 v0, v0, 0x1

    .line 473
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_1
    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 483
    const v1, 0x3dcccccd

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const v1, 0x3f666666

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 484
    const/4 v0, 0x0

    .line 487
    :goto_1
    return v0

    :cond_2
    const v1, 0x3dcccccd

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-ne v0, v7, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a()Lbny;
    .locals 11

    .prologue
    const/high16 v10, 0x4080

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 304
    :try_start_0
    new-instance v0, Lbok;

    iget-object v1, p0, Lbnx;->a:Lboa;

    invoke-direct {v0, v1}, Lbok;-><init>(Lboa;)V

    invoke-virtual {v0}, Lbok;->a()[Lbns;

    move-result-object v0

    .line 305
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 306
    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 307
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 308
    const/4 v4, 0x3

    aget-object v0, v0, v4
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    iget v4, v3, Lbns;->a:F

    iget v5, v0, Lbns;->a:F

    add-float/2addr v4, v5

    iget v5, v2, Lbns;->a:F

    add-float/2addr v4, v5

    iget v5, v1, Lbns;->a:F

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-static {v4}, Ld;->a(F)I

    move-result v4

    .line 325
    iget v3, v3, Lbns;->b:F

    iget v0, v0, Lbns;->b:F

    add-float/2addr v0, v3

    iget v2, v2, Lbns;->b:F

    add-float/2addr v0, v2

    iget v1, v1, Lbns;->b:F

    add-float/2addr v0, v1

    div-float/2addr v0, v10

    invoke-static {v0}, Ld;->a(F)I

    move-result v0

    .line 331
    :try_start_1
    new-instance v1, Lbok;

    iget-object v2, p0, Lbnx;->a:Lboa;

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v4, v0}, Lbok;-><init>(Lboa;III)V

    invoke-virtual {v1}, Lbok;->a()[Lbns;

    move-result-object v5

    .line 332
    const/4 v1, 0x0

    aget-object v3, v5, v1

    .line 333
    const/4 v1, 0x1

    aget-object v2, v5, v1

    .line 334
    const/4 v1, 0x2

    aget-object v1, v5, v1

    .line 335
    const/4 v6, 0x3

    aget-object v0, v5, v6
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    :goto_1
    iget v4, v3, Lbns;->a:F

    iget v5, v0, Lbns;->a:F

    add-float/2addr v4, v5

    iget v5, v2, Lbns;->a:F

    add-float/2addr v4, v5

    iget v5, v1, Lbns;->a:F

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-static {v4}, Ld;->a(F)I

    move-result v4

    .line 347
    iget v3, v3, Lbns;->b:F

    iget v0, v0, Lbns;->b:F

    add-float/2addr v0, v3

    iget v2, v2, Lbns;->b:F

    add-float/2addr v0, v2

    iget v1, v1, Lbns;->b:F

    add-float/2addr v0, v1

    div-float/2addr v0, v10

    invoke-static {v0}, Ld;->a(F)I

    move-result v0

    .line 349
    new-instance v1, Lbny;

    invoke-direct {v1, v4, v0}, Lbny;-><init>(II)V

    return-object v1

    .line 314
    :catch_0
    move-exception v0

    iget-object v0, p0, Lbnx;->a:Lboa;

    iget v0, v0, Lboa;->a:I

    div-int/lit8 v0, v0, 0x2

    .line 315
    iget-object v1, p0, Lbnx;->a:Lboa;

    iget v1, v1, Lboa;->b:I

    div-int/lit8 v4, v1, 0x2

    .line 316
    new-instance v1, Lbny;

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v3, v4, -0x7

    invoke-direct {v1, v2, v3}, Lbny;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v9}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v1

    invoke-virtual {v1}, Lbny;->a()Lbns;

    move-result-object v3

    .line 317
    new-instance v1, Lbny;

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v5, v4, 0x7

    invoke-direct {v1, v2, v5}, Lbny;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v8}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v1

    invoke-virtual {v1}, Lbny;->a()Lbns;

    move-result-object v2

    .line 318
    new-instance v1, Lbny;

    add-int/lit8 v5, v0, -0x7

    add-int/lit8 v6, v4, 0x7

    invoke-direct {v1, v5, v6}, Lbny;-><init>(II)V

    invoke-direct {p0, v1, v7, v9, v8}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v1

    invoke-virtual {v1}, Lbny;->a()Lbns;

    move-result-object v1

    .line 319
    new-instance v5, Lbny;

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v4, v4, -0x7

    invoke-direct {v5, v0, v4}, Lbny;-><init>(II)V

    invoke-direct {p0, v5, v7, v9, v9}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v0

    invoke-virtual {v0}, Lbny;->a()Lbns;

    move-result-object v0

    goto/16 :goto_0

    .line 339
    :catch_1
    move-exception v1

    new-instance v1, Lbny;

    add-int/lit8 v2, v4, 0x7

    add-int/lit8 v3, v0, -0x7

    invoke-direct {v1, v2, v3}, Lbny;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v9}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v1

    invoke-virtual {v1}, Lbny;->a()Lbns;

    move-result-object v3

    .line 340
    new-instance v1, Lbny;

    add-int/lit8 v2, v4, 0x7

    add-int/lit8 v5, v0, 0x7

    invoke-direct {v1, v2, v5}, Lbny;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v8}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v1

    invoke-virtual {v1}, Lbny;->a()Lbns;

    move-result-object v2

    .line 341
    new-instance v1, Lbny;

    add-int/lit8 v5, v4, -0x7

    add-int/lit8 v6, v0, 0x7

    invoke-direct {v1, v5, v6}, Lbny;-><init>(II)V

    invoke-direct {p0, v1, v7, v9, v8}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v1

    invoke-virtual {v1}, Lbny;->a()Lbns;

    move-result-object v1

    .line 342
    new-instance v5, Lbny;

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v0, v0, -0x7

    invoke-direct {v5, v4, v0}, Lbny;-><init>(II)V

    invoke-direct {p0, v5, v7, v9, v9}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v0

    invoke-virtual {v0}, Lbny;->a()Lbns;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private a(Lbny;ZII)Lbny;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 494
    iget v0, p1, Lbny;->a:I

    add-int/2addr v0, p3

    .line 495
    iget v1, p1, Lbny;->b:I

    add-int/2addr v1, p4

    .line 497
    :goto_0
    invoke-direct {p0, v0, v1}, Lbnx;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbnx;->a:Lboa;

    invoke-virtual {v2, v0, v1}, Lboa;->a(II)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 498
    add-int/2addr v0, p3

    .line 499
    add-int/2addr v1, p4

    goto :goto_0

    .line 502
    :cond_0
    sub-int/2addr v0, p3

    .line 503
    sub-int/2addr v1, p4

    .line 505
    :goto_1
    invoke-direct {p0, v0, v1}, Lbnx;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbnx;->a:Lboa;

    invoke-virtual {v2, v0, v1}, Lboa;->a(II)Z

    move-result v2

    if-ne v2, p2, :cond_1

    .line 506
    add-int/2addr v0, p3

    goto :goto_1

    .line 508
    :cond_1
    sub-int v2, v0, p3

    move v0, v1

    .line 510
    :goto_2
    invoke-direct {p0, v2, v0}, Lbnx;->a(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbnx;->a:Lboa;

    invoke-virtual {v1, v2, v0}, Lboa;->a(II)Z

    move-result v1

    if-ne v1, p2, :cond_2

    .line 511
    add-int/2addr v0, p4

    goto :goto_2

    .line 513
    :cond_2
    sub-int/2addr v0, p4

    .line 515
    new-instance v1, Lbny;

    invoke-direct {v1, v2, v0}, Lbny;-><init>(II)V

    return-object v1
.end method

.method private a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 547
    if-ltz p1, :cond_0

    iget-object v0, p0, Lbnx;->a:Lboa;

    iget v0, v0, Lboa;->a:I

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lbnx;->a:Lboa;

    iget v0, v0, Lboa;->b:I

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lbns;)Z
    .locals 2
    .parameter

    .prologue
    .line 551
    iget v0, p1, Lbns;->a:F

    invoke-static {v0}, Ld;->a(F)I

    move-result v0

    .line 552
    iget v1, p1, Lbns;->b:F

    invoke-static {v1}, Ld;->a(F)I

    move-result v1

    .line 553
    invoke-direct {p0, v0, v1}, Lbnx;->a(II)Z

    move-result v0

    return v0
.end method

.method private static a([Lbns;FF)[Lbns;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    const/high16 v0, 0x4000

    mul-float/2addr v0, p1

    div-float v0, p2, v0

    .line 528
    const/4 v1, 0x0

    aget-object v1, p0, v1

    iget v1, v1, Lbns;->a:F

    const/4 v2, 0x2

    aget-object v2, p0, v2

    iget v2, v2, Lbns;->a:F

    sub-float/2addr v1, v2

    .line 529
    const/4 v2, 0x0

    aget-object v2, p0, v2

    iget v2, v2, Lbns;->b:F

    const/4 v3, 0x2

    aget-object v3, p0, v3

    iget v3, v3, Lbns;->b:F

    sub-float/2addr v2, v3

    .line 530
    const/4 v3, 0x0

    aget-object v3, p0, v3

    iget v3, v3, Lbns;->a:F

    const/4 v4, 0x2

    aget-object v4, p0, v4

    iget v4, v4, Lbns;->a:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 531
    const/4 v4, 0x0

    aget-object v4, p0, v4

    iget v4, v4, Lbns;->b:F

    const/4 v5, 0x2

    aget-object v5, p0, v5

    iget v5, v5, Lbns;->b:F

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    .line 533
    new-instance v5, Lbns;

    mul-float v6, v0, v1

    add-float/2addr v6, v3

    mul-float v7, v0, v2

    add-float/2addr v7, v4

    invoke-direct {v5, v6, v7}, Lbns;-><init>(FF)V

    .line 534
    new-instance v6, Lbns;

    mul-float/2addr v1, v0

    sub-float v1, v3, v1

    mul-float/2addr v2, v0

    sub-float v2, v4, v2

    invoke-direct {v6, v1, v2}, Lbns;-><init>(FF)V

    .line 536
    const/4 v1, 0x1

    aget-object v1, p0, v1

    iget v1, v1, Lbns;->a:F

    const/4 v2, 0x3

    aget-object v2, p0, v2

    iget v2, v2, Lbns;->a:F

    sub-float/2addr v1, v2

    .line 537
    const/4 v2, 0x1

    aget-object v2, p0, v2

    iget v2, v2, Lbns;->b:F

    const/4 v3, 0x3

    aget-object v3, p0, v3

    iget v3, v3, Lbns;->b:F

    sub-float/2addr v2, v3

    .line 538
    const/4 v3, 0x1

    aget-object v3, p0, v3

    iget v3, v3, Lbns;->a:F

    const/4 v4, 0x3

    aget-object v4, p0, v4

    iget v4, v4, Lbns;->a:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 539
    const/4 v4, 0x1

    aget-object v4, p0, v4

    iget v4, v4, Lbns;->b:F

    const/4 v7, 0x3

    aget-object v7, p0, v7

    iget v7, v7, Lbns;->b:F

    add-float/2addr v4, v7

    const/high16 v7, 0x4000

    div-float/2addr v4, v7

    .line 540
    new-instance v7, Lbns;

    mul-float v8, v0, v1

    add-float/2addr v8, v3

    mul-float v9, v0, v2

    add-float/2addr v9, v4

    invoke-direct {v7, v8, v9}, Lbns;-><init>(FF)V

    .line 541
    new-instance v8, Lbns;

    mul-float/2addr v1, v0

    sub-float v1, v3, v1

    mul-float/2addr v0, v2

    sub-float v0, v4, v0

    invoke-direct {v8, v1, v0}, Lbns;-><init>(FF)V

    .line 543
    const/4 v0, 0x4

    new-array v0, v0, [Lbns;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    const/4 v1, 0x2

    aput-object v6, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    return-object v0
.end method

.method private static b(Lbny;Lbny;)F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 557
    iget v0, p0, Lbny;->a:I

    iget v1, p0, Lbny;->b:I

    iget v2, p1, Lbny;->a:I

    iget v3, p1, Lbny;->b:I

    invoke-static {v0, v1, v2, v3}, Ld;->a(IIII)F

    move-result v0

    return v0
.end method

.method private b()I
    .locals 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lbnx;->b:Z

    if-eqz v0, :cond_0

    .line 566
    iget v0, p0, Lbnx;->c:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    .line 571
    :goto_0
    return v0

    .line 568
    :cond_0
    iget v0, p0, Lbnx;->c:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 569
    iget v0, p0, Lbnx;->c:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 571
    :cond_1
    iget v0, p0, Lbnx;->c:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lbnx;->c:I

    add-int/lit8 v1, v1, -0x4

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)Lbnu;
    .locals 23
    .parameter

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Lbnx;->a()Lbny;

    move-result-object v2

    .line 69
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lbnx;->e:I

    move-object v4, v2

    move v6, v3

    move-object v7, v2

    move-object v9, v2

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lbnx;->e:I

    const/16 v5, 0x9

    if-ge v3, v5, :cond_3

    const/4 v3, 0x1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v3, v5}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v10

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v3, v5}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v3, v5}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v5

    const/4 v3, -0x1

    const/4 v11, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v3, v11}, Lbnx;->a(Lbny;ZII)Lbny;

    move-result-object v3

    move-object/from16 v0, p0

    iget v11, v0, Lbnx;->e:I

    const/4 v12, 0x2

    if-le v11, v12, :cond_0

    invoke-static {v3, v10}, Lbnx;->b(Lbny;Lbny;)F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lbnx;->e:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-static {v2, v9}, Lbnx;->b(Lbny;Lbny;)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lbnx;->e:I

    add-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    mul-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-double v12, v11

    const-wide/high16 v14, 0x3fe8

    cmpg-double v12, v12, v14

    if-ltz v12, :cond_3

    float-to-double v12, v11

    const-wide/high16 v14, 0x3ff4

    cmpl-double v11, v12, v14

    if-gtz v11, :cond_3

    new-instance v11, Lbny;

    iget v12, v10, Lbny;->a:I

    add-int/lit8 v12, v12, -0x3

    iget v13, v10, Lbny;->b:I

    add-int/lit8 v13, v13, 0x3

    invoke-direct {v11, v12, v13}, Lbny;-><init>(II)V

    new-instance v12, Lbny;

    iget v13, v8, Lbny;->a:I

    add-int/lit8 v13, v13, -0x3

    iget v14, v8, Lbny;->b:I

    add-int/lit8 v14, v14, -0x3

    invoke-direct {v12, v13, v14}, Lbny;-><init>(II)V

    new-instance v13, Lbny;

    iget v14, v5, Lbny;->a:I

    add-int/lit8 v14, v14, 0x3

    iget v15, v5, Lbny;->b:I

    add-int/lit8 v15, v15, -0x3

    invoke-direct {v13, v14, v15}, Lbny;-><init>(II)V

    new-instance v14, Lbny;

    iget v15, v3, Lbny;->a:I

    add-int/lit8 v15, v15, 0x3

    iget v0, v3, Lbny;->b:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x3

    invoke-direct/range {v14 .. v16}, Lbny;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lbnx;->a(Lbny;Lbny;)I

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lbnx;->a(Lbny;Lbny;)I

    move-result v11

    if-ne v11, v15, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lbnx;->a(Lbny;Lbny;)I

    move-result v11

    if-ne v11, v15, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lbnx;->a(Lbny;Lbny;)I

    move-result v11

    if-ne v11, v15, :cond_1

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_3

    :cond_0
    if-nez v6, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lbnx;->e:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lbnx;->e:I

    move-object v4, v5

    move v6, v2

    move-object v7, v8

    move-object v9, v10

    move-object v2, v3

    goto/16 :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lbnx;->e:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lbnx;->e:I

    const/4 v5, 0x7

    if-eq v3, v5, :cond_4

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lbnx;->e:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_7

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lbnx;->b:Z

    new-instance v3, Lbns;

    iget v5, v9, Lbny;->a:I

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    iget v6, v9, Lbny;->b:I

    int-to-float v6, v6

    const/high16 v8, 0x3f00

    sub-float/2addr v6, v8

    invoke-direct {v3, v5, v6}, Lbns;-><init>(FF)V

    new-instance v5, Lbns;

    iget v6, v7, Lbny;->a:I

    int-to-float v6, v6

    const/high16 v8, 0x3f00

    add-float/2addr v6, v8

    iget v7, v7, Lbny;->b:I

    int-to-float v7, v7

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lbns;-><init>(FF)V

    new-instance v6, Lbns;

    iget v7, v4, Lbny;->a:I

    int-to-float v7, v7

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    iget v4, v4, Lbny;->b:I

    int-to-float v4, v4

    const/high16 v8, 0x3f00

    add-float/2addr v4, v8

    invoke-direct {v6, v7, v4}, Lbns;-><init>(FF)V

    new-instance v4, Lbns;

    iget v7, v2, Lbny;->a:I

    int-to-float v7, v7

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    iget v2, v2, Lbny;->b:I

    int-to-float v2, v2

    const/high16 v8, 0x3f00

    sub-float/2addr v2, v8

    invoke-direct {v4, v7, v2}, Lbns;-><init>(FF)V

    const/4 v2, 0x4

    new-array v2, v2, [Lbns;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    const/4 v3, 0x3

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lbnx;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lbnx;->e:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lbnx;->a([Lbns;FF)[Lbns;

    move-result-object v22

    .line 71
    if-eqz p1, :cond_5

    .line 72
    const/4 v2, 0x0

    aget-object v2, v22, v2

    .line 73
    const/4 v3, 0x0

    const/4 v4, 0x2

    aget-object v4, v22, v4

    aput-object v4, v22, v3

    .line 74
    const/4 v3, 0x2

    aput-object v2, v22, v3

    .line 78
    :cond_5
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbnx;->a(Lbns;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    aget-object v2, v22, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbnx;->a(Lbns;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    aget-object v2, v22, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbnx;->a(Lbns;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    aget-object v2, v22, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbnx;->a(Lbns;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 69
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 78
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lbnx;->e:I

    mul-int/lit8 v4, v2, 0x2

    const/4 v2, 0x4

    new-array v5, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v22, v3

    const/4 v6, 0x1

    aget-object v6, v22, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v4}, Lbnx;->a(Lbns;Lbns;I)I

    move-result v3

    aput v3, v5, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v22, v3

    const/4 v6, 0x2

    aget-object v6, v22, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v4}, Lbnx;->a(Lbns;Lbns;I)I

    move-result v3

    aput v3, v5, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-object v3, v22, v3

    const/4 v6, 0x3

    aget-object v6, v22, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v4}, Lbnx;->a(Lbns;Lbns;I)I

    move-result v3

    aput v3, v5, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    aget-object v3, v22, v3

    const/4 v6, 0x0

    aget-object v6, v22, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v4}, Lbnx;->a(Lbns;Lbns;I)I

    move-result v3

    aput v3, v5, v2

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v6, 0x4

    if-ge v2, v6, :cond_9

    aget v6, v5, v2

    add-int/lit8 v7, v4, -0x2

    shr-int v7, v6, v7

    shl-int/lit8 v7, v7, 0x1

    and-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v7

    shl-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    and-int/lit8 v2, v3, 0x1

    shl-int/lit8 v2, v2, 0xb

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    const/4 v2, 0x0

    :goto_5
    const/4 v4, 0x4

    if-ge v2, v4, :cond_b

    sget-object v4, Lbnx;->g:[I

    aget v4, v4, v2

    xor-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    const/4 v6, 0x2

    if-gt v4, v6, :cond_a

    move-object/from16 v0, p0

    iput v2, v0, Lbnx;->f:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_6
    const/4 v6, 0x4

    if-ge v4, v6, :cond_d

    move-object/from16 v0, p0

    iget v6, v0, Lbnx;->f:I

    add-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x4

    aget v6, v5, v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lbnx;->b:Z

    if-eqz v7, :cond_c

    const/4 v7, 0x7

    shl-long/2addr v2, v7

    shr-int/lit8 v6, v6, 0x1

    and-int/lit8 v6, v6, 0x7f

    int-to-long v6, v6

    add-long/2addr v2, v6

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_c
    const/16 v7, 0xa

    shl-long/2addr v2, v7

    shr-int/lit8 v7, v6, 0x2

    and-int/lit16 v7, v7, 0x3e0

    shr-int/lit8 v6, v6, 0x1

    and-int/lit8 v6, v6, 0x1f

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v2, v6

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbnx;->b:Z

    invoke-static {v2, v3, v4}, Lbnx;->a(JZ)I

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lbnx;->b:Z

    if-eqz v3, :cond_e

    shr-int/lit8 v3, v2, 0x6

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lbnx;->c:I

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lbnx;->d:I

    .line 81
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lbnx;->a:Lboa;

    move-object/from16 v0, p0

    iget v2, v0, Lbnx;->f:I

    rem-int/lit8 v2, v2, 0x4

    aget-object v5, v22, v2

    move-object/from16 v0, p0

    iget v2, v0, Lbnx;->f:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x4

    aget-object v7, v22, v2

    move-object/from16 v0, p0

    iget v2, v0, Lbnx;->f:I

    add-int/lit8 v2, v2, 0x2

    rem-int/lit8 v2, v2, 0x4

    aget-object v9, v22, v2

    move-object/from16 v0, p0

    iget v2, v0, Lbnx;->f:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit8 v2, v2, 0x4

    aget-object v10, v22, v2

    invoke-static {}, Lbog;->a()Lbog;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lbnx;->b()I

    move-result v4

    int-to-float v6, v4

    const/high16 v8, 0x4000

    div-float/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, Lbnx;->e:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    int-to-float v8, v4

    const/high16 v11, 0x4000

    div-float/2addr v8, v11

    move-object/from16 v0, p0

    iget v11, v0, Lbnx;->e:I

    int-to-float v11, v11

    add-float/2addr v8, v11

    iget v14, v5, Lbns;->a:F

    iget v15, v5, Lbns;->b:F

    iget v0, v7, Lbns;->a:F

    move/from16 v16, v0

    iget v0, v7, Lbns;->b:F

    move/from16 v17, v0

    iget v0, v9, Lbns;->a:F

    move/from16 v18, v0

    iget v0, v9, Lbns;->b:F

    move/from16 v19, v0

    iget v0, v10, Lbns;->a:F

    move/from16 v20, v0

    iget v0, v10, Lbns;->b:F

    move/from16 v21, v0

    move v5, v4

    move v7, v6

    move v9, v6

    move v10, v8

    move v11, v8

    move v12, v6

    move v13, v8

    invoke-virtual/range {v2 .. v21}, Lbog;->a(Lboa;IIFFFFFFFFFFFFFFFF)Lboa;

    move-result-object v3

    .line 88
    move-object/from16 v0, p0

    iget v2, v0, Lbnx;->e:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct/range {p0 .. p0}, Lbnx;->b()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v22

    invoke-static {v0, v2, v4}, Lbnx;->a([Lbns;FF)[Lbns;

    move-result-object v4

    .line 90
    new-instance v2, Lbnu;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lbnx;->b:Z

    move-object/from16 v0, p0

    iget v6, v0, Lbnx;->d:I

    move-object/from16 v0, p0

    iget v7, v0, Lbnx;->c:I

    invoke-direct/range {v2 .. v7}, Lbnu;-><init>(Lboa;[Lbns;ZII)V

    return-object v2

    .line 78
    :cond_e
    shr-int/lit8 v3, v2, 0xb

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lbnx;->c:I

    and-int/lit16 v2, v2, 0x7ff

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lbnx;->d:I

    goto/16 :goto_8
.end method
