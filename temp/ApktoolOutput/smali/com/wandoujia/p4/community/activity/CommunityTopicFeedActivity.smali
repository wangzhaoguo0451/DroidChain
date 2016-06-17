.class public Lcom/wandoujia/p4/community/activity/CommunityTopicFeedActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CommunityTopicFeedActivity.java"


# instance fields
.field private a:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/community/activity/CommunityTopicFeedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    const-string v1, "topics_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 31
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicFeedActivity;->finish()V

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v1, "topics_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicFeedActivity;->a:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    .line 47
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/activity/CommunityTopicFeedActivity;->setContentView(I)V

    .line 48
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "topics_type"

    iget-object v3, p0, Lcom/wandoujia/p4/community/activity/CommunityTopicFeedActivity;->a:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityTopicFeedActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x7f0c02aa

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    goto :goto_0
.end method
