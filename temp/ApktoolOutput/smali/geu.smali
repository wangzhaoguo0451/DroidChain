.class public Lgeu;
.super Ljava/lang/Object;
.source "VideoDownloadUtil.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lgeu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgeu;->a:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lgeu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(ZLcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    if-nez p4, :cond_0

    .line 57
    new-instance v4, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-direct {v4}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;-><init>()V

    .line 58
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    iput-wide v6, v4, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    .line 59
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->createdTime:J

    .line 61
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v5

    invoke-virtual {v5, v4}, Lgkr;->a(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    .line 63
    :cond_0
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    sget-object v5, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PLAY_EXP:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    if-ne v4, v5, :cond_1

    .line 64
    new-instance v4, Lgpc;

    invoke-direct {v4}, Lgpc;-><init>()V

    const-string v5, "PlayExpWebVideoDownloadUtil"

    const-string v6, "downloadPlayExpVideo start"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lgpa;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v5, v0, v4, v1, v2}, Lgpa;-><init>(Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Lgpc;Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)V

    invoke-static {v5}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 131
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v5, Lcom/wandoujia/p4/video2/local/LocalFileModel;

    invoke-direct {v5}, Lcom/wandoujia/p4/video2/local/LocalFileModel;-><init>()V

    .line 100
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    sget-object v6, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PRIVATE:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    if-ne v4, v6, :cond_2

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->needChangeSuffix:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->privateSuffix:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 103
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->privateSuffix:Ljava/lang/String;

    invoke-static {v6, v7, v4, v8}, Lcom/wandoujia/p4/video2/local/LocalFileUtil;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/wandoujia/p4/video2/local/LocalFileUtil$VideoFileName;

    move-result-object v4

    .line 111
    :goto_1
    iget-object v6, v4, Lcom/wandoujia/p4/video2/local/LocalFileUtil$VideoFileName;->fullNameWithPath:Ljava/lang/String;

    iput-object v6, v5, Lcom/wandoujia/p4/video2/local/LocalFileModel;->filePath:Ljava/lang/String;

    .line 112
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/wandoujia/p4/video2/local/LocalFileModel;->isPrivateFileNameSpace:Z

    .line 113
    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    iput-wide v6, v5, Lcom/wandoujia/p4/video2/local/LocalFileModel;->size:J

    .line 114
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    iput-object v6, v5, Lcom/wandoujia/p4/video2/local/LocalFileModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    .line 115
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v5, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->url:Ljava/lang/String;

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v5 .. v11}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;-><init>(JLcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Ljava/util/List;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v6

    invoke-virtual {v6, v5}, Lgkr;->a(Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V

    .line 121
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->smallCoverUrl:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-static/range {p1 .. p2}, Ld;->a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    iget v12, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeNum:I

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->downloadIdentity:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->accelUrls:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/wandoujia/p4/video2/local/LocalFileUtil$VideoFileName;->fileName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v4, Lcom/wandoujia/p4/video2/local/LocalFileUtil$VideoFileName;->folderPath:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Lhby;

    invoke-direct/range {v20 .. v20}, Lhby;-><init>()V

    sget-object v4, Lgew;->a:[I

    invoke-virtual {v6}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v21

    aget v4, v4, v21

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lhby;->h:Ljava/lang/String;

    :goto_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v21, "local_video_type"

    if-nez v5, :cond_3

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, v21

    invoke-interface {v9, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "isPush"

    const-string v5, "false"

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "videoEpisodeId"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "videoTitle"

    invoke-interface {v9, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "episodeNumber"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "provider_name"

    move-object/from16 v0, v17

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lhby;->e:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    iput-object v0, v1, Lhby;->d:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v8, v0, Lhby;->i:Ljava/lang/String;

    sget-object v4, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    move-object/from16 v0, v20

    iput-object v4, v0, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v4, Lcom/wandoujia/download2/DownloadRequestParam$Type;->PLAY_EXP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    move-object/from16 v0, v20

    iput-object v4, v0, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    move-object/from16 v0, v20

    iput-object v13, v0, Lhby;->g:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lhby;->m:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/wandoujia/p4/video/model/VideoType;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lhby;->n:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v7, v0, Lhby;->h:Ljava/lang/String;

    invoke-static {v9}, Ld;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lhby;->o:Ljava/lang/String;

    sget-object v4, Lham;->f:Lham;

    const-string v5, "download"

    invoke-virtual {v4, v5}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual/range {v20 .. v20}, Lhby;->a()Lhbx;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    goto/16 :goto_0

    .line 107
    :cond_2
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    const-string v8, ".mp4"

    invoke-static {v6, v7, v4, v8}, Lcom/wandoujia/p4/video2/local/LocalFileUtil;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/wandoujia/p4/video2/local/LocalFileUtil$VideoFileName;

    move-result-object v4

    goto/16 :goto_1

    .line 121
    :pswitch_0
    move-object/from16 v0, v20

    iput-object v7, v0, Lhby;->h:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/wandoujia/p4/video2/local/LocalVideoType;->name()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
