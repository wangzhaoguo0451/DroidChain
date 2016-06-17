.class public final Lfhz;
.super Landroid/os/AsyncTask;
.source "CommunityTopicDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;",
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
    .line 401
    iput-object p1, p0, Lfhz;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lfhz;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V

    return-void
.end method

.method private varargs a()Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;
    .locals 2

    .prologue
    .line 405
    new-instance v0, Lefo;

    iget-object v1, p0, Lfhz;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->f(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lefo;-><init>(Ljava/lang/String;)V

    .line 407
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
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
    .line 401
    invoke-direct {p0}, Lfhz;->a()Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 401
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    iget-object v0, p0, Lfhz;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lfhz;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfhz;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    iget-object v0, p0, Lfhz;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->g(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V

    goto :goto_0
.end method
