.class public Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;
.super Landroid/widget/FrameLayout;
.source "SwipeBackContainer.java"


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/MotionEvent;

.field private g:Lhoc;

.field private h:Z

.field private i:Lhoa;

.field private j:Lhod;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->d:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->a:F

    .line 65
    if-eqz p2, :cond_0

    .line 66
    sget-object v0, Lcom/wandoujia/ripple_framework/R$styleable;->RippleSwipeBackContainer:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->RippleSwipeBackContainer_swipeOrientation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->c:I

    .line 70
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->RippleSwipeBackContainer_swipeThreshold:I

    const/high16 v2, 0x42c8

    invoke-static {p1, v2}, Ld;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->b:I

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    :cond_0
    new-instance v0, Lhob;

    invoke-direct {v0, p0}, Lhob;-><init>(Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->i:Lhoa;

    .line 75
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->setTargetTransY(F)V

    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->c()V

    .line 181
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->e:Landroid/view/View;

    invoke-static {v0}, Lgs;->n(Landroid/view/View;)F

    move-result v2

    .line 182
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->d:Landroid/view/View;

    invoke-static {v0}, Lgs;->f(Landroid/view/View;)F

    move-result v0

    .line 184
    :goto_0
    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->d:Landroid/view/View;

    if-eqz v3, :cond_0

    const/high16 v1, 0x3f80

    .line 185
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    .line 186
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 187
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    new-instance v4, Lhnx;

    invoke-direct {v4, p0, v2, v0, v1}, Lhnx;-><init>(Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;FFF)V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 198
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 199
    return-void

    :cond_1
    move v0, v1

    .line 182
    goto :goto_0

    .line 185
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->h:Z

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;)Lhoc;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->g:Lhoc;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->e:Landroid/view/View;

    .line 247
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->c()V

    .line 255
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->i:Lhoa;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->e:Landroid/view/View;

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->c:I

    invoke-interface {v0, v1, v2}, Lhoa;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method private setTargetTransY(F)V
    .locals 3
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->e:Landroid/view/View;

    invoke-static {v0, p1}, Lgs;->b(Landroid/view/View;F)V

    .line 264
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->j:Lhod;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->j:Lhod;

    iget-object v1, v0, Lhod;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->a(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lhod;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->b(Lcom/wandoujia/jupiter/fragment/DetailFragment;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    iget-object v1, v0, Lhod;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->j(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lhod;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->j(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lgs;->b(Landroid/view/View;F)V

    .line 267
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 202
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->h:Z

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 205
    :cond_0
    iput-boolean v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->k:Z

    .line 206
    iput-boolean v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->h:Z

    .line 207
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->c()V

    .line 208
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->e:Landroid/view/View;

    invoke-static {v0}, Lgs;->n(Landroid/view/View;)F

    move-result v2

    .line 209
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 211
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->d:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->d:Landroid/view/View;

    invoke-static {v1}, Lgs;->f(Landroid/view/View;)F

    move-result v1

    .line 212
    :goto_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    .line 215
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 216
    const/high16 v4, 0x4396

    mul-float/2addr v4, v1

    float-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 217
    new-instance v4, Lhny;

    invoke-direct {v4, p0, v2, v0, v1}, Lhny;-><init>(Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;FFF)V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 227
    new-instance v0, Lhnz;

    invoke-direct {v0, p0}, Lhnz;-><init>(Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;)V

    invoke-virtual {v3, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 236
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    .line 211
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 212
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->c()V

    .line 101
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 128
    :goto_0
    return v0

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 105
    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v0, v1

    .line 128
    goto :goto_0

    .line 107
    :pswitch_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->f:Landroid/view/MotionEvent;

    goto :goto_1

    .line 110
    :pswitch_2
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->f:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    .line 111
    iget v2, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->c:I

    if-nez v2, :cond_3

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->f:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->a:F

    sub-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->f:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->a:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 95
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->c()V

    .line 96
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->k:Z

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 137
    packed-switch v1, :pswitch_data_0

    .line 176
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->f:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v1, v3

    .line 141
    iget v3, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->c:I

    if-nez v3, :cond_5

    .line 142
    cmpl-float v3, v1, v0

    if-lez v3, :cond_4

    .line 154
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->d:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->d:Landroid/view/View;

    const/high16 v3, 0x3f80

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v1, v2}, Lgs;->c(Landroid/view/View;F)V

    .line 157
    :cond_3
    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->setTargetTransY(F)V

    goto :goto_1

    .line 144
    :cond_4
    neg-int v0, v2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_9

    .line 145
    neg-int v0, v2

    int-to-float v0, v0

    goto :goto_2

    .line 148
    :cond_5
    cmpg-float v3, v1, v0

    if-ltz v3, :cond_2

    .line 150
    int-to-float v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_9

    .line 151
    int-to-float v0, v2

    goto :goto_2

    .line 161
    :pswitch_1
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->c:I

    if-nez v0, :cond_7

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->f:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->b:I

    rsub-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 163
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->a()V

    goto :goto_1

    .line 165
    :cond_6
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->b()V

    goto :goto_1

    .line 168
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->f:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->b:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 169
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->a()V

    goto :goto_1

    .line 171
    :cond_8
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->b()V

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_2

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->d:Landroid/view/View;

    .line 79
    return-void
.end method

.method public setOnAnimListener(Lhoc;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->g:Lhoc;

    .line 260
    return-void
.end method

.method public setScrollStateGetter(Lhoa;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->i:Lhoa;

    goto :goto_0
.end method

.method public setTargetTransListener(Lhod;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->j:Lhod;

    .line 90
    return-void
.end method
