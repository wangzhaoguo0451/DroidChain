.class public final Lfob;
.super Ljava/lang/Object;
.source "CommunityTopicListBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lfob;->a:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lfob;->a:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 73
    return-void
.end method
