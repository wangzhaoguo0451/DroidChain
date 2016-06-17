.class public Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CommunityTopicDetailActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

.field private d:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->b:Z

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;-><init>()V

    .line 145
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 146
    iget-object v2, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->c:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-eqz v2, :cond_0

    .line 147
    const-string v2, "topic_model"

    iget-object v3, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->c:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    const-string v2, "topic_model_id"

    iget-object v3, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->d:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    if-eqz v2, :cond_2

    .line 153
    const-string v2, "notification_model"

    iget-object v3, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->d:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 155
    :cond_2
    const-string v2, "need_back_to_group"

    iget-boolean v3, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->b:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x7f0c02aa

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string v1, "notification"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const-string v1, "topic"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const-string v1, "topic_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    const-string v1, "group.wandoujia.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "topics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a:Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->b:Z

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->c:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->d:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->finish()V

    .line 141
    :cond_1
    return-void

    .line 131
    :cond_2
    const-string v0, "topic_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a:Ljava/lang/String;

    .line 132
    const-string v0, "topic"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->c:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 134
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->d:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;Z)V

    .line 74
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->finish()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a(Landroid/content/Intent;)V

    .line 86
    invoke-direct {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onDestroy()V

    .line 103
    sget-boolean v0, Ld;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;Z)V

    .line 104
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->openOptionsMenu()V

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a(Landroid/content/Intent;)V

    .line 94
    invoke-direct {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->finish()V

    goto :goto_0
.end method
