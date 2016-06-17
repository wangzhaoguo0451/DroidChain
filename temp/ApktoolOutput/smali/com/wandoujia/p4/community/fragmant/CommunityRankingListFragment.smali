.class public Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;
.super Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;
.source "CommunityRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment",
        "<",
        "Lfgb;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;-><init>()V

    .line 103
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()Lfsi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<",
            "Lfgb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lfsw;

    new-instance v1, Lfkx;

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lfkx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lfhr;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfhr;-><init>(B)V

    invoke-direct {v0, v1, v2}, Lfsw;-><init>(Lfsi;Lfza;)V

    return-object v0
.end method

.method protected final b()Leun;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leun",
            "<",
            "Lfgb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lfhq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhq;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;B)V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const v1, 0x7f0e01f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :cond_0
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0300f6

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "scope"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->e:Ljava/lang/String;

    .line 41
    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->f:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 46
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onDestroy()V

    .line 72
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;->i()Lfst;

    move-result-object v0

    iget-object v0, v0, Lfst;->b:Lfsi;

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lfsi;->b()V

    .line 76
    :cond_0
    return-void
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    return-void
.end method
