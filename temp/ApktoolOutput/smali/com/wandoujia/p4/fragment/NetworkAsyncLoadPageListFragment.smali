.class public abstract Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;
.super Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageFragment;
.source "NetworkAsyncLoadPageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/wandoujia/mvc/BaseModel;",
        ">",
        "Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageFragment;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation
.end field

.field public b:Landroid/os/Parcelable;

.field private c:Lfst;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfst",
            "<TM;>;"
        }
    .end annotation
.end field

.field private d:Lftd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment",
            "<TM;>.ftd;"
        }
    .end annotation
.end field

.field private e:Lfsr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfsr",
            "<TM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageFragment;-><init>()V

    .line 56
    new-instance v0, Lfta;

    invoke-direct {v0, p0}, Lfta;-><init>(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->e:Lfsr;

    .line 535
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;)V
    .locals 6
    .parameter

    .prologue
    const/16 v3, 0xf

    .line 32
    invoke-super {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageFragment;->needToLoadData()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->c:Lfst;

    if-nez v0, :cond_0

    new-instance v0, Lfst;

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->b()Lfsi;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->e:Lfsr;

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lfst;-><init>(Lfsi;Lfsr;IIZ)V

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->c:Lfst;

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->c:Lfst;

    invoke-virtual {v0}, Lfst;->b()V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    .line 203
    return-void
.end method

.method protected abstract b()Lfsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<TM;>;"
        }
    .end annotation
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 497
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 498
    instance-of v3, v0, Lcom/wandoujia/p4/fragment/TabHostFragment;

    if-eqz v3, :cond_1

    .line 499
    check-cast v0, Lcom/wandoujia/p4/fragment/TabHostFragment;

    .line 500
    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wandoujia/p4/fragment/TabHostFragment;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 505
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 500
    goto :goto_0

    :cond_1
    move v0, v1

    .line 502
    goto :goto_0

    :cond_2
    move v0, v2

    .line 505
    goto :goto_0
.end method

.method public final d()Lftd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment",
            "<TM;>.ftd;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->d:Lftd;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lftd;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lftd;-><init>(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->d:Lftd;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->d:Lftd;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v0, "phoenix.intent.extra.LIST_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->b:Landroid/os/Parcelable;

    .line 75
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageFragment;->onPause()V

    .line 216
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->d:Lftd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->d:Lftd;

    invoke-virtual {v0}, Lftd;->b()V

    .line 217
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method
