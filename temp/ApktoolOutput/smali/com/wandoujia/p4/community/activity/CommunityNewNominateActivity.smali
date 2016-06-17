.class public Lcom/wandoujia/p4/community/activity/CommunityNewNominateActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CommunityNewNominateActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    const-class v1, Lcom/wandoujia/p4/community/activity/CommunityNewNominateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 51
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityNewNominateActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    .line 43
    const v1, 0x1020002

    invoke-virtual {v0, v1, p1}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    .line 44
    invoke-virtual {v0}, Lag;->a()I

    .line 45
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/community/activity/CommunityNewNominateActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 31
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onDestroy()V

    .line 37
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/p4/community/eventbus/CommunityEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotCompleteFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/community/activity/CommunityNewNominateActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const v0, 0x7f0e01b0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/activity/CommunityNewNominateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_1
    sget v1, Ldxa;->a:I

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0
.end method
