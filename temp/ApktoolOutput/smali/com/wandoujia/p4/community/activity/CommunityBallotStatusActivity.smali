.class public Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CommunityBallotStatusActivity.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v2, "group_id"

    iget-object v3, p0, Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    .line 67
    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    .line 68
    invoke-virtual {v1}, Lag;->a()I

    .line 69
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    const-string v1, "group_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-class v1, Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 76
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    const-string v1, "group.wandoujia.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ballot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;->a:Ljava/lang/String;

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;->a(Landroid/content/Intent;)V

    .line 30
    invoke-direct {p0}, Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;->a()V

    .line 31
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;->a(Landroid/content/Intent;)V

    .line 37
    invoke-direct {p0}, Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;->a()V

    .line 38
    return-void
.end method
