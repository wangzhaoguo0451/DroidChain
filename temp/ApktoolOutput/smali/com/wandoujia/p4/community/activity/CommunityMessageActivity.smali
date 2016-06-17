.class public Lcom/wandoujia/p4/community/activity/CommunityMessageActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CommunityMessageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    const-class v1, Lcom/wandoujia/p4/community/activity/CommunityMessageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityNotificationListFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityNotificationListFragment;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityMessageActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    invoke-virtual {v1}, Lag;->a()I

    .line 23
    return-void
.end method
