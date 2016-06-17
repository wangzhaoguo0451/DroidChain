.class public Lcom/wandoujia/p4/video2/download/VideoDownloadAction;
.super Ljava/lang/Object;
.source "VideoDownloadAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field private c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field private d:Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Lghn;

.field private h:Lghm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 73
    sget-object v0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;->NORMAL:Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->d:Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;

    .line 74
    iput-object p3, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 75
    iput-object p1, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a()Ldd;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    const v2, 0x7f0e0281

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    iget-object v2, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadedEpisodeMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v4, v3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v3, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->albumModel:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-direct {p0, v2, v0, v3}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a(Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a(Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Ljava/util/List;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 51
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ld;->C()V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getAvailableExternalStorage()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getAvailableInternalStorage()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    new-instance v1, Lhoq;

    invoke-direct {v1, v0}, Lhoq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0457

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getAvailableExternalStorage()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    const v2, 0x7f0e039e

    invoke-virtual {v0, v2}, Lhoq;->a(I)Lhoq;

    move-result-object v0

    const v2, 0x7f0e023a

    new-instance v3, Lgfd;

    invoke-direct {v3}, Lgfd;-><init>()V

    invoke-virtual {v0, v2, v3}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    invoke-virtual {v1}, Lhoq;->b()Lhoj;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkType()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->isReverseProxyOn()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->f()Z

    move-result v1

    if-nez v1, :cond_3

    iget-wide v2, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->b()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    new-instance v1, Lhoq;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lhoq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0611

    invoke-virtual {v1, v2}, Lhoq;->a(I)Lhoq;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    const v3, 0x7f0e0610

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-wide v4, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v1

    const v2, 0x7f0e027e

    new-instance v3, Lghc;

    invoke-direct {v3, p0, v0, p2}, Lghc;-><init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    invoke-virtual {v1, v2, v3}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0162

    new-instance v2, Lghb;

    invoke-direct {v2}, Lghb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-direct {p0, v1, v0, p2}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a(Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-static {}, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;->a()Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;

    move-result-object v1

    iget-object v4, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v4, v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-virtual {v1, v4, v5}, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;->a(J)V

    .line 309
    sget-object v1, Lghd;->b:[I

    iget-object v4, p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/local/LocalVideoType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    .line 323
    :goto_1
    new-instance v4, Lcom/wandoujia/p4/video2/model/VideoLogModel;

    invoke-direct {v4}, Lcom/wandoujia/p4/video2/model/VideoLogModel;-><init>()V

    iget-object v5, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-virtual {v4, v5}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setVideoInfo(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setEpisodeInfo(Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setEpisodeInfo(Lcom/wandoujia/p4/video2/model/VideoDownloadModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setResourceTypeV3(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setOpenTypeV3(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    move-result-object v0

    .line 328
    sget-object v1, Lghd;->a:[I

    iget-object v4, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->d:Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_1

    .line 331
    :goto_2
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->f:Z

    iget-object v1, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-static {v0, v1, p1, p2, p3}, Lgeu;->a(ZLcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    .line 340
    sget-object v0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a:Ljava/lang/String;

    const-string v1, "download start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object v0, p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    sget-object v1, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PRIVATE:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v0

    iget-object v1, p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    move v0, v3

    :goto_3
    if-eqz v0, :cond_3

    .line 344
    sget-object v0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a:Ljava/lang/String;

    const-string v1, "download apk start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v0

    iget-object v1, p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a(Ljava/lang/String;Z)V

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->d:Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;

    sget-object v1, Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;->NORMAL:Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;

    if-ne v0, v1, :cond_0

    .line 354
    iget v0, p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->promoteType:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    sget-object v1, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PRIVATE:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    if-eq v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    iget-object v1, p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    iget-object v4, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v4, v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v6

    invoke-virtual {v5}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->d(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_0

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v6

    invoke-virtual {v5}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->c(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getAppVersionCode()I

    move-result v7

    int-to-long v8, v7

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    :cond_4
    new-instance v6, Lhoq;

    invoke-direct {v6, v0}, Lhoq;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b022a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b022b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const v8, 0x7f0e050e

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    aput-object v1, v8, v3

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e0598

    invoke-virtual {v6, v0}, Lhoq;->a(I)Lhoq;

    invoke-virtual {v6, v7}, Lhoq;->a(Landroid/view/View;)Lhoq;

    const v0, 0x7f0e0388

    new-instance v1, Lgex;

    invoke-direct {v1, v5}, Lgex;-><init>(Lcom/wandoujia/p4/video/model/ProviderInfo;)V

    invoke-virtual {v6, v0, v1}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    const v0, 0x7f0e0513

    new-instance v1, Lgey;

    invoke-direct {v1}, Lgey;-><init>()V

    invoke-virtual {v6, v0, v1}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    invoke-virtual {v6}, Lhoq;->a()Lhoj;

    move-result-object v0

    invoke-virtual {v0}, Lhoj;->show()V

    goto/16 :goto_0

    .line 311
    :pswitch_0
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->WDJ_HOSTED:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 312
    sget-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->SYSTEM:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    goto/16 :goto_1

    .line 315
    :pswitch_1
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->PARTNER_PRIVATE:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 316
    sget-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->IAS_APP:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    goto/16 :goto_1

    .line 319
    :pswitch_2
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->PARTNER_COMMON:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 320
    sget-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->WDJ:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    goto/16 :goto_1

    .line 330
    :pswitch_3
    const-string v1, "download_all"

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setConsumptionSource(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    goto/16 :goto_2

    .line 341
    :cond_5
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v4}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    invoke-virtual {v4}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getLocalPlayIntent()Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v0

    iget v1, v1, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->minVersionCode:I

    if-ge v0, v1, :cond_7

    :cond_6
    move v0, v3

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_3

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Lghm;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->h:Lghm;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 51
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadModelList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ld;->C()V

    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    iget-object v2, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    if-eqz v0, :cond_5

    iget-wide v6, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_5

    iget-wide v0, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    add-long/2addr v2, v0

    move-wide v0, v2

    :goto_2
    move-wide v2, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getAvailableExternalStorage()J

    move-result-wide v0

    iget-wide v4, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadedTotalSize:J

    sub-long v4, v2, v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getAvailableInternalStorage()J

    move-result-wide v0

    iget-wide v4, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadedTotalSize:J

    sub-long v4, v2, v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    new-instance v1, Lhoq;

    invoke-direct {v1, v0}, Lhoq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0458

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getAvailableExternalStorage()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    const v2, 0x7f0e039e

    invoke-virtual {v0, v2}, Lhoq;->a(I)Lhoq;

    move-result-object v0

    const v2, 0x7f0e023a

    new-instance v3, Lgfe;

    invoke-direct {v3}, Lgfe;-><init>()V

    invoke-virtual {v0, v2, v3}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    invoke-virtual {v1}, Lhoq;->b()Lhoj;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadedEpisodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-wide v4, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadedTotalSize:J

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->f()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lhoq;

    iget-object v4, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    invoke-direct {v1, v4}, Lhoq;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e0611

    invoke-virtual {v1, v4}, Lhoq;->a(I)Lhoq;

    move-result-object v1

    iget-object v4, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    const v5, 0x7f0e060c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e027e

    new-instance v2, Lghk;

    invoke-direct {v2, p0, p1}, Lghk;-><init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0162

    new-instance v2, Lghj;

    invoke-direct {v2}, Lghj;-><init>()V

    invoke-virtual {v0, v1, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    new-instance v4, Lghl;

    invoke-direct {v4, p0, p1}, Lghl;-><init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;)V

    new-instance v5, Lhoq;

    invoke-direct {v5, v1}, Lhoq;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e023b

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e02a4

    invoke-virtual {v0, v1}, Lhoq;->a(I)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0162

    new-instance v2, Lgfc;

    invoke-direct {v2}, Lgfc;-><init>()V

    invoke-virtual {v0, v1, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e023a

    invoke-virtual {v0, v1, v4}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    invoke-virtual {v5}, Lhoq;->b()Lhoj;

    goto/16 :goto_0

    :cond_5
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    if-nez v0, :cond_0

    .line 370
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Lghn;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->g:Lghn;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->f:Z

    return v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 84
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Ld;->C()V

    .line 87
    :cond_0
    sget-object v0, Lghd;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->d:Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 89
    :pswitch_0
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    if-nez v0, :cond_2

    move v0, v7

    :goto_1
    if-nez v0, :cond_3

    .line 90
    :cond_1
    invoke-static {}, Ld;->C()V

    goto :goto_0

    :cond_2
    move v0, v8

    .line 89
    goto :goto_1

    .line 93
    :cond_3
    new-instance v9, Lgpi;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    invoke-direct {v9, v0}, Lgpi;-><init>(Landroid/content/Context;)V

    new-instance v0, Lghn;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    iget-object v1, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v4, v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    new-instance v6, Lghg;

    invoke-direct {v6, p0, v9}, Lghg;-><init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lgpi;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lghn;-><init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;JJLgho;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->g:Lghn;

    invoke-virtual {v9, v8}, Lgpi;->setCancelable(Z)V

    invoke-virtual {v9, v8}, Lgpi;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lghh;

    invoke-direct {v0, p0}, Lghh;-><init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)V

    invoke-virtual {v9, v0}, Lgpi;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Lghi;

    invoke-direct {v0, p0}, Lghi;-><init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)V

    invoke-virtual {v9, v0}, Lgpi;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v9}, Lgpi;->show()V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->g:Lghn;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 97
    invoke-static {}, Ld;->C()V

    goto :goto_0

    .line 100
    :cond_4
    new-instance v0, Lgpi;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lgpi;-><init>(Landroid/content/Context;)V

    new-instance v1, Lghm;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    new-instance v4, Lgha;

    invoke-direct {v4, p0, v0}, Lgha;-><init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lgpi;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lghm;-><init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;JLgho;)V

    iput-object v1, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->h:Lghm;

    invoke-virtual {v0, v8}, Lgpi;->setCancelable(Z)V

    invoke-virtual {v0, v8}, Lgpi;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lghe;

    invoke-direct {v1, p0}, Lghe;-><init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)V

    invoke-virtual {v0, v1}, Lgpi;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v1, Lghf;

    invoke-direct {v1, p0}, Lghf;-><init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)V

    invoke-virtual {v0, v1}, Lgpi;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lgpi;->show()V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->h:Lghm;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
