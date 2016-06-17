.class public Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;
.super Ljava/lang/Object;
.source "OldLocalVideoAlbumModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONFIG_FILE_NAME:Ljava/lang/String; = ".config"

.field public static final VIDEO_INFO_FILE_NAME:Ljava/lang/String; = ".videoinfo"


# instance fields
.field private config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

.field private folderPath:Ljava/lang/String;

.field private id:J

.field private metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field protected videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected videoListForUi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private videoTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->id:J

    .line 46
    iput-object p3, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->folderPath:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoTitle:Ljava/lang/String;

    .line 56
    :goto_0
    invoke-static {p3}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->readConfig(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    .line 57
    invoke-direct {p0}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->initLastModifyTime()V

    .line 58
    return-void

    .line 54
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private initLastModifyTime()V
    .locals 8

    .prologue
    .line 292
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->folderPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->folderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iget-wide v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->lastModifyTime:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 310
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->setLastModifyTime(J)V

    goto :goto_0

    .line 300
    :cond_3
    const-wide/16 v0, 0x0

    .line 301
    iget-object v2, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;

    .line 302
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_4

    .line 304
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    :goto_2
    move-wide v2, v0

    .line 306
    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_2
.end method

.method private static declared-synchronized readConfig(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 61
    const-class v3, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;

    monitor-enter v3

    .line 62
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".config"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    :try_start_1
    new-instance v1, Lczw;

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v4}, Lczw;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 68
    :try_start_2
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    const-class v4, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    invoke-virtual {v0, v1, v4}, Lcvo;->a(Lczw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 74
    :try_start_3
    invoke-virtual {v1}, Lczw;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v0

    .line 86
    :goto_0
    if-eqz v1, :cond_4

    :try_start_4
    iget v0, v1, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->configVersion:I

    if-gtz v0, :cond_4

    .line 87
    const/4 v0, 0x1

    iput v0, v1, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->configVersion:I

    .line 89
    iget-object v0, v1, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodes:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    iget-object v0, v1, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;

    .line 95
    :cond_0
    iget-object v0, v1, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    iget-object v4, v1, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    new-instance v4, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$ReadLocalEpisodeItem;

    invoke-direct {v4}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$ReadLocalEpisodeItem;-><init>()V

    .line 98
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$ReadLocalEpisodeItem;->lastPlayTime:J

    .line 99
    iget-object v5, v1, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 78
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_6

    .line 76
    :try_start_5
    invoke-virtual {v0}, Lczw;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v1, v2

    .line 79
    goto :goto_0

    .line 78
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_0

    .line 72
    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_6

    .line 76
    :try_start_6
    invoke-virtual {v1}, Lczw;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v1, v2

    .line 79
    goto :goto_0

    .line 78
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_0

    .line 74
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    .line 76
    :try_start_7
    invoke-virtual {v2}, Lczw;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 78
    :cond_2
    :goto_5
    :try_start_8
    throw v0

    .line 103
    :cond_3
    invoke-static {p0, v1}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->writeConfig(Ljava/lang/String;Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;)V

    .line 107
    :cond_4
    if-nez v1, :cond_5

    .line 108
    new-instance v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    invoke-direct {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 110
    :goto_6
    monitor-exit v3

    return-object v0

    :catch_5
    move-exception v1

    goto :goto_5

    .line 74
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 72
    :catch_6
    move-exception v0

    goto :goto_3

    .line 70
    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_6

    :cond_6
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private static declared-synchronized writeConfig(Ljava/lang/String;Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 114
    const-class v1, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, ".config"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 117
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :cond_0
    :goto_0
    :try_start_2
    new-instance v2, Lgeq;

    invoke-direct {v2, v0, p1}, Lgeq;-><init>(Ljava/io/File;Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;)V

    invoke-static {v2}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    monitor-exit v1

    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addLocalVideoEpisodeInfoToVideoList(Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 165
    iget-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoList:Ljava/util/List;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    .line 168
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    iget-object v2, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConfig()Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    return-object v0
.end method

.method public getConfigFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->folderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getEpisodeLastPlayedTime(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iget-object v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$ReadLocalEpisodeItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    if-nez v0, :cond_0

    .line 259
    const-wide/16 v0, 0x0

    .line 261
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-wide v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$ReadLocalEpisodeItem;->lastPlayTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->folderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->id:J

    return-wide v0
.end method

.method public getLastModifyTime()J
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iget-wide v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->lastModifyTime:J

    return-wide v0
.end method

.method public getLastPlayTime()J
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iget-wide v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->lastPlayTime:J

    return-wide v0
.end method

.method public getMetaFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->folderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".videoinfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    return-object v0
.end method

.method public getVideoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    .line 209
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWatchedVideoEpisodeList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;

    .line 157
    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->isEpisodeReaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_1
    return-object v1
.end method

.method public declared-synchronized isEpisodeReaded(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iget-object v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iget-object v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNew()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;

    .line 281
    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->isEpisodeReaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 285
    goto :goto_0

    :cond_2
    move v0, v1

    .line 287
    goto :goto_0
.end method

.method public removeLocalVideoEpisodeInfoFromVideoList(Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 174
    iget-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoList:Ljava/util/List;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    .line 177
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoListForUi:Ljava/util/List;

    iget-object v2, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->videoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setEpisodeDeleted(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iget-object v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 274
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iget-object v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->folderPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->writeConfig(Ljava/lang/String;Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEpisodeReaded(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iget-object v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$ReadLocalEpisodeItem;

    .line 247
    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$ReadLocalEpisodeItem;

    invoke-direct {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$ReadLocalEpisodeItem;-><init>()V

    .line 250
    :cond_0
    iput-wide p2, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$ReadLocalEpisodeItem;->lastPlayTime:J

    .line 251
    iget-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iget-object v1, v1, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iput-wide p2, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->lastPlayTime:J

    .line 253
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->folderPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->writeConfig(Ljava/lang/String;Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLastModifyTime(J)V
    .locals 3
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    iput-wide p1, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->lastModifyTime:J

    .line 222
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->folderPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->writeConfig(Ljava/lang/String;Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;)V

    .line 223
    return-void
.end method

.method public setMetaModel(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 203
    return-void
.end method
