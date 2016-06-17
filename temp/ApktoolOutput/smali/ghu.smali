.class public final Lghu;
.super Ljava/lang/Object;
.source "VideoPlayHtml5Fragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

.field final synthetic c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

.field private synthetic d:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;Ljava/lang/String;Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lghu;->c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    iput-object p2, p0, Lghu;->d:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    iput-object p3, p0, Lghu;->a:Ljava/lang/String;

    iput-object p4, p0, Lghu;->b:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 512
    iget-object v0, p0, Lghu;->d:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    sget-object v1, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_INSTALL:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    if-ne v0, v1, :cond_1

    .line 513
    new-instance v0, Lghv;

    invoke-direct {v0, p0}, Lghv;-><init>(Lghu;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lghv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lghu;->d:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    sget-object v1, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_UPGRADE:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    if-ne v0, v1, :cond_0

    .line 555
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;-><init>()V

    .line 556
    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_UPDATE:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setAction(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PLAYER:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setFromType(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->HTML5:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayType(Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lghu;->c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoType(Lcom/wandoujia/p4/video/model/VideoType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lghu;->c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lghu;->c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setEpisodeId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lghu;->c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->n(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setProviderName(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lghu;->c:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->n(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->html5PlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayUrl(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->send()V

    goto :goto_0
.end method
