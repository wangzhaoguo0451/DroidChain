.class public Lcom/wandoujia/p4/views/CommonPopupView;
.super Landroid/widget/FrameLayout;
.source "CommonPopupView.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/view/animation/Interpolator;


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/view/View;

.field private g:Lgpv;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/widget/Scroller;

.field private o:Landroid/view/VelocityTracker;

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/wandoujia/p4/views/CommonPopupView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/views/CommonPopupView;->a:Ljava/lang/String;

    .line 37
    new-instance v0, Lgpr;

    invoke-direct {v0}, Lgpr;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/views/CommonPopupView;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->t:Z

    .line 70
    iput-boolean v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->w:Z

    .line 85
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/views/CommonPopupView;->b:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->n:Landroid/widget/Scroller;

    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->h:I

    .line 88
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->l:I

    .line 89
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iput-boolean v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->t:Z

    .line 74
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->t:Z

    .line 70
    iput-boolean v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->w:Z

    .line 85
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/views/CommonPopupView;->b:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->n:Landroid/widget/Scroller;

    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->h:I

    .line 88
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->l:I

    .line 89
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iput-boolean v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->t:Z

    .line 78
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->t:Z

    .line 70
    iput-boolean v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->w:Z

    .line 85
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/views/CommonPopupView;->b:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->n:Landroid/widget/Scroller;

    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->h:I

    .line 88
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->l:I

    .line 89
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iput-boolean v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->t:Z

    .line 82
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/views/CommonPopupView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/wandoujia/p4/views/CommonPopupView;
    .locals 1
    .parameter

    .prologue
    .line 116
    const v0, 0x7f0301c8

    invoke-static {p0, v0}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/CommonPopupView;

    .line 118
    iput-object p0, v0, Lcom/wandoujia/p4/views/CommonPopupView;->c:Landroid/app/Activity;

    .line 119
    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 399
    const/high16 v0, 0x3f80

    neg-int v1, p1

    iget v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->i:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->i:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 400
    iget-object v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->d:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 401
    return-void
.end method

