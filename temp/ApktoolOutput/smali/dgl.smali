.class public final Ldgl;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 444
    invoke-direct {p0, p1}, Ldgl;-><init>(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/high16 v7, 0x3f80

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 453
    const v0, 0x3f733333

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff0cccccccccccdL

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 454
    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v1

    .line 455
    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2, v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;F)F

    .line 456
    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 457
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;F)F

    .line 458
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v0

    div-float/2addr v0, v1

    .line 463
    :cond_0
    :goto_0
    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->g(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    mul-float/2addr v3, v6

    iget-object v4, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v4}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;F)F

    .line 464
    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->i(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    mul-float/2addr v3, v6

    iget-object v4, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v4}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;F)F

    .line 465
    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->j(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v1

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->k(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v1

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    .line 466
    :cond_1
    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    div-float/2addr v2, v6

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    div-float/2addr v3, v6

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 467
    cmpg-float v1, v0, v7

    if-gez v1, :cond_2

    .line 468
    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 469
    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)[F

    move-result-object v1

    aget v1, v1, v8

    .line 470
    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)[F

    move-result-object v2

    aget v2, v2, v9

    .line 471
    cmpg-float v0, v0, v7

    if-gez v0, :cond_2

    .line 472
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->j(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v0

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    .line 473
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->n(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v0

    neg-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    .line 474
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->n(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v1

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 505
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 459
    :cond_3
    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 460
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;F)F

    .line 461
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v0

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 475
    :cond_4
    cmpl-float v0, v2, v5

    if-lez v0, :cond_2

    .line 476
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 479
    :cond_5
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->o(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v0

    neg-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_6

    .line 480
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->o(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v2

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 481
    :cond_6
    cmpl-float v0, v1, v5

    if-lez v0, :cond_2

    .line 482
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 488
    :cond_7
    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 489
    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 490
    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)[F

    move-result-object v1

    aget v1, v1, v8

    .line 491
    iget-object v2, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)[F

    move-result-object v2

    aget v2, v2, v9

    .line 492
    cmpg-float v0, v0, v7

    if-gez v0, :cond_2

    .line 493
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->o(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v0

    neg-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_9

    .line 494
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v3, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->o(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v3

    add-float/2addr v1, v3

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 498
    :cond_8
    :goto_2
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->n(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v0

    neg-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_a

    .line 499
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->n(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F

    move-result v1

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 495
    :cond_9
    cmpl-float v0, v1, v5

    if-lez v0, :cond_8

    .line 496
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 500
    :cond_a
    cmpl-float v0, v2, v5

    if-lez v0, :cond_2

    .line 501
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Ldgl;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)I

    .line 448
    const/4 v0, 0x1

    return v0
.end method
