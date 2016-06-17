.class public final Lfta;
.super Ljava/lang/Object;
.source "NetworkAsyncLoadPageListFragment.java"

# interfaces
.implements Lfsr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfsr",
        "<TM;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lfta;->a:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILfss;)V
    .locals 7
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
    const/4 v6, 0x0

    .line 60
    iget-object v0, p0, Lfta;->a:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->a()V

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ld;->g(Landroid/view/View;)V

    invoke-virtual {p3}, Lfss;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    iget-object v1, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v1, v2}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v1, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v6, v6}, Leuu;->b(Landroid/view/View;)V

    invoke-virtual {v6}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->a()V

    iget-object v1, v6, Leun;->a:Ljava/util/List;

    iget-object v2, p3, Lfss;->a:Ljava/util/List;

    invoke-static {v1, v2, p1}, Lcom/wandoujia/base/utils/CollectionUtils;->replaceFromPosition(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->a:Ljava/util/List;

    iget-object v1, v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->a:Ljava/util/List;

    invoke-virtual {v6, v1}, Leun;->a(Ljava/util/List;)V

    iput-object v6, v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->a:Ljava/util/List;

    invoke-virtual {v6}, Leuu;->notifyDataSetChanged()V

    :cond_1
    iget-object v1, v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->b:Landroid/os/Parcelable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->b:Landroid/os/Parcelable;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object v6, v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->b:Landroid/os/Parcelable;

    .line 61
    :cond_2
    return-void

    .line 60
    :cond_3
    iget-object v1, p3, Lfss;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p3, Lfss;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v6, v6, v2, v3}, Leuu;->a(Landroid/view/ViewGroup;J)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->d()Lftd;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESHING:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lftd;->a(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;J)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->d()Lftd;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESH_IS_SLOW:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Lftd;->a(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;J)V

    goto :goto_0

    :cond_4
    iget-object v1, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_0

    invoke-virtual {v6, v6}, Leuu;->b(Landroid/view/View;)V

    invoke-virtual {v6}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->b()V

    goto :goto_0

    :cond_5
    if-nez p1, :cond_0

    invoke-virtual {v6}, Leuu;->a()V

    iget-object v1, v6, Leun;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v6, Leun;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Leun;->b()V

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v6}, Leuu;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->d()Lftd;

    move-result-object v1

    iget-boolean v1, v1, Lftd;->e:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->d()Lftd;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESH_SUCCESS:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    invoke-virtual {v1, v2}, Lftd;->a(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->d()Lftd;

    move-result-object v1

    invoke-virtual {v1}, Lftd;->b()V

    goto/16 :goto_0
.end method

.method public final a(ILjava/util/concurrent/ExecutionException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lfta;->a:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->a()V

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ld;->g(Landroid/view/View;)V

    new-instance v1, Lftb;

    invoke-direct {v1, v0, p1}, Lftb;-><init>(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;I)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->getContentView()Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v1}, Leuu;->a()V

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->d()Lftd;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESH_FAILED:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    invoke-virtual {v0, v1}, Lftd;->a(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;)V

    .line 66
    :cond_0
    return-void
.end method
