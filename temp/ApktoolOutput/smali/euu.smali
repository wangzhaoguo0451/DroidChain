.class public final Leuu;
.super Leus;
.source "RefreshHeaderViewAdapter.java"


# instance fields
.field private b:Lcom/wandoujia/p4/views/RefreshingHeaderView;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Leus;-><init>(Landroid/widget/ListAdapter;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Leuu;->b:Lcom/wandoujia/p4/views/RefreshingHeaderView;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Leuv;

    invoke-direct {v0}, Leuv;-><init>()V

    .line 47
    :cond_0
    return-void
.end method

.method public final a(ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Leuu;->b:Lcom/wandoujia/p4/views/RefreshingHeaderView;

    if-eqz v0, :cond_0

    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 54
    :cond_0
    invoke-super {p0, p1, p2}, Leus;->a(ILandroid/view/View;)V

    .line 55
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Leuu;->b:Lcom/wandoujia/p4/views/RefreshingHeaderView;

    if-nez v0, :cond_0

    .line 26
    invoke-static {p1}, Lcom/wandoujia/p4/views/RefreshingHeaderView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/views/RefreshingHeaderView;

    move-result-object v0

    iput-object v0, p0, Leuu;->b:Lcom/wandoujia/p4/views/RefreshingHeaderView;

    .line 27
    iget-object v0, p0, Leuu;->b:Lcom/wandoujia/p4/views/RefreshingHeaderView;

    invoke-virtual {v0, p2, p3}, Lcom/wandoujia/p4/views/RefreshingHeaderView;->setLastCacheTime(J)V

    .line 28
    iget-object v0, p0, Leuu;->a:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Leuu;->b:Lcom/wandoujia/p4/views/RefreshingHeaderView;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Leuu;->notifyDataSetChanged()V

    .line 31
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Leuu;->b:Lcom/wandoujia/p4/views/RefreshingHeaderView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
