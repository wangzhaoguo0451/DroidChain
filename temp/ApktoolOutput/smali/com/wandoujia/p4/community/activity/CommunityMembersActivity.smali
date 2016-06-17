.class public Lcom/wandoujia/p4/community/activity/CommunityMembersActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CommunityMembersActivity.java"


# instance fields
.field private a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    const-string v1, "group_model"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32
    const-class v1, Lcom/wandoujia/p4/community/activity/CommunityMembersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

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
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    if-eqz v0, :cond_0

    const-string v1, "group_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityMembersActivity;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    .line 44
    :cond_0
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/p4/community/activity/CommunityMembersActivity;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-eqz v2, :cond_1

    const-string v2, "group_model"

    iget-object v3, p0, Lcom/wandoujia/p4/community/activity/CommunityMembersActivity;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityMembersActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 45
    return-void
.end method
