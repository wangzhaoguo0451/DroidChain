.class public final Lfnx;
.super Ljava/lang/Object;
.source "CommunityTopicDetailBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lfnx;->a:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lfnx;->a:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfnx;->a:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->a(Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lfdz;

    iget-object v1, p0, Lfnx;->a:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    invoke-static {v1}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->a(Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfnx;->a:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfdz;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lfdz;->execute()V

    .line 131
    :cond_0
    return-void
.end method
