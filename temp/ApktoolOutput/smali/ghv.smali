.class final Lghv;
.super Landroid/os/AsyncTask;
.source "VideoPlayHtml5Fragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/ripple_framework/download/DownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lghu;


# direct methods
.method constructor <init>(Lghu;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lghv;->a:Lghu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Lghv;->a:Lghu;

    iget-object v0, v0, Lghu;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v2, p0, Lghv;->a:Lghu;

    iget-object v2, v2, Lghu;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->h:Z

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 513
    check-cast p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    if-nez p1, :cond_0

    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    iget-object v0, p0, Lghv;->a:Lghu;

    iget-object v0, v0, Lghu;->b:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-static {v0}, Lger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->d:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iget-object v0, p0, Lghv;->a:Lghu;

    iget-object v0, v0, Lghu;->b:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->g:Ljava/lang/String;

    iget-object v0, p0, Lghv;->a:Lghu;

    iget-object v0, v0, Lghu;->b:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->j:Ljava/lang/String;

    iget-object v0, p0, Lghv;->a:Lghu;

    iget-object v0, v0, Lghu;->b:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-static {v0}, Lger;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->i:Ljava/lang/String;

    iget-object v0, p0, Lghv;->a:Lghu;

    iget-object v0, v0, Lghu;->b:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    iput-object v0, v1, Lhby;->h:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v0, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    :cond_0
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setAction(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PLAYER:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setFromType(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->HTML5:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayType(Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lghv;->a:Lghu;

    iget-object v1, v1, Lghu;->c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoType(Lcom/wandoujia/p4/video/model/VideoType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lghv;->a:Lghu;

    iget-object v1, v1, Lghu;->c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lghv;->a:Lghu;

    iget-object v1, v1, Lghu;->c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setEpisodeId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lghv;->a:Lghu;

    iget-object v1, v1, Lghu;->c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->n(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setProviderName(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lghv;->a:Lghu;

    iget-object v1, v1, Lghu;->c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->n(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->html5PlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayUrl(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->send()V

    return-void
.end method
