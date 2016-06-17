.class public Lcom/wandoujia/p4/views/ScrollDownLayout;
.super Landroid/widget/FrameLayout;
.source "ScrollDownLayout.java"

# interfaces
.implements Lhni;


# instance fields
.field private final a:Landroid/view/GestureDetector$OnGestureListener;

.field private final b:Landroid/widget/AbsListView$OnScrollListener;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/widget/Scroller;

.field private h:Landroid/view/GestureDetector;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

.field private o:I

.field private p:I

.field private q:Lgqi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lgqe;

    invoke-direct {v0, p0}, Lgqe;-><init>(Lcom/wandoujia/p4/views/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    .line 47
    new-instance v0, Lgqf;

    invoke-direct {v0, p0}, Lgqf;-><init>(Lcom/wandoujia/p4/views/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->b:Landroid/widget/AbsListView$OnScrollListener;

    .line 66
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->i:Z

    .line 67
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->j:Z

    .line 68
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->k:Z

    .line 69
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->l:Z

    .line 70
    iput-boolean v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->m:Z

    .line 71
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->INITIAL:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    .line 72
    iput v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    .line 73
    iput v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    .line 91
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->g:Landroid/widget/Scroller;

    .line 92
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->h:Landroid/view/GestureDetector;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lgqe;

    invoke-direct {v0, p0}, Lgqe;-><init>(Lcom/wandoujia/p4/views/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    .line 47
    new-instance v0, Lgqf;

    invoke-direct {v0, p0}, Lgqf;-><init>(Lcom/wandoujia/p4/views/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->b:Landroid/widget/AbsListView$OnScrollListener;

    .line 66
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->i:Z

    .line 67
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->j:Z

    .line 68
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->k:Z

    .line 69
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->l:Z

    .line 70
    iput-boolean v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->m:Z

    .line 71
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->INITIAL:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    .line 72
    iput v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    .line 73
    iput v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    .line 91
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->g:Landroid/widget/Scroller;

    .line 92
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->h:Landroid/view/GestureDetector;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/views/ScrollDownLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lgqe;

    invoke-direct {v0, p0}, Lgqe;-><init>(Lcom/wandoujia/p4/views/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    .line 47
    new-instance v0, Lgqf;

    invoke-direct {v0, p0}, Lgqf;-><init>(Lcom/wandoujia/p4/views/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->b:Landroid/widget/AbsListView$OnScrollListener;

    .line 66
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->i:Z

    .line 67
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->j:Z

    .line 68
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->k:Z

    .line 69
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->l:Z

    .line 70
    iput-boolean v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->m:Z

    .line 71
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->INITIAL:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    .line 72
    iput v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    .line 73
    iput v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    .line 91
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->g:Landroid/widget/Scroller;

    .line 92
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->h:Landroid/view/GestureDetector;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/views/ScrollDownLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 96
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->ScrollDownLayout:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    iget v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    return-void
.end method

.method private a(Landroid/widget/AbsListView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/views/ScrollDownLayout;->setDraggable(Z)V

    .line 427
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 421
    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/views/ScrollDownLayout;->setDraggable(Z)V

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/views/ScrollDownLayout;->setDraggable(Z)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/views/ScrollDownLayout;Landroid/widget/AbsListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/views/ScrollDownLayout;->a(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    sget-object v2, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->OPENED:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    if-ne v0, v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    if-eq v0, v2, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getScrollY()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    sub-int v4, v0, v2

    .line 304
    if-eqz v4, :cond_0

    .line 307
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->SCROLLING:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    .line 308
    mul-int/lit16 v0, v4, 0x12c

    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    iget v3, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    sub-int/2addr v2, v3

    div-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x64

    .line 310
    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getScrollY()I

    move-result v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 311
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->invalidate()V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    sget-object v2, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    if-ne v0, v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    if-eq v0, v2, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getScrollY()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    sub-int v4, v0, v2

    .line 325
    if-eqz v4, :cond_0

    .line 328
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->SCROLLING:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    .line 329
    mul-int/lit16 v0, v4, 0x12c

    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    iget v3, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    sub-int/2addr v2, v3

    div-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x64

    .line 331
    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getScrollY()I

    move-result v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 332
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->invalidate()V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x0

    iget v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/views/ScrollDownLayout;->scrollTo(II)V

    .line 340
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->OPENED:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    .line 341
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 151
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->scrollTo(II)V

    .line 152
    iget v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    neg-int v1, v1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    neg-int v1, v1

    if-ne v0, v1, :cond_2

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->invalidate()V

    goto :goto_0
.end method

.method public getCurrentStatus()Lcom/wandoujia/p4/views/ScrollDownLayout$Status;
    .locals 2

    .prologue
    .line 392
    sget-object v0, Lgqh;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    invoke-virtual {v1}, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 398
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$Status;->OPENED:Lcom/wandoujia/p4/views/ScrollDownLayout$Status;

    :goto_0
    return-object v0

    .line 394
    :pswitch_0
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$Status;->CLOSED:Lcom/wandoujia/p4/views/ScrollDownLayout$Status;

    goto :goto_0

    .line 396
    :pswitch_1
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$Status;->OPENED:Lcom/wandoujia/p4/views/ScrollDownLayout$Status;

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMaxOffset()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    return v0
.end method

.method public getMinOffset()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 162
    iget-boolean v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->i:Z

    if-nez v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    iget-boolean v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->k:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    sget-object v3, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    if-eq v2, v3, :cond_0

    .line 168
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->c:F

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->d:F

    .line 172
    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->c:F

    iput v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->e:F

    .line 173
    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->d:F

    iput v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->f:F

    .line 174
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->l:Z

    .line 175
    iput-boolean v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->m:Z

    .line 176
    iget-object v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 178
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->MOVING:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    .line 179
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->m:Z

    move v0, v1

    .line 180
    goto :goto_0

    .line 185
    :pswitch_1
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->l:Z

    .line 186
    iput-boolean v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->m:Z

    .line 187
    iget-object v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    sget-object v3, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->MOVING:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 188
    goto :goto_0

    .line 192
    :pswitch_2
    iget-boolean v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->l:Z

    if-eqz v2, :cond_0

    .line 195
    iget-boolean v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->m:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 196
    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->f:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->e:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 200
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_0

    .line 203
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v4, v3, :cond_4

    .line 205
    iget-boolean v3, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->j:Z

    if-eqz v3, :cond_4

    .line 206
    iput-boolean v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->l:Z

    .line 207
    iput-boolean v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->m:Z

    goto :goto_0

    .line 211
    :cond_4
    iget-object v3, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    sget-object v4, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    if-ne v3, v4, :cond_6

    .line 213
    if-ltz v2, :cond_0

    .line 224
    :cond_5
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->m:Z

    move v0, v1

    .line 225
    goto/16 :goto_0

    .line 217
    :cond_6
    iget-object v3, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    sget-object v4, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->OPENED:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    if-ne v3, v4, :cond_5

    .line 219
    if-lez v2, :cond_5

    goto/16 :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 234
    iget-boolean v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->m:Z

    if-nez v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->h:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->d:F

    move v0, v1

    .line 241
    goto :goto_0

    .line 243
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->d:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f80

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 244
    int-to-float v3, v2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x1e

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/2addr v2, v3

    .line 245
    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    neg-int v4, v4

    if-lt v3, v4, :cond_2

    move v0, v1

    .line 246
    goto :goto_0

    .line 247
    :cond_2
    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    neg-int v4, v4

    if-gt v3, v4, :cond_3

    move v0, v1

    .line 248
    goto :goto_0

    .line 250
    :cond_3
    sget-object v3, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->MOVING:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    iput-object v3, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    .line 251
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getScrollY()I

    move-result v3

    sub-int v2, v3, v2

    .line 252
    iget v3, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    neg-int v3, v3

    if-lt v2, v3, :cond_4

    .line 253
    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/wandoujia/p4/views/ScrollDownLayout;->scrollTo(II)V

    .line 259
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->d:F

    move v0, v1

    .line 260
    goto :goto_0

    .line 254
    :cond_4
    iget v3, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    neg-int v3, v3

    if-gt v2, v3, :cond_5

    .line 255
    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/wandoujia/p4/views/ScrollDownLayout;->scrollTo(II)V

    goto :goto_1

    .line 257
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/wandoujia/p4/views/ScrollDownLayout;->scrollTo(II)V

    goto :goto_1

    .line 263
    :pswitch_2
    iget-object v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    sget-object v3, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->MOVING:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    if-ne v2, v3, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    iget v3, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3f4ccccd

    mul-float/2addr v2, v3

    neg-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->b()V

    :goto_2
    move v0, v1

    .line 265
    goto/16 :goto_0

    .line 264
    :cond_6
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->a()V

    goto :goto_2

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 115
    iget v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    iget v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    if-ne v0, v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    neg-int v0, p2

    iget v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    iget v2, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 119
    iget-object v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->q:Lgqi;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->q:Lgqi;

    invoke-interface {v1, v0}, Lgqi;->a(F)V

    .line 120
    :cond_2
    iget v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    neg-int v0, v0

    if-ne p2, v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    sget-object v1, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    if-eq v0, v1, :cond_0

    .line 123
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    .line 124
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$Status;->CLOSED:Lcom/wandoujia/p4/views/ScrollDownLayout$Status;

    goto :goto_0

    .line 126
    :cond_3
    iget v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    neg-int v0, v0

    if-ne p2, v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    sget-object v1, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->OPENED:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    if-eq v0, v1, :cond_0

    .line 129
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;->OPENED:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->n:Lcom/wandoujia/p4/views/ScrollDownLayout$InnerStatus;

    .line 130
    sget-object v0, Lcom/wandoujia/p4/views/ScrollDownLayout$Status;->OPENED:Lcom/wandoujia/p4/views/ScrollDownLayout$Status;

    goto :goto_0
.end method

.method public setAllowHorizontalScroll(Z)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->j:Z

    .line 377
    return-void
.end method

.method public setAssociatedListView(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->b:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 411
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/views/ScrollDownLayout;->a(Landroid/widget/AbsListView;)V

    .line 412
    return-void
.end method

.method public setAssociatedRecyclerView(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;)V
    .locals 1
    .parameter

    .prologue
    .line 431
    new-instance v0, Lgqg;

    invoke-direct {v0, p0}, Lgqg;-><init>(Lcom/wandoujia/p4/views/ScrollDownLayout;)V

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->a(Lup;)V

    .line 438
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lgs;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->setDraggable(Z)V

    .line 439
    return-void

    .line 438
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDraggable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->k:Z

    .line 385
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->i:Z

    .line 369
    return-void
.end method

.method public setMaxOffset(I)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput p1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->o:I

    .line 361
    return-void
.end method

.method public setMinOffset(I)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput p1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->p:I

    .line 353
    return-void
.end method

.method public setOnScrollChangedListener(Lgqi;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/wandoujia/p4/views/ScrollDownLayout;->q:Lgqi;

    .line 389
    return-void
.end method