.method private a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x258

    const/4 v1, 0x0

    .line 475
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    sub-int v4, p1, v0

    .line 476
    if-nez v4, :cond_0

    .line 489
    :goto_0
    return-void

    .line 480
    :cond_0
    if-eqz p2, :cond_1

    .line 482
    const/high16 v0, 0x447a

    int-to-float v3, v4

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 484
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 485
    sget-object v0, Lcom/wandoujia/p4/views/CommonPopupView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smoothScrollY, toScrollY="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", velocity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->n:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 488
    invoke-static {p0}, Lgs;->d(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 368
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 369
    check-cast v6, Landroid/view/ViewGroup;

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 372
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 374
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 377
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 378
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/views/CommonPopupView;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    :goto_1
    return v2

    .line 374
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 387
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Lgs;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/views/CommonPopupView;)Lgpv;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->g:Lgpv;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 393
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 395
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 492
    iget v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->i:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/views/CommonPopupView;->a(II)V

    .line 493
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 501
    new-instance v0, Lgpu;

    invoke-direct {v0, p0}, Lgpu;-><init>(Lcom/wandoujia/p4/views/CommonPopupView;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/wandoujia/p4/views/CommonPopupView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 511
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 441
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 442
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 443
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->requestFocus()Z

    .line 447
    invoke-direct {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->d()V

    .line 448
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 417
    if-nez p2, :cond_0

    .line 421
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 427
    :cond_1
    iput-object p1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->f:Landroid/view/View;

    .line 428
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 429
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 430
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/views/CommonPopupView;->a(II)V

    .line 497
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 200
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/views/CommonPopupView;->a(I)V

    .line 201
    invoke-static {p0}, Lgs;->d(Landroid/view/View;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    if-ne v0, v1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->e()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->w:Z

    .line 156
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->h:I

    .line 158
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 125
    const v0, 0x7f0c0129

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/CommonPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    .line 126
    const v0, 0x7f0c0373

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/CommonPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->d:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    new-instance v1, Lgps;

    invoke-direct {v1, p0}, Lgps;-><init>(Lcom/wandoujia/p4/views/CommonPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/CommonPopupView;->setFocusableInTouchMode(Z)V

    .line 134
    new-instance v0, Lgpt;

    invoke-direct {v0, p0}, Lgpt;-><init>(Lcom/wandoujia/p4/views/CommonPopupView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/CommonPopupView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 211
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->t:Z

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v2

    .line 214
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 220
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->m:Z

    if-eqz v0, :cond_2

    .line 221
    sget-object v0, Lcom/wandoujia/p4/views/CommonPopupView;->a:Ljava/lang/String;

    const-string v1, "Already dragging, Intercept returning true!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v6

    .line 222
    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 226
    packed-switch v0, :pswitch_data_0

    .line 291
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 292
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    .line 294
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 300
    iget-boolean v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->m:Z

    goto :goto_0

    .line 228
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->r:F

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->p:F

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->s:F

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->q:F

    .line 230
    iput-boolean v6, p0, Lcom/wandoujia/p4/views/CommonPopupView;->u:Z

    .line 231
    iput-boolean v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->v:Z

    .line 232
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 235
    iput-boolean v6, p0, Lcom/wandoujia/p4/views/CommonPopupView;->m:Z

    .line 236
    iput-boolean v6, p0, Lcom/wandoujia/p4/views/CommonPopupView;->v:Z

    .line 237
    invoke-direct {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->c()V

    .line 240
    :cond_5
    sget-object v0, Lcom/wandoujia/p4/views/CommonPopupView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Down at "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->p:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->q:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 243
    :pswitch_1
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->u:Z

    if-eqz v0, :cond_0

    .line 246
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->v:Z

    if-eqz v0, :cond_6

    move v2, v6

    .line 247
    goto/16 :goto_0

    .line 249
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 251
    iget v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->q:F

    sub-float v7, v1, v3

    .line 252
    iget v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->s:F

    sub-float v3, v1, v3

    .line 253
    iget v4, p0, Lcom/wandoujia/p4/views/CommonPopupView;->r:F

    sub-float v4, v0, v4

    .line 255
    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->p:F

    .line 256
    iput v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->q:F

    .line 258
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v8, 0x4120

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_0

    .line 261
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 263
    iput-boolean v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->u:Z

    .line 264
    iput-boolean v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->v:Z

    goto/16 :goto_0

    .line 267
    :cond_7
    const/4 v3, 0x0

    cmpl-float v3, v7, v3

    if-eqz v3, :cond_8

    float-to-int v3, v7

    float-to-int v4, v0

    float-to-int v5, v1

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/views/CommonPopupView;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    sget-object v0, Lcom/wandoujia/p4/views/CommonPopupView;->a:Ljava/lang/String;

    const-string v1, "Nested view has scrollable area under this point, Intercept returning false"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 273
    :cond_8
    sget-object v0, Lcom/wandoujia/p4/views/CommonPopupView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Starting drag!, deltaY="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iput-boolean v6, p0, Lcom/wandoujia/p4/views/CommonPopupView;->m:Z

    .line 275
    iput-boolean v6, p0, Lcom/wandoujia/p4/views/CommonPopupView;->v:Z

    .line 276
    invoke-direct {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->c()V

    goto/16 :goto_1

    .line 281
    :pswitch_2
    sget-object v0, Lcom/wandoujia/p4/views/CommonPopupView;->a:Ljava/lang/String;

    const-string v1, "Intercept done!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iput-boolean v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->m:Z

    .line 283
    iput-boolean v6, p0, Lcom/wandoujia/p4/views/CommonPopupView;->u:Z

    .line 284
    iput-boolean v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->v:Z

    .line 285
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    iget-boolean v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->t:Z

    if-nez v1, :cond_2

    .line 165
    iget v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->h:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 169
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 170
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getMeasuredHeight()I

    move-result v0

    .line 171
    if-nez v0, :cond_3

    .line 194
    :cond_1
    :goto_1
    return-void

    .line 166
    :cond_2
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 167
    iget v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->h:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 176
    if-eqz v1, :cond_1

    .line 179
    iget-boolean v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->w:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->k:I

    if-ne v1, v2, :cond_4

    iget v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->j:I

    if-eq v0, v2, :cond_1

    .line 182
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->w:Z

    .line 183
    iput v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->k:I

    .line 184
    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->j:I

    .line 185
    iget v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->j:I

    iget v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->i:I

    .line 186
    iget v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->i:I

    iget v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->h:I

    if-ge v0, v1, :cond_5

    .line 187
    iget v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->h:I

    iput v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->i:I

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-nez v0, :cond_6

    .line 191
    iget v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->j:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/views/CommonPopupView;->a(I)V

    .line 193
    :cond_6
    invoke-direct {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->d()V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 305
    iget-boolean v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->v:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    .line 309
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    .line 311
    :cond_2
    iget-object v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 352
    goto :goto_0

    .line 314
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->p:F

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->q:F

    .line 316
    iget-object v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->n:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 319
    :pswitch_1
    iput-boolean v0, p0, Lcom/wandoujia/p4/views/CommonPopupView;->m:Z

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->q:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 321
    if-gtz v1, :cond_3

    iget-object v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->k:I

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 324
    :cond_3
    iget-object v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int v1, v2, v1

    .line 325
    iget v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->k:I

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_4

    .line 326
    iget v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->k:I

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/wandoujia/p4/views/CommonPopupView;->a(I)V

    .line 332
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->p:F

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->q:F

    goto :goto_0

    .line 327
    :cond_4
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    if-gt v1, v2, :cond_5

    .line 328
    invoke-direct {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->e()V

    goto :goto_1

    .line 330
    :cond_5
    invoke-direct {p0, v1}, Lcom/wandoujia/p4/views/CommonPopupView;->a(I)V

    goto :goto_1

    .line 337
    :pswitch_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->q:F

    .line 339
    iget-boolean v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->m:Z

    if-eqz v2, :cond_9

    .line 340
    iget-object v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/wandoujia/p4/views/CommonPopupView;->l:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 341
    iget-object v2, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    .line 342
    const/16 v3, -0x64

    if-gt v2, v3, :cond_7

    iget v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->k:I

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/wandoujia/p4/views/CommonPopupView;->i:I

    neg-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/wandoujia/p4/views/CommonPopupView;->a(II)V

    .line 343
    :cond_6
    :goto_2
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->m:Z

    .line 346
    :goto_3
    iget-object v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->o:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 342
    :cond_7
    const/16 v3, 0x64

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/wandoujia/p4/views/CommonPopupView;->i:I

    neg-int v4, v4

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccd

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/wandoujia/p4/views/CommonPopupView;->i:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/wandoujia/p4/views/CommonPopupView;->i:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    neg-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    iget v3, p0, Lcom/wandoujia/p4/views/CommonPopupView;->i:I

    neg-int v3, v3

    invoke-direct {p0, v3, v2}, Lcom/wandoujia/p4/views/CommonPopupView;->a(II)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/CommonPopupView;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    invoke-direct {p0, v3, v2}, Lcom/wandoujia/p4/views/CommonPopupView;->a(II)V

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_3

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 413
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/p4/views/CommonPopupView;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 414
    return-void
.end method

.method public setDragEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->t:Z

    .line 107
    return-void
.end method

.method public setOnDismissListener(Lgpv;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/wandoujia/p4/views/CommonPopupView;->g:Lgpv;

    .line 529
    return-void
.end method

.method public setOnShowListener$341e184d(Ldd;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    return-void
.end method
