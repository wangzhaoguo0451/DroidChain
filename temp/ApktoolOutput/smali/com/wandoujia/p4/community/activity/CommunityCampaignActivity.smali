.class public Lcom/wandoujia/p4/community/activity/CommunityCampaignActivity;
.super Lcom/wandoujia/p4/campaign/CampaignActivity;
.source "CommunityCampaignActivity.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->onBackPressed()V

    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityCampaignActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Lfdz;

    iget-object v1, p0, Lcom/wandoujia/p4/community/activity/CommunityCampaignActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lfdz;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 32
    invoke-virtual {v0}, Lfdz;->execute()V

    .line 33
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityCampaignActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/wandoujia/p4/campaign/CampaignActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityCampaignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/activity/CommunityCampaignActivity;->a:Ljava/lang/String;

    .line 23
    return-void
.end method
