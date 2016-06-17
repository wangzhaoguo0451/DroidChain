.class public final Lfic;
.super Ljava/lang/Object;
.source "CommunityTopicListTabFragment.java"

# interfaces
.implements Lrw;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lfic;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c0509

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lfic;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lfic;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityMembersActivity;->a(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
