.class public Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfoVideo;
.super Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;
.source "PlayExpMediaInfoVideo.java"


# static fields
.field public static final EXTRA_KEY_IS_ADS:Ljava/lang/String; = "is_ads"


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;-><init>(Landroid/content/Intent;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getMediasFromIntent(Ljava/lang/String;Landroid/content/Intent;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 28
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v3, v0, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo;->videos:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo;->videos:Ljava/util/List;

    invoke-static {v3}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 41
    :cond_0
    :goto_1
    return-object v2

    .line 27
    :cond_1
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgro;->a(Landroid/content/Context;)Lgro;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgro;->b(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo;

    invoke-direct {v3}, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo;-><init>()V

    iget-object v1, v4, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->url:Ljava/lang/String;

    iput-object v1, v3, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo;->url:Ljava/lang/String;

    iget-object v0, v0, Lgro;->a:Lgrq;

    iget-wide v6, v4, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual {v0, v6, v7}, Lgrq;->b(J)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    iget-object v0, v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->extra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lgxm;->b()Lcvo;

    move-result-object v0

    iget-object v6, v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->extra:Ljava/lang/String;

    const-class v7, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo$Video;

    invoke-virtual {v0, v6, v7}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo$Video;

    :goto_3
    if-nez v0, :cond_3

    new-instance v0, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo$Video;

    invoke-direct {v0}, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo$Video;-><init>()V

    iget-object v6, v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->url:Ljava/lang/String;

    iput-object v6, v0, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo$Video;->url:Ljava/lang/String;

    :cond_3
    iget-object v6, v4, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo$Video;->downloadPath:Ljava/lang/String;

    iget-object v1, v3, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo;->videos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v3

    goto/16 :goto_0

    .line 33
    :cond_5
    iget-object v0, v0, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo$Video;

    .line 34
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo$Video;->downloadPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 35
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v4, "is_ads"

    iget-boolean v5, v0, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo$Video;->isAdvertisement:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v4, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;

    iget-object v0, v0, Lcom/wandoujia/p4/webdownload/download/bridge/VideoWebDownloadInfo$Video;->downloadPath:Ljava/lang/String;

    invoke-direct {v4, v0, v3}, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object v2, v1

    .line 41
    goto/16 :goto_1

    :cond_8
    move-object v0, v2

    goto :goto_3
.end method
