.class public final Lfcg;
.super Ljava/lang/Object;
.source "PullToRefreshAsyncloadFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Landroid/widget/ListView;

.field private synthetic b:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lfcg;->b:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    iput-object p2, p0, Lfcg;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    iget-object v2, p0, Lfcg;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 80
    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 81
    iget-object v2, p0, Lfcg;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    .line 84
    iget-object v3, p0, Lfcg;->b:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v3, v2}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->a(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;I)I

    .line 86
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int v2, v3, v2

    iget-object v3, p0, Lfcg;->a:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    if-nez v2, :cond_1

    move v0, v1

    .line 90
    :cond_1
    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lfcg;->b:Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->a(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;Z)Z

    .line 95
    :cond_2
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    return-void
.end method
