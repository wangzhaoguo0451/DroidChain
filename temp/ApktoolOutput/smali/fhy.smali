.class public final Lfhy;
.super Landroid/os/AsyncTask;
.source "CommunityTopicDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/community/http/model/CommunityReplyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lfhy;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;Z)Z

    iget-object v0, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->h(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->i(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lfhx;

    move-result-object v0

    invoke-virtual {v0}, Lfhx;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->i(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lfhx;

    move-result-object v0

    iget-object v0, v0, Leun;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->j(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lfkz;

    move-result-object v1

    iget-object v0, v0, Lfgd;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfkz;->a(Ljava/lang/String;)Lcom/wandoujia/p4/community/http/model/CommunityReplyInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 427
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityReplyInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityReplyInfo;->getResult()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lfgk;

    invoke-direct {v2}, Lfgk;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    iget-object v3, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->i(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lfhx;

    move-result-object v3

    iget-object v3, v3, Leun;->a:Ljava/util/List;

    invoke-static {v0}, Lfgk;->a(Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)Lfgd;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->i(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lfhx;

    move-result-object v0

    invoke-virtual {v0}, Lfhx;->notifyDataSetChanged()V

    :cond_1
    iget-boolean v0, p1, Lcom/wandoujia/p4/community/http/model/CommunityReplyInfo;->hasMore:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->k(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->k(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;->DEFAULT:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->setState(Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->k(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->a()V

    :cond_2
    iget-object v0, p0, Lfhy;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;Z)Z

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method
