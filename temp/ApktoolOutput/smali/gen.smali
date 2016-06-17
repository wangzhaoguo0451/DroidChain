.class public final Lgen;
.super Ljava/lang/Object;
.source "VideoProviderManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;

.field private synthetic c:Lcom/wandoujia/p4/video/manager/VideoProviderManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video/manager/VideoProviderManager;Ljava/lang/String;Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lgen;->c:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iput-object p2, p0, Lgen;->a:Ljava/lang/String;

    iput-object p3, p0, Lgen;->b:Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lgen;->c:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iget-object v1, p0, Lgen;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a(Ljava/lang/String;Z)V

    .line 527
    iget-object v0, p0, Lgen;->c:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iget-object v1, p0, Lgen;->c:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iget-object v2, p0, Lgen;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgen;->b:Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;)V

    .line 529
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;-><init>()V

    .line 530
    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setAction(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PRIVATE:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setFromType(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->APP_NEED_INSTALL:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayType(Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lgen;->b:Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;

    iget-object v1, v1, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoType(Lcom/wandoujia/p4/video/model/VideoType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lgen;->b:Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;

    iget-object v1, v1, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lgen;->b:Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;

    iget-object v1, v1, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->localVideoEpisodeModel:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setEpisodeId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lgen;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setProviderName(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->send()V

    .line 538
    return-void
.end method
