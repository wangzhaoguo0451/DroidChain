.class public final Lfgs;
.super Ljava/lang/Object;
.source "CommunityBallotStatusFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lfgs;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lfgs;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lfdv;

    iget-object v1, p0, Lfgs;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lfdv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfdv;->execute()V

    .line 75
    :cond_0
    return-void
.end method
