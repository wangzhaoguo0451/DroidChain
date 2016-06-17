.class public Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "CommunityBallotCompleteFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    const v0, 0x7f0300b8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 20
    const v1, 0x7f0c0281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lfgr;

    invoke-direct {v2, p0}, Lfgr;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v1, 0x7f0e01af

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    return-object v0
.end method
