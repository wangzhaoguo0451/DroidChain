.class public Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;
.super Landroid/widget/FrameLayout;
.source "RippleSwipeBackContainer.java"


# instance fields
.field public a:I

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:F

.field public e:Z

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/MotionEvent;

.field private p:Lhnh;

.field private q:I

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->s:Z

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->s:Z

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->s:Z

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->f:F

    .line 85
    if-eqz p2, :cond_0

    .line 86
    sget-object v0, Lcom/wandoujia/ripple_framework/R$styleable;->RippleSwipeBackContainer:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->RippleSwipeBackContainer_swipeOrientation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a:I

    .line 90
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->RippleSwipeBackContainer_swipeThreshold:I

    const/high16 v2, 0x4334

    invoke-static {p1, v2}, Ld;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->g:I

    .line 92
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->RippleSwipeBackContainer_swipeThreshold:I

    const/high16 v2, 0x42c8

    invoke-static {p1, v2}, Ld;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->h:I

    .line 95
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->RippleSwipeBackContainer_enableThreshold:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->i:I

    .line 97
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->RippleSwipeBackContainer_anchor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->j:I

    .line 98
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->RippleSwipeBackContainer_targetIn:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->k:I

    .line 99
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->RippleSwipeBackContainer_targetOut:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->l:I

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    return-object v0
.end method

