.class final Lfdg;
.super Ljava/lang/Object;
.source "CommunityGetTopicLikeUsersAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

.field private synthetic b:Lfde;


# direct methods
.method constructor <init>(Lfde;Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lfdg;->b:Lfde;

    iput-object p2, p0, Lfdg;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lfdg;->b:Lfde;

    iget-object v0, v0, Lfde;->a:Lfdd;

    invoke-static {v0}, Lfdd;->a(Lfdd;)Lfdh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lfdg;->b:Lfde;

    iget-object v0, v0, Lfde;->a:Lfdd;

    invoke-static {v0}, Lfdd;->a(Lfdd;)Lfdh;

    move-result-object v0

    iget-object v1, p0, Lfdg;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    iget-object v2, v0, Lfdh;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lfdh;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->setLikedUser(Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;)V

    .line 73
    :cond_0
    return-void
.end method
