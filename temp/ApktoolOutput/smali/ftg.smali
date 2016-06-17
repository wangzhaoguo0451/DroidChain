.class public final Lftg;
.super Ljava/lang/Object;
.source "NetworkExpandableListAsyncloadFragment.java"

# interfaces
.implements Lfsr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfsr",
        "<",
        "Landroid/util/Pair",
        "<TM;",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILfss;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<",
            "Landroid/util/Pair",
            "<TM;",
            "Ljava/util/List",
            "<TT;>;>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->a(Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;)V

    .line 52
    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ld;->g(Landroid/view/View;)V

    .line 54
    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    if-nez p1, :cond_2

    .line 56
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->a()V

    .line 73
    :goto_1
    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->b(Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->e()Lcom/wandoujia/p4/views/ContentExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->b(Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ContentExpandableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 75
    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->c(Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;)Landroid/os/Parcelable;

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->c()Leuo;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->b()Lcom/wandoujia/p4/views/FetchMoreFooterView;

    move-result-object v1

    invoke-virtual {v0, v1}, Leuo;->a(Landroid/view/View;)V

    .line 59
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->b()Lcom/wandoujia/p4/views/FetchMoreFooterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->b()V

    goto :goto_1

    .line 62
    :cond_3
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->c()Leuo;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->b()Lcom/wandoujia/p4/views/FetchMoreFooterView;

    move-result-object v1

    invoke-virtual {v0, v1}, Leuo;->a(Landroid/view/View;)V

    .line 63
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->b()Lcom/wandoujia/p4/views/FetchMoreFooterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->a()V

    .line 64
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->d()Leum;

    move-result-object v0

    iget-object v0, v0, Leum;->a:Ljava/util/List;

    iget-object v1, p3, Lfss;->a:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/wandoujia/base/utils/CollectionUtils;->replaceFromPosition(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->d()Leum;

    if-nez v0, :cond_5

    iget-object v0, v2, Leum;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_2
    invoke-virtual {v2}, Leum;->notifyDataSetChanged()V

    .line 68
    if-nez p1, :cond_4

    .line 69
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->e()Lcom/wandoujia/p4/views/ContentExpandableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ContentExpandableListView;->expandGroup(I)Z

    .line 71
    :cond_4
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->c()Leuo;

    move-result-object v0

    invoke-virtual {v0}, Leuo;->notifyDataSetChanged()V

    goto :goto_1

    .line 67
    :cond_5
    iput-object v0, v2, Leum;->a:Ljava/util/List;

    goto :goto_2
.end method

.method public final a(ILjava/util/concurrent/ExecutionException;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->a(Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;)V

    .line 85
    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ld;->g(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->getView()Landroid/view/View;

    new-instance v0, Lfth;

    invoke-direct {v0, p0, p1}, Lfth;-><init>(Lftg;I)V

    goto :goto_0
.end method
