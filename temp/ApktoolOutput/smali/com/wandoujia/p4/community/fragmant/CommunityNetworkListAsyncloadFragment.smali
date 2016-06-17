.class public abstract Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;
.super Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;
.source "CommunityNetworkListAsyncloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/wandoujia/mvc/BaseModel;",
        ">",
        "Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment",
        "<TM;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(IILfss;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->a(IILfss;)V

    .line 23
    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->k()Leun;

    move-result-object v0

    invoke-virtual {v0}, Leun;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->k()Leun;

    move-result-object v0

    iget-object v1, p3, Lfss;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Leun;->a(Ljava/util/List;)V

    .line 28
    :cond_0
    return-void
.end method
