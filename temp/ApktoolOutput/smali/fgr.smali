.class public final Lfgr;
.super Ljava/lang/Object;
.source "CommunityBallotCompleteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lfgr;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lfgr;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lfgr;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 26
    :cond_0
    return-void
.end method
