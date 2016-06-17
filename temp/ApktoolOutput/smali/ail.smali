.class public final Lail;
.super Ljava/lang/Object;
.source "StickyListHeadersListViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:F

.field private synthetic b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;


# direct methods
.method public constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lail;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lail;->a:F

    .line 59
    :cond_0
    :goto_0
    iget v2, p0, Lail;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lail;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 61
    :goto_1
    if-eqz v0, :cond_1

    .line 62
    iget-object v2, p0, Lail;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v2, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;Z)Z

    .line 63
    iget-object v1, p0, Lail;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-object v2, p0, Lail;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->invalidate(Landroid/graphics/Rect;)V

    .line 65
    :cond_1
    iget-object v1, p0, Lail;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->c(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 66
    return v0

    .line 55
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 56
    iget-object v2, p0, Lail;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v2, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;Z)Z

    .line 57
    iget-object v2, p0, Lail;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-object v3, p0, Lail;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_1
.end method
