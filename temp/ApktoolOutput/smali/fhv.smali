.class public final Lfhv;
.super Ljava/lang/Object;
.source "CommunityTopicDetailFragment.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lfhv;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lfhv;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    const-string v1, "reply"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    new-instance v0, Lfea;

    iget-object v1, p0, Lfhv;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lfhv;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfea;-><init>(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V

    invoke-virtual {v0}, Lfea;->execute()V

    .line 383
    return-void
.end method
