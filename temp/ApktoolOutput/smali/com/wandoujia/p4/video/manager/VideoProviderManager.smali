.class public final Lcom/wandoujia/p4/video/manager/VideoProviderManager;
.super Ljava/lang/Object;
.source "VideoProviderManager.java"


# static fields
.field private static f:Lcom/wandoujia/p4/video/manager/VideoProviderManager;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/p4/video/model/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Lgep;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/wandoujia/update/toolkit/UpdateClient;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/wandoujia/base/utils/Preferences;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->g:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->h:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->d:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->i:Ljava/util/Set;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->j:Ljava/util/Map;

    .line 86
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "video_provider_preferences"

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/Preferences;->getById(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->k:Lcom/wandoujia/base/utils/Preferences;

    .line 198
    return-void
.end method

.method public static declared-synchronized a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;
    .locals 2

    .prologue
    .line 201
    const-class v1, Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->f:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    invoke-direct {v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->f:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    .line 204
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->f:Lcom/wandoujia/p4/video/manager/VideoProviderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 497
    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->isReverseProxyOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 655
    if-eqz p0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lham;->f:Lham;

    invoke-virtual {v1}, Lham;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/videoProviderApk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 659
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 660
    if-lez v0, :cond_0

    .line 661
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 663
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/p4/video2/local/LocalFileUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 454
    new-instance v0, Lhoq;

    invoke-direct {v0, p1}, Lhoq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e04ed

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e04ec

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0390

    new-instance v2, Lgem;

    invoke-direct {v2, p0, p3, p4}, Lgem;-><init>(Lcom/wandoujia/p4/video/manager/VideoProviderManager;Ljava/lang/String;Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0513

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    .line 485
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;-><init>()V

    .line 486
    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DISPLAY:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setAction(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PRIVATE:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setFromType(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->APP_NEED_INSTALL:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayType(Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoType(Lcom/wandoujia/p4/video/model/VideoType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->localVideoEpisodeModel:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setEpisodeId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setProviderName(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->send()V

    .line 494
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 6
    .parameter

    .prologue
    .line 253
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 255
    if-nez v1, :cond_1

    .line 267
    :cond_0
    return-void

    .line 258
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 259
    invoke-static {v3}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    invoke-static {v3}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    if-eqz v4, :cond_2

    .line 262
    iget-object v5, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->d:Ljava/util/Map;

    invoke-static {v3}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 699
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->k:Lcom/wandoujia/base/utils/Preferences;

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putObject(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 701
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 582
    :goto_0
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    .line 609
    :cond_0
    :goto_1
    return-void

    .line 586
    :cond_1
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v2

    .line 587
    if-eqz v2, :cond_5

    .line 588
    new-instance v3, Lhby;

    invoke-direct {v3}, Lhby;-><init>()V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".apk"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 592
    const-string v5, "provider_name"

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iput-object v0, v3, Lhby;->e:Ljava/lang/String;

    iput-boolean p2, v3, Lhby;->f:Z

    iput-object p1, v3, Lhby;->h:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lhby;->i:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v0, v3, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getAppDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lhby;->d:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, v3, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lhby;->j:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lhby;->g:Ljava/lang/String;

    invoke-static {v4}, Ld;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lhby;->o:Ljava/lang/String;

    .line 603
    sget-object v0, Lham;->f:Lham;

    const-string v4, "download"

    invoke-virtual {v0, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v3}, Lhby;->a()Lhbx;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 606
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    .line 608
    :goto_2
    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->i:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    move v0, v1

    .line 606
    goto :goto_2

    .line 611
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    .line 614
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 615
    iget-object v2, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->j:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 611
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 618
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    .line 622
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 623
    iget-object v2, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->j:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 618
    :cond_6
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;
    .locals 1
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/ProviderInfo;

    return-object v0
.end method

.method public final declared-synchronized b()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/p4/video/model/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :try_start_1
    new-instance v2, Lczw;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lczw;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 291
    :try_start_2
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    new-instance v3, Lgej;

    invoke-direct {v3}, Lgej;-><init>()V

    invoke-virtual {v3}, Lgej;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcvo;->a(Lczw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 298
    :try_start_3
    invoke-virtual {v2}, Lczw;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 307
    :goto_0
    monitor-exit p0

    return-object v0

    .line 294
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    .line 300
    :try_start_4
    invoke-virtual {v0}, Lczw;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 303
    goto :goto_0

    .line 302
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 296
    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 300
    :try_start_5
    invoke-virtual {v2}, Lczw;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v0, v1

    .line 303
    goto :goto_0

    .line 302
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_0

    .line 300
    :try_start_6
    invoke-virtual {v2}, Lczw;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 302
    :cond_0
    :goto_4
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 285
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 302
    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 298
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 296
    :catch_6
    move-exception v0

    goto :goto_2

    .line 294
    :catch_7
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 507
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    const v0, 0x7f0e047f

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 551
    :goto_0
    return-void

    .line 511
    :cond_0
    new-instance v0, Lhoq;

    invoke-direct {v0, p1}, Lhoq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e04ef

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e04ee

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0390

    new-instance v2, Lgen;

    invoke-direct {v2, p0, p3, p4}, Lgen;-><init>(Lcom/wandoujia/p4/video/manager/VideoProviderManager;Ljava/lang/String;Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0513

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    .line 542
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;-><init>()V

    .line 543
    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DISPLAY:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setAction(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PRIVATE:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setFromType(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->APP_NEED_INSTALL:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayType(Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoType(Lcom/wandoujia/p4/video/model/VideoType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->localVideoEpisodeModel:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setEpisodeId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setProviderName(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->send()V

    goto/16 :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 6

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 317
    :goto_0
    const/4 v1, 0x0

    .line 321
    :try_start_2
    new-instance v0, Lczy;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v3}, Lczy;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 322
    :try_start_3
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a:Ljava/util/Map;

    new-instance v3, Lgek;

    invoke-direct {v3}, Lgek;-><init>()V

    invoke-virtual {v3}, Lgek;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lczy;)V

    .line 324
    invoke-virtual {v0}, Lczy;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 332
    :try_start_4
    invoke-virtual {v0}, Lczy;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 341
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 326
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_0

    .line 334
    :try_start_5
    invoke-virtual {v0}, Lczy;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 336
    :catch_1
    move-exception v0

    goto :goto_1

    .line 328
    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_0

    .line 334
    :try_start_6
    invoke-virtual {v0}, Lczy;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 336
    :catch_3
    move-exception v0

    goto :goto_1

    .line 330
    :catch_4
    move-exception v0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_0

    .line 334
    :try_start_7
    invoke-virtual {v0}, Lczy;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 336
    :catch_5
    move-exception v0

    goto :goto_1

    .line 332
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_1

    .line 334
    :try_start_8
    invoke-virtual {v1}, Lczy;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 336
    :cond_1
    :goto_6
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 311
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_6
    move-exception v0

    goto :goto_0

    .line 336
    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_6

    .line 332
    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    .line 330
    :catch_9
    move-exception v1

    goto :goto_4

    .line 328
    :catch_a
    move-exception v1

    goto :goto_3

    .line 326
    :catch_b
    move-exception v1

    goto :goto_2
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 435
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 440
    :goto_0
    iget-object v1, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    return-void

    .line 438
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 445
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 344
    new-instance v0, Lgjv;

    invoke-direct {v0}, Lgjv;-><init>()V

    .line 345
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    new-instance v2, Lgel;

    invoke-direct {v2, p0}, Lgel;-><init>(Lcom/wandoujia/p4/video/manager/VideoProviderManager;)V

    invoke-virtual {v1, v0, v2}, Lfvu;->executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;)Ljava/util/concurrent/Future;

    .line 374
    return-void
.end method

.method public final declared-synchronized e()Z
    .locals 4

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 378
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 379
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPrivateSuffix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPrivateSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 383
    :cond_1
    :try_start_1
    const-string v0, ".mp4"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->h:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    const/4 v0, 0x0

    .line 388
    :goto_1
    monitor-exit p0

    return v0

    .line 387
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->h:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 578
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
