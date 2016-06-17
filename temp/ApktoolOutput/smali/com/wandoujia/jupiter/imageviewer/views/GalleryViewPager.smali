.class public Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "GalleryViewPager.java"


# instance fields
.field public c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

.field private d:Landroid/graphics/PointF;

.field private e:I

.field private f:Lhw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->e:I

    .line 26
    new-instance v0, Ldgk;

    invoke-direct {v0, p0}, Ldgk;-><init>(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)V

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lhw;)V

    .line 53
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 14
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->e:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->e:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d()V

    iget-object v2, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v3, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    iget v4, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    div-float/2addr v3, v4

    iget v4, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    iget v5, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    div-float/2addr v4, v5

    iget v5, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    div-float/2addr v5, v8

    iget v6, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    div-float/2addr v6, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget v2, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    iput v2, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c()V

    invoke-virtual {v1, v7, v7}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a(FF)V

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e()V

    iget-object v2, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->invalidate()V

    :cond_0
    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->e:I

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)[F
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 71
    :pswitch_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->d:Landroid/graphics/PointF;

    goto :goto_0

    .line 75
    :pswitch_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->d:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    aput v2, v0, v4

    const/4 v2, 0x1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->d:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    aput v1, v0, v2

    goto :goto_1

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)Lhw;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->f:Lhw;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->a(Landroid/view/MotionEvent;)[F

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 134
    :cond_1
    :goto_0
    return v0

    .line 120
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-boolean v2, v2, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->g:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    aget v2, v1, v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 124
    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-boolean v2, v2, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    aget v2, v1, v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_4
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-boolean v1, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-boolean v1, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->g:Z

    if-eqz v1, :cond_1

    .line 129
    :cond_5
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->a(Landroid/view/MotionEvent;)[F

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 105
    :cond_1
    :goto_0
    return v0

    .line 92
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-boolean v2, v2, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->g:Z

    if-eqz v2, :cond_3

    aget v2, v1, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 96
    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-boolean v2, v2, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f:Z

    if-eqz v2, :cond_4

    aget v2, v1, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 100
    :cond_4
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-boolean v1, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iget-boolean v1, v1, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->g:Z

    if-eqz v1, :cond_1

    .line 101
    :cond_5
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnPageChangeListener(Lhw;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->f:Lhw;

    .line 58
    return-void
.end method
