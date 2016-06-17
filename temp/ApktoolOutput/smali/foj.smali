.class public final Lfoj;
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
    .line 115
    iput-object p1, p0, Lfoj;->a:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lfoj;->a:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lfoj;->a:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/wandoujia/p4/account/activity/AccountModifyProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method
