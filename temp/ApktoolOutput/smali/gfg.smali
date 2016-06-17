.class public final Lgfg;
.super Ljava/lang/Object;
.source "VideoDownloadModelProcessHelper.java"


# instance fields
.field private a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

.field private b:J


# direct methods
.method public constructor <init>(JLcom/wandoujia/entities/video/VideoEpisodeInfo;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p3, p0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    .line 44
    iput-wide p1, p0, Lgfg;->b:J

    .line 45
    return-void
.end method

.method private static a(Lcom/wandoujia/p4/video/model/VideoSharpness;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video/model/VideoSharpness;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Lgfi;

    invoke-direct {v0, p0}, Lgfi;-><init>(Lcom/wandoujia/p4/video/model/VideoSharpness;)V

    .line 39
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/Set;Lcom/wandoujia/entities/video/VideoEpisodeInfo;Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;Lcom/wandoujia/p4/video2/local/LocalVideoType;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo;",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;",
            "Lcom/wandoujia/p4/video2/local/LocalVideoType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p3}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p3}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    invoke-virtual {p3}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    invoke-virtual {p3}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getPromotType()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;

    move-object v1, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;Ljava/lang/String;ILjava/lang/String;Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;Lcom/wandoujia/p4/video2/local/LocalVideoType;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 53
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 54
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;

    .line 61
    move-object/from16 v0, p0

    iget-object v4, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    sget-object v5, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PRIVATE:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    move-object/from16 v0, v16

    invoke-static {v13, v0, v4, v2, v5}, Lgfg;->a(Ljava/util/List;Ljava/util/Set;Lcom/wandoujia/entities/video/VideoEpisodeInfo;Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;Lcom/wandoujia/p4/video2/local/LocalVideoType;)V

    goto :goto_0

    .line 67
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;

    .line 69
    if-eqz v2, :cond_1

    .line 70
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v4

    .line 74
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/wandoujia/p4/video/model/ProviderInfo;->isUseCommonDownloadUrls()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    move-object/from16 v0, p0

    iget-object v4, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    sget-object v5, Lcom/wandoujia/p4/video2/local/LocalVideoType;->COMMON:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    move-object/from16 v0, v17

    invoke-static {v14, v0, v4, v2, v5}, Lgfg;->a(Ljava/util/List;Ljava/util/Set;Lcom/wandoujia/entities/video/VideoEpisodeInfo;Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;Lcom/wandoujia/p4/video2/local/LocalVideoType;)V

    goto :goto_1

    .line 83
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 84
    const/4 v2, 0x0

    move v11, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/wandoujia/entities/video/PlayInfo;

    .line 86
    if-eqz v10, :cond_3

    .line 87
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v2

    invoke-virtual {v10}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_3

    invoke-virtual {v10}, Lcom/wandoujia/entities/video/PlayInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/ProviderInfo;->isUseCommonDownloadUrls()Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    invoke-static {v14}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 96
    new-instance v2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v10}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/wandoujia/entities/video/PlayInfo;->getPromotType()I

    move-result v5

    invoke-virtual {v10}, Lcom/wandoujia/entities/video/PlayInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PLAY_EXP:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    const/4 v8, 0x0

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    iget-wide v8, v8, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    invoke-direct/range {v2 .. v9}, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;Ljava/lang/String;ILjava/lang/String;Lcom/wandoujia/p4/video2/local/LocalVideoType;J)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_3
    invoke-virtual {v10}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_3
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_2

    .line 100
    :cond_4
    new-instance v2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgfg;->a:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-virtual {v10}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/wandoujia/entities/video/PlayInfo;->getPromotType()I

    move-result v5

    invoke-virtual {v10}, Lcom/wandoujia/entities/video/PlayInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PLAY_EXP:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    const-wide/32 v8, 0x6400000

    invoke-direct/range {v2 .. v9}, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;Ljava/lang/String;ILjava/lang/String;Lcom/wandoujia/p4/video2/local/LocalVideoType;J)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 109
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/wandoujia/p4/video/model/ProviderInfo;->isPreferPrivateDownloadSource()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 113
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 117
    :goto_5
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 115
    :cond_6
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 120
    :cond_7
    invoke-static {}, Lgfz;->a()Lgfz;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lgfg;->b:J

    invoke-virtual {v2, v4, v5}, Lgfz;->a(J)Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    move-result-object v3

    .line 122
    if-nez v3, :cond_9

    const/4 v2, 0x0

    move-object v4, v2

    .line 124
    :goto_6
    if-nez v3, :cond_a

    const/4 v2, 0x0

    move-object v3, v2

    .line 128
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    .line 129
    iget-object v6, v2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 130
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 122
    :cond_9
    iget-object v2, v3, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultDownloadSource:Ljava/lang/String;

    move-object v4, v2

    goto :goto_6

    .line 124
    :cond_a
    iget-object v2, v3, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    move-object v3, v2

    goto :goto_7

    .line 134
    :cond_b
    invoke-static {v3, v13}, Lgfg;->a(Lcom/wandoujia/p4/video/model/VideoSharpness;Ljava/util/List;)V

    .line 136
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    .line 137
    iget-object v6, v2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 138
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 141
    :cond_d
    invoke-static {v3, v14}, Lgfg;->a(Lcom/wandoujia/p4/video/model/VideoSharpness;Ljava/util/List;)V

    .line 143
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    .line 144
    iget-object v5, v2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 145
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 148
    :cond_f
    if-eqz v4, :cond_10

    .line 149
    new-instance v2, Lgfh;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3}, Lgfh;-><init>(Ljava/lang/String;B)V

    .line 150
    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    :cond_10
    return-object v12
.end method
