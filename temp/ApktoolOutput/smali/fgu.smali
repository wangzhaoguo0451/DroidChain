.class public final Lfgu;
.super Landroid/os/AsyncTask;
.source "CommunityBallotStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lfgu;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lfgu;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)V

    return-void
.end method

.method private varargs a()Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lfgu;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 159
    :goto_0
    return-object v0

    .line 155
    :cond_0
    :try_start_0
    new-instance v2, Lfit;

    invoke-direct {v2}, Lfit;-><init>()V

    .line 156
    invoke-virtual {v2}, Lfit;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lflw;

    iget-object v3, p0, Lfgu;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lflw;->a:Ljava/lang/String;

    .line 157
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Lfgu;->a()Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 146
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lfgu;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfgu;->a:Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->b(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;->items:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->i:Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    iget-object v1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->g:Lfez;

    if-nez v1, :cond_2

    new-instance v1, Lfez;

    iget v2, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->h:I

    invoke-direct {v1, v2, p1}, Lfez;-><init>(ILcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;)V

    iput-object v1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->g:Lfez;

    iget-object v1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->f:Landroid/widget/GridView;

    iget-object v0, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->g:Lfez;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->g:Lfez;

    iget-object v0, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->i:Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    iput-object v0, v1, Lfez;->c:Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;->items:Ljava/util/List;

    iput-object v0, v1, Lfez;->b:Ljava/util/List;

    :cond_3
    invoke-virtual {v1}, Lfez;->notifyDataSetChanged()V

    invoke-virtual {v1}, Lfez;->a()V

    goto :goto_0
.end method
