.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"


# static fields
.field private static final p:[I


# instance fields
.field private A:I

.field private B:Z

.field private C:Landroid/view/animation/Animation$AnimationListener;

.field private final D:Landroid/view/animation/Animation;

.field private final E:Landroid/view/animation/Animation;

.field public a:Z

.field public b:I

.field public c:I

.field private d:Landroid/view/View;

.field private e:Lmh;

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:Z

.field private k:F

.field private l:F

.field private m:Z

.field private n:I

.field private final o:Landroid/view/animation/DecelerateInterpolator;

.field private q:Lkd;

.field private r:I

.field private s:Lld;

.field private t:Landroid/view/animation/Animation;

.field private u:Landroid/view/animation/Animation;

.field private v:Landroid/view/animation/Animation;

.field private w:Landroid/view/animation/Animation;

.field private x:F

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/high16 v3, 0x4220

    const/4 v2, 0x0

    .line 270
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Z

    .line 98
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    .line 102
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Z

    .line 107
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    .line 120
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    .line 151
    new-instance v0, Lma;

    invoke-direct {v0, p0}, Lma;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation$AnimationListener;

    .line 874
    new-instance v0, Lmf;

    invoke-direct {v0, p0}, Lmf;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    .line 898
    new-instance v0, Lmg;

    invoke-direct {v0, p0}, Lmg;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    .line 272
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:I

    .line 274
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    .line 277
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 278
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:Landroid/view/animation/DecelerateInterpolator;

    .line 280
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 281
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 282
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 285
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    .line 286
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:I

    .line 288
    new-instance v1, Lkd;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lkd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    new-instance v1, Lld;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lld;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    const v2, -0x50506

    invoke-virtual {v1, v2}, Lld;->b(I)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v1, v2}, Lkd;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lkd;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 289
    invoke-static {p0}, Lgs;->a(Landroid/view/ViewGroup;)V

    .line 291
    const/high16 v1, 0x4280

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    .line 292
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    .line 293
    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 688
    invoke-static {p0, p1}, Lfv;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 689
    if-gez v0, :cond_0

    .line 690
    const/high16 v0, -0x4080

    .line 692
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_0
.end method

.method public static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:I

    return p1
.end method

.method private a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 930
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0}, Lkd;->bringToFront()V

    .line 931
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0, p1}, Lkd;->offsetTopAndBottom(I)V

    .line 932
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0}, Lkd;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:I

    .line 933
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 934
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    .line 936
    :cond_0
    return-void
.end method

.method public static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 939
    invoke-static {p1}, Lfv;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 940
    invoke-static {p1, v0}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 941
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    if-ne v1, v2, :cond_0

    .line 944
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 945
    :goto_0
    invoke-static {p1, v0}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    .line 947
    :cond_0
    return-void

    .line 944
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter

    .prologue
    .line 408
    new-instance v0, Lmc;

    invoke-direct {v0, p0}, Lmc;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Landroid/view/animation/Animation;

    .line 414
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 415
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    iput-object p1, v0, Lkd;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 416
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0}, Lkd;->clearAnimation()V

    .line 417
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lkd;->startAnimation(Landroid/view/animation/Animation;)V

    .line 418
    return-void
.end method

.method private a(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 395
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Z

    if-eq v0, p1, :cond_1

    .line 396
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    .line 397
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 398
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Z

    .line 399
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Z

    if-eqz v0, :cond_2

    .line 400
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation$AnimationListener;

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    iput-object v1, v0, Lkd;->a:Landroid/view/animation/Animation$AnimationListener;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0}, Lkd;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lkd;->startAnimation(Landroid/view/animation/Animation;)V

    .line 405
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public static synthetic a()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Z

    return v0
.end method

.method private static a(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter

    .prologue
    .line 701
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(II)Landroid/view/animation/Animation;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 431
    new-instance v0, Lmd;

    invoke-direct {v0, p0, p1, p2}, Lmd;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    .line 442
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 444
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    const/4 v2, 0x0

    iput-object v2, v1, Lkd;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 445
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v1}, Lkd;->clearAnimation()V

    .line 446
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v1, v0}, Lkd;->startAnimation(Landroid/view/animation/Animation;)V

    .line 447
    return-object v0
.end method

