.class public final Lfod;
.super Ljava/lang/Object;
.source "CommunityTopicListBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

.field private synthetic b:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lfod;->b:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;

    iput-object p2, p0, Lfod;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lfod;->b:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lfod;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityMembersActivity;->a(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    .line 85
    return-void
.end method
