.class public Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CommunityPostContentActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

.field private c:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

.field private d:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    const-string v1, "group_model"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    const-string v1, "activity_type"

    const-string v2, "topic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-class v1, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 94
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    const-string v1, "topic_model"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 110
    const-string v1, "reply_model"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    const-string v1, "activity_type"

    const-string v2, "reply"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-class v1, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 114
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "activity_type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->a:Ljava/lang/String;

    const-string v0, "group_model"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    const-string v0, "topic_model"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->c:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    const-string v0, "reply_model"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->d:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "topic"

    iget-object v1, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;-><init>()V

    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-eqz v2, :cond_1

    const-string v2, "group_model"

    iget-object v3, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    iget-object v2, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->c:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-eqz v2, :cond_2

    const-string v2, "topic_model"

    iget-object v3, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->c:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_2
    iget-object v2, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->d:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    if-eqz v2, :cond_3

    const-string v2, "reply_model"

    iget-object v3, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->d:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_3
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 43
    :cond_4
    return-void

    .line 42
    :cond_5
    const-string v0, "reply"

    iget-object v1, p0, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;-><init>()V

    goto :goto_0
.end method
