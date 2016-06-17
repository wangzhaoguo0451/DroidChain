.class public final Lfoh;
.super Ljava/lang/Object;
.source "CommunityUserInfoBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lfoh;->a:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lfoh;->a:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->PUBLISHED:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityTopicFeedActivity;->a(Landroid/content/Context;Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;)V

    .line 81
    return-void
.end method
