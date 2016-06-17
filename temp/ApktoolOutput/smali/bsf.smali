.class public final Lbsf;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field public final a:Lboa;

.field public b:Lbnt;


# direct methods
.method public constructor <init>(Lboa;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lbsf;->a:Lboa;

    .line 46
    return-void
.end method

.method private a(IIII)F
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 268
    invoke-direct {p0, p1, p2, p3, p4}, Lbsf;->b(IIII)F

    move-result v4

    .line 272
    sub-int v0, p3, p1

    sub-int v0, p1, v0

    .line 273
    if-gez v0, :cond_0

    .line 274
    int-to-float v3, p1

    sub-int v0, p1, v0

    int-to-float v0, v0

    div-float v0, v3, v0

    move v3, v2

    .line 280
    :goto_0
    int-to-float v5, p2

    sub-int v6, p4, p2

    int-to-float v6, v6

    mul-float/2addr v0, v6

    sub-float v0, v5, v0

    float-to-int v0, v0

    .line 283
    if-gez v0, :cond_1

    .line 284
    int-to-float v5, p2

    sub-int v0, p2, v0

    int-to-float v0, v0

    div-float v0, v5, v0

    .line 290
    :goto_1
    int-to-float v5, p1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    .line 292
    invoke-direct {p0, p1, p2, v0, v2}, Lbsf;->b(IIII)F

    move-result v0

    add-float/2addr v0, v4

    .line 295
    sub-float/2addr v0, v1

    return v0

    .line 276
    :cond_0
    iget-object v3, p0, Lbsf;->a:Lboa;

    iget v3, v3, Lboa;->a:I

    if-lt v0, v3, :cond_3

    .line 277
    iget-object v3, p0, Lbsf;->a:Lboa;

    iget v3, v3, Lboa;->a:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    sub-int/2addr v0, p1

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 278
    iget-object v3, p0, Lbsf;->a:Lboa;

    iget v3, v3, Lboa;->a:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 286
    :cond_1
    iget-object v2, p0, Lbsf;->a:Lboa;

    iget v2, v2, Lboa;->b:I

    if-lt v0, v2, :cond_2

    .line 287
    iget-object v2, p0, Lbsf;->a:Lboa;

    iget v2, v2, Lboa;->b:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p2

    int-to-float v2, v2

    sub-int/2addr v0, p2

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 288
    iget-object v2, p0, Lbsf;->a:Lboa;

    iget v2, v2, Lboa;->b:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_0
.end method

.method private a(Lbns;Lbns;)F
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x40e0

    .line 242
    iget v0, p1, Lbns;->a:F

    float-to-int v0, v0

    iget v1, p1, Lbns;->b:F

    float-to-int v1, v1

    iget v2, p2, Lbns;->a:F

    float-to-int v2, v2

    iget v3, p2, Lbns;->b:F

    float-to-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lbsf;->a(IIII)F

    move-result v0

    .line 246
    iget v1, p2, Lbns;->a:F

    float-to-int v1, v1

    iget v2, p2, Lbns;->b:F

    float-to-int v2, v2

    iget v3, p1, Lbns;->a:F

    float-to-int v3, v3

    iget v4, p1, Lbns;->b:F

    float-to-int v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lbsf;->a(IIII)F

    move-result v1

    .line 250
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    div-float v0, v1, v5

    .line 258
    :goto_0
    return v0

    .line 253
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    div-float/2addr v0, v5

    goto :goto_0

    .line 258
    :cond_1
    add-float/2addr v0, v1

    const/high16 v1, 0x4160

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private b(IIII)F
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v4, p3, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    move v12, v3

    .line 310
    :goto_0
    if-eqz v12, :cond_c

    .line 319
    :goto_1
    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 320
    sub-int v3, p3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 321
    neg-int v3, v13

    div-int/lit8 v5, v3, 0x2

    .line 322
    move/from16 v0, p2

    move/from16 v1, p4

    if-ge v0, v1, :cond_1

    const/4 v3, 0x1

    move v11, v3

    .line 323
    :goto_2
    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    const/4 v3, 0x1

    .line 326
    :goto_3
    const/4 v6, 0x0

    .line 328
    add-int v15, p4, v11

    move/from16 v8, p2

    move v10, v5

    move/from16 v5, p1

    .line 329
    :goto_4
    if-eq v8, v15, :cond_b

    .line 330
    if-eqz v12, :cond_3

    move v9, v5

    .line 331
    :goto_5
    if-eqz v12, :cond_4

    move v7, v8

    .line 336
    :goto_6
    const/4 v4, 0x1

    if-ne v6, v4, :cond_5

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lbsf;->a:Lboa;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v7}, Lboa;->a(II)Z

    move-result v7

    if-ne v4, v7, :cond_a

    .line 337
    const/4 v4, 0x2

    if-ne v6, v4, :cond_6

    .line 338
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v8, v5, v0, v1}, Ld;->a(IIII)F

    move-result v3

    .line 359
    :goto_8
    return v3

    .line 309
    :cond_0
    const/4 v3, 0x0

    move v12, v3

    goto :goto_0

    .line 322
    :cond_1
    const/4 v3, -0x1

    move v11, v3

    goto :goto_2

    .line 323
    :cond_2
    const/4 v3, -0x1

    goto :goto_3

    :cond_3
    move v9, v8

    .line 330
    goto :goto_5

    :cond_4
    move v7, v5

    .line 331
    goto :goto_6

    .line 336
    :cond_5
    const/4 v4, 0x0

    goto :goto_7

    .line 340
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .line 343
    :goto_9
    add-int v6, v10, v14

    .line 344
    if-lez v6, :cond_9

    .line 345
    move/from16 v0, p3

    if-eq v5, v0, :cond_7

    .line 346
    add-int v4, v5, v3

    .line 349
    sub-int v5, v6, v13

    .line 329
    :goto_a
    add-int/2addr v8, v11

    move v6, v7

    move v10, v5

    move v5, v4

    goto :goto_4

    :cond_7
    move v3, v7

    .line 355
    :goto_b
    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 356
    add-int v3, p4, v11

    move/from16 v0, p3

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v3, v0, v1, v2}, Ld;->a(IIII)F

    move-result v3

    goto :goto_8

    .line 359
    :cond_8
    const/high16 v3, 0x7fc0

    goto :goto_8

    :cond_9
    move v4, v5

    move v5, v6

    goto :goto_a

    :cond_a
    move v7, v6

    goto :goto_9

    :cond_b
    move v3, v6

    goto :goto_b

    :cond_c
    move/from16 v17, p4

    move/from16 p4, p3

    move/from16 p3, v17

    move/from16 v18, p2

    move/from16 p2, p1

    move/from16 p1, v18

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Lbsh;)Lboe;
    .locals 24
    .parameter

    .prologue
    .line 89
    move-object/from16 v0, p1

    iget-object v0, v0, Lbsh;->b:Lbsg;

    move-object/from16 v21, v0

    .line 90
    move-object/from16 v0, p1

    iget-object v0, v0, Lbsh;->c:Lbsg;

    move-object/from16 v22, v0

    .line 91
    move-object/from16 v0, p1

    iget-object v0, v0, Lbsh;->a:Lbsg;

    move-object/from16 v23, v0

    .line 93
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lbsf;->a(Lbns;Lbns;)F

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lbsf;->a(Lbns;Lbns;)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v9, v3, v4

    .line 94
    const/high16 v3, 0x3f80

    cmpg-float v3, v9, v3

    if-gez v3, :cond_0

    .line 95
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 97
    :cond_0
    invoke-static/range {v21 .. v22}, Lbns;->a(Lbns;Lbns;)F

    move-result v3

    div-float/2addr v3, v9

    invoke-static {v3}, Ld;->a(F)I

    move-result v3

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lbns;->a(Lbns;Lbns;)F

    move-result v4

    div-float/2addr v4, v9

    invoke-static {v4}, Ld;->a(F)I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x7

    and-int/lit8 v4, v3, 0x3

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move/from16 v19, v3

    .line 98
    :goto_0
    invoke-static/range {v19 .. v19}, Lbsa;->a(I)Lbsa;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lbsa;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    .line 101
    const/4 v11, 0x0

    .line 103
    iget-object v3, v3, Lbsa;->b:[I

    array-length v3, v3

    if-lez v3, :cond_f

    .line 106
    move-object/from16 v0, v22

    iget v3, v0, Lbns;->a:F

    move-object/from16 v0, v21

    iget v5, v0, Lbns;->a:F

    sub-float/2addr v3, v5

    move-object/from16 v0, v23

    iget v5, v0, Lbns;->a:F

    add-float/2addr v3, v5

    .line 107
    move-object/from16 v0, v22

    iget v5, v0, Lbns;->b:F

    move-object/from16 v0, v21

    iget v6, v0, Lbns;->b:F

    sub-float/2addr v5, v6

    move-object/from16 v0, v23

    iget v6, v0, Lbns;->b:F

    add-float/2addr v5, v6

    .line 111
    const/high16 v6, 0x3f80

    const/high16 v7, 0x4040

    int-to-float v4, v4

    div-float v4, v7, v4

    sub-float v4, v6, v4

    .line 112
    move-object/from16 v0, v21

    iget v6, v0, Lbns;->a:F

    move-object/from16 v0, v21

    iget v7, v0, Lbns;->a:F

    sub-float/2addr v3, v7

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v13, v3

    .line 113
    move-object/from16 v0, v21

    iget v3, v0, Lbns;->b:F

    move-object/from16 v0, v21

    iget v6, v0, Lbns;->b:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v14, v3

    .line 116
    const/4 v3, 0x4

    move v12, v3

    :goto_1
    const/16 v3, 0x10

    if-gt v12, v3, :cond_f

    .line 118
    int-to-float v3, v12

    mul-float/2addr v3, v9

    float-to-int v3, v3

    const/4 v4, 0x0

    sub-int v5, v13, v3

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lbsf;->a:Lboa;

    iget v4, v4, Lboa;->a:I

    add-int/lit8 v4, v4, -0x1

    add-int v6, v13, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v4, v7, v5

    int-to-float v4, v4

    const/high16 v6, 0x4040

    mul-float/2addr v6, v9

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :catch_0
    move-exception v3

    shl-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_1

    .line 97
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    move/from16 v19, v3

    goto/16 :goto_0

    :pswitch_2
    add-int/lit8 v3, v3, -0x1

    move/from16 v19, v3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 118
    :cond_1
    const/4 v4, 0x0

    sub-int v6, v14, v3

    :try_start_1
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lbsf;->a:Lboa;

    iget v4, v4, Lboa;->b:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v14

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v3, v8, v6

    int-to-float v3, v3

    const/high16 v4, 0x4040

    mul-float/2addr v4, v9

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    :cond_2
    new-instance v3, Lbse;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbsf;->a:Lboa;

    sub-int/2addr v7, v5

    sub-int/2addr v8, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lbsf;->b:Lbnt;

    invoke-direct/range {v3 .. v10}, Lbse;-><init>(Lboa;IIIIFLbnt;)V

    iget v6, v3, Lbse;->c:I

    iget v8, v3, Lbse;->f:I

    iget v4, v3, Lbse;->e:I

    add-int v10, v6, v4

    iget v4, v3, Lbse;->d:I

    div-int/lit8 v5, v8, 0x2

    add-int v15, v4, v5

    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v16, v0

    const/4 v4, 0x0

    move v7, v4

    :goto_2
    if-ge v7, v8, :cond_b

    and-int/lit8 v4, v7, 0x1

    if-nez v4, :cond_3

    add-int/lit8 v4, v7, 0x1

    div-int/lit8 v4, v4, 0x2

    :goto_3
    add-int v17, v15, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v16, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v16, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v16, v4

    move v5, v6

    :goto_4
    if-ge v5, v10, :cond_4

    iget-object v4, v3, Lbse;->a:Lboa;

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lboa;->a(II)Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v7, 0x1

    div-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_5
    if-ge v5, v10, :cond_9

    iget-object v0, v3, Lbse;->a:Lboa;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lboa;->a(II)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_8

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v4, v0, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lbse;->a([I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1, v5}, Lbse;->a([III)Lbsd;
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v3, v4

    :goto_6
    move-object/from16 v20, v3

    .line 130
    :goto_7
    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v4, 0x4060

    sub-float v5, v3, v4

    if-eqz v20, :cond_d

    move-object/from16 v0, v20

    iget v15, v0, Lbns;->a:F

    move-object/from16 v0, v20

    iget v0, v0, Lbns;->b:F

    move/from16 v16, v0

    const/high16 v3, 0x4040

    sub-float v7, v5, v3

    move v8, v7

    :goto_8
    const/high16 v3, 0x4060

    const/high16 v4, 0x4060

    const/high16 v6, 0x4060

    const/high16 v9, 0x4060

    move-object/from16 v0, v21

    iget v11, v0, Lbns;->a:F

    move-object/from16 v0, v21

    iget v12, v0, Lbns;->b:F

    move-object/from16 v0, v22

    iget v13, v0, Lbns;->a:F

    move-object/from16 v0, v22

    iget v14, v0, Lbns;->b:F

    move-object/from16 v0, v23

    iget v0, v0, Lbns;->a:F

    move/from16 v17, v0

    move-object/from16 v0, v23

    iget v0, v0, Lbns;->b:F

    move/from16 v18, v0

    move v10, v5

    invoke-static/range {v3 .. v18}, Lboi;->a(FFFFFFFFFFFFFFFF)Lboi;

    move-result-object v3

    .line 133
    move-object/from16 v0, p0

    iget-object v4, v0, Lbsf;->a:Lboa;

    invoke-static {}, Lbog;->a()Lbog;

    move-result-object v5

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v5, v4, v0, v1, v3}, Lbog;->a(Lboa;IILboi;)Lboa;

    move-result-object v4

    .line 136
    if-nez v20, :cond_e

    .line 137
    const/4 v3, 0x3

    new-array v3, v3, [Lbns;

    const/4 v5, 0x0

    aput-object v23, v3, v5

    const/4 v5, 0x1

    aput-object v21, v3, v5

    const/4 v5, 0x2

    aput-object v22, v3, v5

    .line 141
    :goto_9
    new-instance v5, Lboe;

    invoke-direct {v5, v4, v3}, Lboe;-><init>(Lboa;[Lbns;)V

    return-object v5

    .line 118
    :cond_5
    const/4 v4, 0x0

    const/16 v18, 0x2

    :try_start_2
    aget v18, v16, v18

    aput v18, v16, v4

    const/4 v4, 0x1

    const/16 v18, 0x1

    aput v18, v16, v4

    const/4 v4, 0x2

    const/16 v18, 0x0

    aput v18, v16, v4

    const/4 v4, 0x1

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    aget v18, v16, v4

    add-int/lit8 v18, v18, 0x1

    aput v18, v16, v4

    goto :goto_a

    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    add-int/lit8 v4, v4, 0x1

    :cond_8
    aget v18, v16, v4

    add-int/lit8 v18, v18, 0x1

    aput v18, v16, v4

    goto :goto_a

    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lbse;->a([I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1, v10}, Lbse;->a([III)Lbsd;

    move-result-object v4

    if-eqz v4, :cond_a

    move-object v3, v4

    goto/16 :goto_6

    :cond_a
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_2

    :cond_b
    iget-object v4, v3, Lbse;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v3, v3, Lbse;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbsd;

    goto/16 :goto_6

    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    :cond_d
    move-object/from16 v0, v22

    iget v3, v0, Lbns;->a:F

    move-object/from16 v0, v21

    iget v4, v0, Lbns;->a:F

    sub-float/2addr v3, v4

    move-object/from16 v0, v23

    iget v4, v0, Lbns;->a:F

    add-float v15, v3, v4

    move-object/from16 v0, v22

    iget v3, v0, Lbns;->b:F

    move-object/from16 v0, v21

    iget v4, v0, Lbns;->b:F

    sub-float/2addr v3, v4

    move-object/from16 v0, v23

    iget v4, v0, Lbns;->b:F

    add-float v16, v3, v4

    move v7, v5

    move v8, v5

    goto/16 :goto_8

    .line 139
    :cond_e
    const/4 v3, 0x4

    new-array v3, v3, [Lbns;

    const/4 v5, 0x0

    aput-object v23, v3, v5

    const/4 v5, 0x1

    aput-object v21, v3, v5

    const/4 v5, 0x2

    aput-object v22, v3, v5

    const/4 v5, 0x3

    aput-object v20, v3, v5

    goto/16 :goto_9

    :cond_f
    move-object/from16 v20, v11

    goto/16 :goto_7

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
