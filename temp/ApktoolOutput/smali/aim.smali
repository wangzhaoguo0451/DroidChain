.class public final Laim;
.super Ljava/lang/Object;
.source "StickyListHeadersListViewWrapper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;


# direct methods
.method public constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Laim;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Laim;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Laim;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Laim;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->removeViewAt(I)V

    .line 80
    :cond_0
    iget-object v0, p0, Laim;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Laim;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-object v1, p0, Laim;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->addView(Landroid/view/View;)V

    .line 84
    :cond_1
    iget-object v0, p0, Laim;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Z

    .line 85
    return-void
.end method
