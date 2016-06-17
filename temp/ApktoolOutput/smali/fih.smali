.class public final Lfih;
.super Landroid/os/AsyncTask;
.source "CommunityTopicListTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/community/http/model/CommunityActivityListModel;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lfih;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lfih;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V

    return-void
.end method

.method private varargs a()Lcom/wandoujia/p4/community/http/model/CommunityActivityListModel;
    .locals 2

    .prologue
    .line 283
    :try_start_0
    new-instance v0, Lcql;

    iget-object v1, p0, Lfih;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->g(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcql;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityActivityListModel;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 279
    invoke-direct {p0}, Lfih;->a()Lcom/wandoujia/p4/community/http/model/CommunityActivityListModel;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 279
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityActivityListModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityActivityListModel;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityActivityListModel;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lffe;

    invoke-direct {v0}, Lffe;-><init>()V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityActivityListModel;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;

    iget-object v2, p0, Lfih;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->k(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;

    move-result-object v2

    new-instance v3, Lffu;

    iget-object v4, p0, Lfih;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v4}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->g(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lffu;-><init>(Ljava/lang/String;Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;)V

    invoke-static {v2, v3}, Lffe;->a(Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;Lffu;)V

    iget-object v0, p0, Lfih;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->k(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
