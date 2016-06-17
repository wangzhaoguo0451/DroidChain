.class public final Lfey;
.super Ljava/lang/Object;
.source "CommunityTopicListActivity.java"

# interfaces
.implements Lfek;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lfey;->a:Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lfey;->a:Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lfey;->a:Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a(Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lfey;->a:Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;

    const v1, 0x7f0301d5

    invoke-static {v0, v1}, Lj;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 126
    const v0, 0x7f0c0077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    const v2, 0x7f0e01de

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v0, p0, Lfey;->a:Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method
