.class public final Lfht;
.super Ljava/lang/Object;
.source "CommunityTopicDetailFragment.java"

# interfaces
.implements Lrw;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lfht;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 323
    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 342
    :goto_0
    return v1

    .line 325
    :pswitch_0
    new-instance v0, Lfcq;

    new-instance v2, Lfiw;

    iget-object v3, p0, Lfht;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lfiw;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lfht;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lfht;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v4}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lfcq;-><init>(Lfir;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lfcq;->execute()V

    goto :goto_0

    .line 329
    :pswitch_1
    new-instance v0, Lfcy;

    iget-object v2, p0, Lfht;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfht;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lfcy;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lfcy;->execute()V

    goto :goto_0

    .line 333
    :pswitch_2
    new-instance v2, Lfcv;

    iget-object v3, p0, Lfht;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfht;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v4}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isFeatured()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {v2, v3, v0}, Lfcv;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lfcv;->execute()V

    goto :goto_0

    .line 336
    :pswitch_3
    new-instance v2, Lfev;

    iget-object v3, p0, Lfht;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lfht;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v4}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfht;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isSticky()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {v2, v3, v4, v0}, Lfev;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lfev;->execute()V

    goto/16 :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0505
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
