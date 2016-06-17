.class public final Lfii;
.super Landroid/os/AsyncTask;
.source "CommunityTopicListTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;",
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
    .line 253
    iput-object p1, p0, Lfii;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lfii;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V

    return-void
.end method

.method private varargs a()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    .locals 2

    .prologue
    .line 256
    new-instance v0, Ldyk;

    iget-object v1, p0, Lfii;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->g(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldyk;-><init>(Ljava/lang/String;)V

    .line 258
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
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
    .line 253
    invoke-direct {p0}, Lfii;->a()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 253
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lfii;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfii;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    iget-object v0, p0, Lfii;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->h(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->setGroupModel(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    iget-object v0, p0, Lfii;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    iget-object v1, p0, Lfii;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    const v2, 0x7f0e01df

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfii;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->i(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V

    iget-object v0, p0, Lfii;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;->j(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment;)V

    goto :goto_0
.end method