.method public static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;)Lld;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 525
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 526
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 527
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 528
    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    .line 533
    :cond_0
    return-void

    .line 525
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v1}, Lkd;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    return-void
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 614
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_5

    .line 615
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 617
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_1

    :cond_0
    move v0, v1

    .line 624
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 617
    goto :goto_0

    .line 621
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Lgs;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 624
    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Lgs;->b(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static synthetic c(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    return v0
.end method

.method public static synthetic d(Landroid/support/v4/widget/SwipeRefreshLayout;)Lmh;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lmh;

    return-object v0
.end method

.method public static synthetic e(Landroid/support/v4/widget/SwipeRefreshLayout;)Lkd;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    return-object v0
.end method

.method public static synthetic f(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    return-void
.end method

.method public static synthetic g(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:I

    return v0
.end method

.method public static synthetic h(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public static synthetic i(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Z

    return v0
.end method

.method public static synthetic j(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    return v0
.end method

.method private setAnimationProgress(F)V
    .locals 2
    .parameter

    .prologue
    .line 386
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 387
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 392
    :goto_1
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-static {v0, p1}, Lgs;->d(Landroid/view/View;F)V

    .line 390
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-static {v0, p1}, Lgs;->e(Landroid/view/View;F)V

    goto :goto_1
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0}, Lkd;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 189
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v0, p1}, Lld;->setAlpha(I)V

    .line 190
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lkd;->setVisibility(I)V

    .line 209
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:I

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    .line 210
    int-to-float v0, p2

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Z

    .line 212
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0}, Lkd;->invalidate()V

    .line 213
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    if-gez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return p2

    .line 298
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 300
    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    goto :goto_0

    .line 301
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    if-lt p2, v0, :cond_0

    .line 303
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0}, Lkd;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x4080

    const/4 v0, 0x0

    .line 630
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 632
    invoke-static {p1}, Lfv;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 634
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Z

    if-eqz v2, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v0

    .line 643
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 684
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Z

    goto :goto_0

    .line 645
    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v2}, Lkd;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    .line 646
    invoke-static {p1, v0}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    .line 647
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Z

    .line 648
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    invoke-static {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 649
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 652
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:F

    goto :goto_1

    .line 656
    :pswitch_2
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    if-eq v1, v4, :cond_0

    .line 661
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    invoke-static {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 662
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 665
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:F

    sub-float v0, v1, v0

    .line 666
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Z

    if-nez v0, :cond_2

    .line 667
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:F

    .line 668
    iput-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Z

    .line 669
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lld;->setAlpha(I)V

    goto :goto_1

    .line 674
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 679
    :pswitch_4
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Z

    .line 680
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    goto :goto_1

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    .line 547
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    .line 548
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v2, :cond_2

    .line 552
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 554
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 557
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    .line 558
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    .line 559
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    .line 560
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 561
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 562
    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 563
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v1}, Lkd;->getMeasuredWidth()I

    move-result v1

    .line 564
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v2}, Lkd;->getMeasuredHeight()I

    move-result v2

    .line 565
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Lkd;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 571
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 572
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 573
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 575
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_2

    .line 596
    :cond_1
    :goto_0
    return-void

    .line 578
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 582
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lkd;->measure(II)V

    .line 584
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Z

    if-nez v0, :cond_3

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Z

    .line 586
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0}, Lkd;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:I

    .line 588
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    .line 590
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 591
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    if-ne v1, v2, :cond_4

    .line 592
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    goto :goto_0

    .line 590
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter

    .prologue
    const/4 v10, 0x0

    const/high16 v13, 0x4000

    const/high16 v12, 0x3f80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 706
    invoke-static {p1}, Lfv;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 708
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 842
    :goto_0
    return v0

    .line 717
    :cond_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v0, v2

    .line 842
    goto :goto_0

    .line 719
    :pswitch_1
    invoke-static {p1, v1}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    .line 720
    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Z

    goto :goto_1

    .line 724
    :pswitch_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    invoke-static {p1, v0}, Lfv;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 725
    if-gez v0, :cond_3

    move v0, v1

    .line 726
    goto :goto_0

    .line 730
    :cond_3
    invoke-static {p1, v0}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 731
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x3f00

    mul-float/2addr v3, v0

    .line 732
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Z

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v0, v2}, Lld;->a(Z)V

    .line 734
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    div-float v0, v3, v0

    .line 735
    cmpg-float v4, v0, v10

    if-gez v4, :cond_4

    move v0, v1

    .line 736
    goto :goto_0

    .line 738
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 739
    float-to-double v6, v4

    const-wide v8, 0x3fd999999999999aL

    sub-double/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v0, v6

    const/high16 v5, 0x40a0

    mul-float/2addr v0, v5

    const/high16 v5, 0x4040

    div-float v5, v0, v5

    .line 740
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    sub-float v6, v0, v6

    .line 741
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    iget v7, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    int-to-float v7, v7

    sub-float/2addr v0, v7

    .line 743
    :goto_2
    mul-float v7, v0, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 745
    const/high16 v7, 0x4080

    div-float v7, v6, v7

    float-to-double v8, v7

    const/high16 v7, 0x4080

    div-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v10, 0x4000

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double v6, v8, v6

    double-to-float v6, v6

    mul-float/2addr v6, v13

    .line 747
    mul-float v7, v0, v6

    mul-float/2addr v7, v13

    .line 749
    iget v8, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    mul-float/2addr v0, v4

    add-float/2addr v0, v7

    float-to-int v0, v0

    add-int/2addr v0, v8

    .line 752
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v4}, Lkd;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    .line 753
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v4, v1}, Lkd;->setVisibility(I)V

    .line 755
    :cond_5
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-static {v1, v12}, Lgs;->d(Landroid/view/View;F)V

    .line 757
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-static {v1, v12}, Lgs;->e(Landroid/view/View;F)V

    .line 759
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_9

    .line 760
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v1}, Lld;->getAlpha()I

    move-result v1

    const/16 v3, 0x4c

    if-le v1, v3, :cond_6

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 766
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v1}, Lld;->getAlpha()I

    move-result v1

    const/16 v3, 0x4c

    invoke-direct {p0, v1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(II)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/view/animation/Animation;

    .line 768
    :cond_6
    const v1, 0x3f4ccccd

    mul-float/2addr v1, v5

    .line 769
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    const v4, 0x3f4ccccd

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v3, v1}, Lld;->b(F)V

    .line 770
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Lld;->a(F)V

    .line 778
    :cond_7
    :goto_3
    const/high16 v1, -0x4180

    const v3, 0x3ecccccd

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    mul-float v3, v6, v13

    add-float/2addr v1, v3

    const/high16 v3, 0x3f00

    mul-float/2addr v1, v3

    .line 779
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    iget-object v3, v3, Lld;->a:Llh;

    invoke-virtual {v3, v1}, Llh;->c(F)V

    .line 780
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    goto/16 :goto_1

    .line 741
    :cond_8
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    goto/16 :goto_2

    .line 772
    :cond_9
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v1}, Lld;->getAlpha()I

    move-result v1

    const/16 v3, 0xff

    if-ge v1, v3, :cond_7

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 775
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v1}, Lld;->getAlpha()I

    move-result v1

    const/16 v3, 0xff

    invoke-direct {p0, v1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(II)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Landroid/view/animation/Animation;

    goto :goto_3

    .line 786
    :pswitch_3
    invoke-static {p1}, Lfv;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 787
    invoke-static {p1, v0}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    goto/16 :goto_1

    .line 792
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 797
    :pswitch_5
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_a

    move v0, v1

    .line 798
    goto/16 :goto_0

    .line 803
    :cond_a
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    invoke-static {p1, v0}, Lfv;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 804
    invoke-static {p1, v0}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 805
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x3f00

    mul-float/2addr v0, v3

    .line 806
    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Z

    .line 807
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_b

    .line 808
    invoke-direct {p0, v2, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    .line 837
    :goto_4
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    move v0, v1

    .line 838
    goto/16 :goto_0

    .line 811
    :cond_b
    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Z

    .line 812
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v0, v10}, Lld;->b(F)V

    .line 813
    new-instance v0, Lme;

    invoke-direct {v0, p0}, Lme;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 834
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:I

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    iput-object v0, v2, Lkd;->a:Landroid/view/animation/Animation$AnimationListener;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0}, Lkd;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Lkd;->startAnimation(Landroid/view/animation/Animation;)V

    .line 835
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v0, v1}, Lld;->a(Z)V

    goto :goto_4

    .line 717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter

    .prologue
    .line 698
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 483
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .parameter

    .prologue
    .line 509
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 510
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    iget-object v1, v0, Lld;->a:Llh;

    invoke-virtual {v1, p1}, Llh;->a([I)V

    iget-object v0, v0, Lld;->a:Llh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llh;->a(I)V

    .line 511
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .parameter

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 494
    array-length v0, p1

    new-array v2, v0, [I

    .line 495
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 496
    aget v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v0

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 499
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .parameter

    .prologue
    .line 541
    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    .line 542
    return-void
.end method

.method public setOnRefreshListener(Lmh;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lmh;

    .line 325
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 456
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0, p1}, Lkd;->setBackgroundColor(I)V

    .line 474
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v0, p1}, Lld;->b(I)V

    .line 475
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 465
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 341
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Z

    if-eq v0, p1, :cond_3

    .line 343
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Z

    .line 344
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Z

    if-nez v0, :cond_2

    .line 346
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 350
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    .line 352
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    .line 353
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation$AnimationListener;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v1, v2}, Lkd;->setVisibility(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lld;->setAlpha(I)V

    :cond_0
    new-instance v1, Lmb;

    invoke-direct {v1, p0}, Lmb;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/Animation;

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    iput-object v0, v1, Lkd;->a:Landroid/view/animation/Animation$AnimationListener;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    invoke-virtual {v0}, Lkd;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lkd;->startAnimation(Landroid/view/animation/Animation;)V

    .line 357
    :goto_1
    return-void

    .line 348
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    float-to-int v0, v0

    goto :goto_0

    .line 355
    :cond_3
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 2
    .parameter

    .prologue
    .line 237
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 241
    if-nez p1, :cond_1

    .line 242
    const/high16 v1, 0x4260

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:I

    .line 249
    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkd;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v0, p1}, Lld;->a(I)V

    .line 251
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lkd;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Lld;

    invoke-virtual {v0, v1}, Lkd;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 244
    :cond_1
    const/high16 v1, 0x4220

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:I

    goto :goto_1
.end method