.method private b(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 485
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->n:Landroid/view/View;

    .line 486
    if-nez p1, :cond_1

    move v1, v2

    .line 487
    :goto_0
    instance-of v4, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_5

    .line 488
    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    .line 505
    :cond_0
    :goto_1
    return v2

    .line 486
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v2, p0, v0}, Lgf;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    sget v2, Lcom/wandoujia/ripple_framework/R$id;->recycler_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    invoke-static {v0, v1}, Lgs;->b(Landroid/view/View;I)Z

    move-result v2

    goto :goto_1

    .line 489
    :cond_5
    instance-of v4, v0, Lgn;

    if-nez v4, :cond_6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_7

    .line 490
    :cond_6
    invoke-static {v0, v1}, Lgs;->b(Landroid/view/View;I)Z

    move-result v2

    goto :goto_1

    .line 492
    :cond_7
    if-nez p1, :cond_9

    .line 493
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_8

    move v2, v3

    .line 494
    goto :goto_1

    .line 496
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lt v1, v0, :cond_0

    move v2, v3

    goto :goto_1

    .line 499
    :cond_9
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_b

    .line 500
    check-cast v0, Landroid/widget/AbsListView;

    .line 501
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-lt v1, v0, :cond_0

    :cond_a
    move v2, v3

    goto :goto_1

    .line 505
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_1
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->e:Z

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->e:Z

    .line 238
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b()V

    .line 239
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    invoke-static {v0}, Lgs;->n(Landroid/view/View;)F

    move-result v2

    .line 240
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    invoke-static {v0}, Lgs;->f(Landroid/view/View;)F

    move-result v0

    .line 242
    :goto_1
    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    if-eqz v3, :cond_1

    const/high16 v1, 0x3f80

    .line 243
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    .line 244
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 245
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 246
    new-instance v4, Lhmz;

    invoke-direct {v4, p0, v2, v0, v1}, Lhmz;-><init>(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;FFF)V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 256
    new-instance v0, Lhna;

    invoke-direct {v0, p0, v1}, Lhna;-><init>(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;F)V

    invoke-virtual {v3, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 266
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 240
    goto :goto_1

    .line 243
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static synthetic c(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->e:Z

    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;)Lhnh;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->p:Lhnh;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 375
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->p:Lhnh;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->p:Lhnh;

    invoke-virtual {v0}, Lhnh;->a()V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lgs;->e(Landroid/view/View;F)V

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->e:Z

    .line 405
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lgs;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 384
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    invoke-static {v0}, Lgs;->q(Landroid/view/View;)Lig;

    move-result-object v1

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->d:F

    iget-object v0, v1, Lig;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    sget-object v3, Lig;->b:Lio;

    invoke-virtual {v3, v1, v0, v2}, Lio;->d(Lig;Landroid/view/View;F)V

    :cond_2
    invoke-virtual {v1}, Lig;->a()Lig;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lig;->a(J)Lig;

    move-result-object v0

    new-instance v1, Lhne;

    invoke-direct {v1, p0}, Lhne;-><init>(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;)V

    invoke-virtual {v0, v1}, Lig;->a(Lis;)Lig;

    move-result-object v0

    invoke-virtual {v0}, Lig;->c()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 413
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->e:Z

    if-eqz v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->setEnabled(Z)V

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->e:Z

    .line 418
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b()V

    .line 419
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lgs;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 420
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    invoke-static {v0}, Lgs;->n(Landroid/view/View;)F

    move-result v2

    .line 422
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 424
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    invoke-static {v1}, Lgs;->f(Landroid/view/View;)F

    move-result v1

    .line 425
    :goto_2
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    .line 428
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 429
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 430
    new-instance v4, Lhnf;

    invoke-direct {v4, p0, v2, v0, v1}, Lhnf;-><init>(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;FFF)V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 440
    new-instance v1, Lhng;

    invoke-direct {v1, p0, v0}, Lhng;-><init>(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;F)V

    invoke-virtual {v3, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 461
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    .line 424
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 425
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    if-nez v0, :cond_1

    .line 468
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->l:I

    if-eqz v0, :cond_3

    .line 469
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->l:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    .line 473
    :cond_0
    :goto_0
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->j:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    :goto_1
    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->n:Landroid/view/View;

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    if-nez v0, :cond_2

    .line 476
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->k:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    :goto_2
    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    .line 478
    :cond_2
    return-void

    .line 470
    :cond_3
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    goto :goto_0

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->j:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 476
    :cond_5
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->k:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b()V

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->e:Z

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->r:Z

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->r:Z

    if-eqz v0, :cond_2

    move v2, v1

    .line 168
    :cond_1
    :goto_0
    return v2

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->i:I

    if-lez v0, :cond_4

    .line 132
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a:I

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a:I

    if-ne v3, v5, :cond_6

    move v3, v1

    :goto_2
    or-int/2addr v0, v3

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->i:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 135
    :cond_3
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_3
    iget v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a:I

    if-ne v3, v5, :cond_8

    move v3, v1

    :goto_4
    or-int/2addr v0, v3

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->i:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 139
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 140
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 142
    :pswitch_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->o:Landroid/view/MotionEvent;

    .line 143
    iput-boolean v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->s:Z

    .line 144
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a:I

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    goto :goto_0

    :cond_5
    move v0, v2

    .line 132
    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v0, v2

    .line 135
    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->o:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->o:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->f:F

    sub-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    .line 150
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    if-ne v0, v5, :cond_9

    .line 151
    iput v2, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    .line 159
    :cond_9
    :goto_5
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    if-eq v0, v5, :cond_1

    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    const-string v0, "SwipeBack"

    const-string v3, "intercept true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 161
    goto/16 :goto_0

    .line 153
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->o:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->f:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    .line 154
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    if-ne v0, v5, :cond_9

    .line 155
    iput v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    goto :goto_5

    .line 140
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
    .line 114
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 115
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b()V

    .line 116
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 173
    iget-boolean v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->r:Z

    if-eqz v3, :cond_0

    move v0, v2

    .line 230
    :goto_0
    return v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 177
    goto :goto_0

    .line 179
    :cond_1
    iget v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    invoke-direct {p0, v3}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    const-string v3, "SwipeBack"

    const-string v4, "on touch child can scroll"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iput-boolean v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->s:Z

    .line 184
    :cond_2
    iget-boolean v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->s:Z

    if-nez v3, :cond_3

    .line 185
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c()V

    move v0, v1

    .line 186
    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 189
    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_1
    move v0, v2

    .line 230
    goto :goto_0

    .line 191
    :pswitch_0
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v4, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->o:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v1, v4

    .line 193
    iget v4, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    if-nez v4, :cond_8

    .line 194
    cmpl-float v4, v1, v0

    if-lez v4, :cond_7

    .line 208
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 209
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    const/high16 v4, 0x3f80

    int-to-float v3, v3

    div-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v4, v3

    invoke-static {v1, v3}, Lgs;->c(Landroid/view/View;F)V

    .line 211
    :cond_6
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->m:Landroid/view/View;

    invoke-static {v1, v0}, Lgs;->b(Landroid/view/View;F)V

    goto :goto_1

    .line 196
    :cond_7
    neg-int v0, v3

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_d

    .line 197
    neg-int v0, v3

    int-to-float v0, v0

    goto :goto_2

    .line 199
    :cond_8
    iget v4, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    if-ne v4, v2, :cond_9

    .line 200
    cmpg-float v4, v1, v0

    if-ltz v4, :cond_5

    .line 202
    int-to-float v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_d

    .line 203
    int-to-float v0, v3

    goto :goto_2

    :cond_9
    move v0, v2

    .line 206
    goto :goto_0

    .line 215
    :pswitch_1
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    if-nez v0, :cond_b

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->o:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->g:I

    rsub-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    .line 217
    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a(I)V

    goto :goto_1

    .line 219
    :cond_a
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c()V

    goto :goto_1

    .line 221
    :cond_b
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->q:I

    if-ne v0, v2, :cond_4

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->o:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->h:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 223
    invoke-virtual {p0, v2}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a(I)V

    goto/16 :goto_1

    .line 225
    :cond_c
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c()V

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_2

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->n:Landroid/view/View;

    .line 110
    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    .line 106
    return-void
.end method

.method public setOnAnimListener(Lhnh;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->p:Lhnh;

    .line 539
    return-void
.end method
