.class public Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CommunityTopicListActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->finish()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->b:Ljava/lang/String;

    new-instance v1, Lfei;

    const-string v2, "game"

    new-instance v3, Lfey;

    invoke-direct {v3, p0}, Lfey;-><init>(Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;)V

    invoke-direct {v1, v0, v2, v3}, Lfei;-><init>(Ljava/lang/String;Ljava/lang/String;Lfek;)V

    invoke-virtual {v1}, Lfei;->execute()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const-string v1, "group_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iput-object v1, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->b:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    const-string v1, "group.wandoujia.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "pn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-string v1, "?pn="

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->b:Ljava/lang/String;

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 136
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;-><init>()V

    .line 137
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    const-string v2, "group_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->setArguments(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x7f0c02aa

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 141
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->finish()V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a(Landroid/content/Intent;)V

    .line 60
    invoke-direct {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a(Landroid/content/Intent;)V

    .line 69
    invoke-direct {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a()V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->finish()V

    goto :goto_0
.end method
