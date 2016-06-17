.class public final Lfhf;
.super Ljava/lang/Object;
.source "CommunityNewBallotFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lfhf;->a:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lfhf;->a:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lfhf;->a:Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->c()V

    .line 172
    :cond_0
    return-void
.end method
