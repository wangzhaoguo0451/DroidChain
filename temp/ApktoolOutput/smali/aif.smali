.class public final Laif;
.super Landroid/database/DataSetObserver;
.source "StickyListHeadersListView.java"


# instance fields
.field private synthetic a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;


# direct methods
.method public constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Laif;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Laif;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Z

    .line 60
    iget-object v0, p0, Laif;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;

    .line 61
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Laif;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;

    .line 66
    iget-object v0, p0, Laif;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a()Landroid/view/View;

    .line 67
    return-void
.end method
