.class public final Laik;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StickyListHeadersListViewWrapper.java"


# instance fields
.field private synthetic a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;


# direct methods
.method public constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Laik;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Laik;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;Z)Z

    .line 42
    iget-object v0, p0, Laik;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-object v1, p0, Laik;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->invalidate(Landroid/graphics/Rect;)V

    .line 43
    return-void
.end method
