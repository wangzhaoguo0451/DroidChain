.class public Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;
.super Landroid/widget/FrameLayout;
.source "ScrollDownLayout.java"


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

.field private n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

.field private o:I

.field private p:I

.field private q:Lgxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lgxv;

    invoke-direct {v0, p0}, Lgxv;-><init>(Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    .line 44
    new-instance v0, Lgxw;

    invoke-direct {v0, p0}, Lgxw;-><init>(Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->b:Landroid/widget/AbsListView$OnScrollListener;

    .line 63
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->i:Z

    .line 64
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->j:Z

    .line 65
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->k:Z

    .line 66
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->l:Z

    .line 67
    iput-boolean v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->m:Z

    .line 68
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->INITIAL:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    .line 69
    iput v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    .line 70
    iput v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    .line 88
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->g:Landroid/widget/Scroller;

    .line 89
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->h:Landroid/view/GestureDetector;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lgxv;

    invoke-direct {v0, p0}, Lgxv;-><init>(Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    .line 44
    new-instance v0, Lgxw;

    invoke-direct {v0, p0}, Lgxw;-><init>(Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->b:Landroid/widget/AbsListView$OnScrollListener;

    .line 63
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->i:Z

    .line 64
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->j:Z

    .line 65
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->k:Z

    .line 66
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->l:Z

    .line 67
    iput-boolean v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->m:Z

    .line 68
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->INITIAL:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    .line 69
    iput v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    .line 70
    iput v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    .line 88
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->g:Landroid/widget/Scroller;

    .line 89
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->h:Landroid/view/GestureDetector;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
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

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lgxv;

    invoke-direct {v0, p0}, Lgxv;-><init>(Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    .line 44
    new-instance v0, Lgxw;

    invoke-direct {v0, p0}, Lgxw;-><init>(Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->b:Landroid/widget/AbsListView$OnScrollListener;

    .line 63
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->i:Z

    .line 64
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->j:Z

    .line 65
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->k:Z

    .line 66
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->l:Z

    .line 67
    iput-boolean v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->m:Z

    .line 68
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->INITIAL:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    .line 69
    iput v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    .line 70
    iput v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    .line 88
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->g:Landroid/widget/Scroller;

    .line 89
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->h:Landroid/view/GestureDetector;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 93
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->ScrollDownLayout:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    iget v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    return-void
.end method

.method private a(Landroid/widget/AbsListView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 411
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0, v3}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setDraggable(Z)V

    .line 423
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 415
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 417
    invoke-virtual {p0, v3}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setDraggable(Z)V

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {p0, v2}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setDraggable(Z)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;Landroid/widget/AbsListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->a(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    sget-object v2, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->OPENED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    if-ne v0, v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    if-eq v0, v2, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getScrollY()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    sub-int v4, v0, v2

    .line 301
    if-eqz v4, :cond_0

    .line 304
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->SCROLLING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    .line 305
    mul-int/lit16 v0, v4, 0x12c

    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    iget v3, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    sub-int/2addr v2, v3

    div-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x64

    .line 307
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getScrollY()I

    move-result v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 308
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->invalidate()V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    sget-object v2, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    if-ne v0, v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    if-eq v0, v2, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getScrollY()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    sub-int v4, v0, v2

    .line 322
    if-eqz v4, :cond_0

    .line 325
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->SCROLLING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    .line 326
    mul-int/lit16 v0, v4, 0x12c

    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    iget v3, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    sub-int/2addr v2, v3

    div-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x64

    .line 328
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getScrollY()I

    move-result v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 329
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->invalidate()V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 148
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->scrollTo(II)V

    .line 149
    iget v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    neg-int v1, v1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    neg-int v1, v1

    if-ne v0, v1, :cond_2

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->invalidate()V

    goto :goto_0
.end method

.method public getCurrentStatus()Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$Status;
    .locals 2

    .prologue
    .line 389
    sget-object v0, Lgxx;->a:[I

    iget-object v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    invoke-virtual {v1}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 395
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$Status;->OPENED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$Status;

    :goto_0
    return-object v0

    .line 391
    :pswitch_0
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$Status;->CLOSED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$Status;

    goto :goto_0

    .line 393
    :pswitch_1
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$Status;->OPENED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$Status;

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMaxOffset()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    return v0
.end method

.method public getMinOffset()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 159
    iget-boolean v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->i:Z

    if-nez v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 162
    :cond_1
    iget-boolean v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->k:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    sget-object v3, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    if-eq v2, v3, :cond_0

    .line 165
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->c:F

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->d:F

    .line 169
    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->c:F

    iput v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->e:F

    .line 170
    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->d:F

    iput v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->f:F

    .line 171
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->l:Z

    .line 172
    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->m:Z

    .line 173
    iget-object v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 175
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->MOVING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    .line 176
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->m:Z

    move v0, v1

    .line 177
    goto :goto_0

    .line 182
    :pswitch_1
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->l:Z

    .line 183
    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->m:Z

    .line 184
    iget-object v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    sget-object v3, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->MOVING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 185
    goto :goto_0

    .line 189
    :pswitch_2
    iget-boolean v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->l:Z

    if-eqz v2, :cond_0

    .line 192
    iget-boolean v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->m:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 193
    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->f:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->e:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 197
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_0

    .line 200
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v4, v3, :cond_4

    .line 202
    iget-boolean v3, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->j:Z

    if-eqz v3, :cond_4

    .line 203
    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->l:Z

    .line 204
    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->m:Z

    goto :goto_0

    .line 208
    :cond_4
    iget-object v3, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    sget-object v4, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    if-ne v3, v4, :cond_6

    .line 210
    if-ltz v2, :cond_0

    .line 221
    :cond_5
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->m:Z

    move v0, v1

    .line 222
    goto/16 :goto_0

    .line 214
    :cond_6
    iget-object v3, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    sget-object v4, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->OPENED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    if-ne v3, v4, :cond_5

    .line 216
    if-lez v2, :cond_5

    goto/16 :goto_0

    .line 165
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

    .line 231
    iget-boolean v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->m:Z

    if-nez v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->h:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->d:F

    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->d:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f80

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 241
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

    .line 242
    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    neg-int v4, v4

    if-lt v3, v4, :cond_2

    move v0, v1

    .line 243
    goto :goto_0

    .line 244
    :cond_2
    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    neg-int v4, v4

    if-gt v3, v4, :cond_3

    move v0, v1

    .line 245
    goto :goto_0

    .line 247
    :cond_3
    sget-object v3, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->MOVING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    iput-object v3, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    .line 248
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getScrollY()I

    move-result v3

    sub-int v2, v3, v2

    .line 249
    iget v3, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    neg-int v3, v3

    if-lt v2, v3, :cond_4

    .line 250
    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->scrollTo(II)V

    .line 256
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->d:F

    move v0, v1

    .line 257
    goto :goto_0

    .line 251
    :cond_4
    iget v3, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    neg-int v3, v3

    if-gt v2, v3, :cond_5

    .line 252
    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->scrollTo(II)V

    goto :goto_1

    .line 254
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->scrollTo(II)V

    goto :goto_1

    .line 260
    :pswitch_2
    iget-object v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    sget-object v3, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->MOVING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    if-ne v2, v3, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    iget v3, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3f4ccccd

    mul-float/2addr v2, v3

    neg-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->b()V

    :goto_2
    move v0, v1

    .line 262
    goto/16 :goto_0

    .line 261
    :cond_6
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->a()V

    goto :goto_2

    .line 235
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
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 111
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 112
    iget v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    iget v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    if-ne v0, v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    neg-int v0, p2

    iget v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 116
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->q:Lgxy;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->q:Lgxy;

    iget-object v0, v2, Lgxy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->b(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v3, v2, Lgxy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    const/16 v3, 0x13

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lgxy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0207

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    :cond_2
    iget-object v3, v2, Lgxy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->b(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Landroid/view/View;

    move-result-object v3

    int-to-float v0, v0

    sub-float v4, v1, v5

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, v2, Lgxy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    iget-object v0, v2, Lgxy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->e(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V

    .line 117
    :cond_3
    :goto_1
    iget v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    neg-int v0, v0

    if-ne p2, v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    sget-object v1, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    if-eq v0, v1, :cond_0

    .line 120
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    .line 121
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$Status;->CLOSED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$Status;

    goto :goto_0

    .line 116
    :cond_4
    cmpl-float v0, v1, v5

    if-nez v0, :cond_3

    iget-object v0, v2, Lgxy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->f(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V

    goto :goto_1

    .line 123
    :cond_5
    iget v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    neg-int v0, v0

    if-ne p2, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    sget-object v1, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->OPENED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    if-eq v0, v1, :cond_0

    .line 126
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->OPENED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->n:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    .line 127
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$Status;->OPENED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$Status;

    goto/16 :goto_0
.end method

.method public setAllowHorizontalScroll(Z)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->j:Z

    .line 374
    return-void
.end method

.method public setAssociatedListView(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->b:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 407
    invoke-direct {p0, p1}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->a(Landroid/widget/AbsListView;)V

    .line 408
    return-void
.end method

.method public setAssociatedScrollView(Lcom/wandoujia/p4/views/ContentScrollView;)V
    .locals 1
    .parameter

    .prologue
    .line 426
    new-instance v0, Lgpz;

    invoke-direct {v0, p0, p1}, Lgpz;-><init>(Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;Lcom/wandoujia/p4/views/ContentScrollView;)V

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/views/ContentScrollView;->setOnScrollChangeListener(Lgpz;)V

    .line 436
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->k:Z

    .line 382
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->i:Z

    .line 366
    return-void
.end method

.method public setMaxOffset(I)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput p1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->o:I

    .line 358
    return-void
.end method

.method public setMinOffset(I)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput p1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->p:I

    .line 350
    return-void
.end method

.method public setOnScrollChangedListener(Lgxy;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->q:Lgxy;

    .line 386
    return-void
.end method
