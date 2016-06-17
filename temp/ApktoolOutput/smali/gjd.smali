.class public final Lgjd;
.super Landroid/os/AsyncTask;
.source "VideoDetailTabHostFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/wandoujia/p4/video/model/VideoType;

.field private b:Lcom/wandoujia/p4/video/model/VideoSubType;

.field private synthetic c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1031
    iput-object p1, p0, Lgjd;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1031
    invoke-direct {p0, p1}, Lgjd;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1038
    :try_start_0
    new-instance v1, Lgjh;

    invoke-direct {v1}, Lgjh;-><init>()V

    .line 1039
    invoke-virtual {v1}, Lgjh;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lgki;

    iget-object v2, p0, Lgjd;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lgki;->a(J)Lgki;

    move-result-object v0

    iget-object v2, p0, Lgjd;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgki;->b:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_VIDEO_TYPE:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgki;->d:Ljava/lang/String;

    .line 1042
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    .line 1043
    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    iput-object v1, p0, Lgjd;->a:Lcom/wandoujia/p4/video/model/VideoType;

    .line 1044
    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subType:Lcom/wandoujia/p4/video/model/VideoSubType;

    iput-object v1, p0, Lgjd;->b:Lcom/wandoujia/p4/video/model/VideoSubType;

    .line 1045
    iget-object v1, p0, Lgjd;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-wide v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1047
    :goto_1
    return-object v0

    .line 1045
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1031
    invoke-direct {p0}, Lgjd;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1031
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lgjd;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgjd;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iget-object v1, p0, Lgjd;->a:Lcom/wandoujia/p4/video/model/VideoType;

    iget-object v2, p0, Lgjd;->b:Lcom/wandoujia/p4/video/model/VideoSubType;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video/model/VideoType;Lcom/wandoujia/p4/video/model/VideoSubType;)V

    :cond_0
    return-void
.end method
