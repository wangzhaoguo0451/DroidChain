.class public final Lgjb;
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
.field final synthetic a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

.field private b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

.field private c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

.field private d:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

.field private e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 958
    invoke-direct {p0, p1}, Lgjb;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 966
    iget-object v0, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ld;->c(J)Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    move-result-object v0

    iput-object v0, p0, Lgjb;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    .line 967
    invoke-static {}, Lgfz;->a()Lgfz;

    move-result-object v0

    iget-object v1, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lgfz;->a(J)Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    move-result-object v0

    iput-object v0, p0, Lgjb;->d:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    .line 968
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v0

    iget-object v1, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lgkr;->a(J)Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    move-result-object v0

    iput-object v0, p0, Lgjb;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 970
    :try_start_0
    iget-object v0, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->n(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video/model/VideoType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoType;->VARIETY:Lcom/wandoujia/p4/video/model/VideoType;

    if-ne v0, v1, :cond_0

    .line 971
    new-instance v1, Lgjt;

    invoke-direct {v1}, Lgjt;-><init>()V

    .line 972
    invoke-virtual {v1}, Lgjt;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lgkj;

    iget-object v2, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lgkj;->a(J)Lgki;

    move-result-object v0

    iget-object v2, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgki;->b:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_DETAIL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgki;->d:Ljava/lang/String;

    .line 976
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iput-object v0, p0, Lgjb;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    .line 977
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1006
    :goto_0
    return-object v0

    .line 978
    :cond_0
    iget-object v0, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->p(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video/model/VideoSubType;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->p(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video/model/VideoSubType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoSubType;->ANIME:Lcom/wandoujia/p4/video/model/VideoSubType;

    if-ne v0, v1, :cond_1

    .line 979
    new-instance v1, Lgfs;

    invoke-direct {v1}, Lgfs;-><init>()V

    .line 980
    invoke-virtual {v1}, Lgfs;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lgki;

    iget-object v2, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lgki;->a(J)Lgki;

    move-result-object v0

    iget-object v2, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgki;->b:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->DESC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    iput-object v2, v0, Lgki;->c:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    sget-object v2, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_ANIME_DETAIL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgki;->d:Ljava/lang/String;

    .line 985
    invoke-virtual {v1}, Lgfs;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lgki;

    invoke-virtual {v0}, Lgki;->a()Lgki;

    move-result-object v0

    invoke-virtual {v0}, Lgki;->b()Lgki;

    .line 988
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iput-object v0, p0, Lgjb;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    .line 989
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 991
    :cond_1
    new-instance v1, Lgjh;

    invoke-direct {v1}, Lgjh;-><init>()V

    .line 992
    invoke-virtual {v1}, Lgjh;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lgki;

    iget-object v2, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lgki;->a(J)Lgki;

    move-result-object v0

    iget-object v2, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->p(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video/model/VideoSubType;

    move-result-object v2

    iput-object v2, v0, Lgki;->e:Lcom/wandoujia/p4/video/model/VideoSubType;

    iget-object v2, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->o(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgki;->b:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->DESC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    iput-object v2, v0, Lgki;->c:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    sget-object v2, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_DETAIL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgki;->d:Ljava/lang/String;

    .line 998
    invoke-virtual {v1}, Lgjh;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lgki;

    invoke-virtual {v0}, Lgki;->a()Lgki;

    move-result-object v0

    invoke-virtual {v0}, Lgki;->b()Lgki;

    .line 1001
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iput-object v0, p0, Lgjb;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    .line 1002
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 1006
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 958
    invoke-direct {p0}, Lgjb;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 958
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgjb;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iget-object v1, p0, Lgjb;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v2, p0, Lgjb;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    iget-object v3, p0, Lgjb;->d:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    iget-object v4, p0, Lgjb;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video2/model/VideoDetailModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iget-object v0, v0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    new-instance v0, Lgjc;

    invoke-direct {v0, p0}, Lgjc;-><init>(Lgjb;)V

    goto :goto_0
.end method
