.class public final Lgkg;
.super Lfxd;
.source "VideoPlayModelPackProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxd",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoPlayModelPack;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lfxd;-><init>()V

    .line 28
    iput-wide p1, p0, Lgkg;->a:J

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoPlayModelPack;
    .locals 8
    .parameter

    .prologue
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :try_start_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    const-class v2, Lcom/wandoujia/entities/video/NetVideoInfo;

    invoke-virtual {v0, p1, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/NetVideoInfo;

    .line 39
    if-eqz v0, :cond_3

    .line 40
    new-instance v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-direct {v2, v0}, Lcom/wandoujia/p4/video2/model/VideoMetaModel;-><init>(Lcom/wandoujia/entities/video/NetVideoInfo;)V

    .line 41
    iget-object v3, v0, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 42
    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    .line 43
    iget-wide v4, p0, Lgkg;->a:J

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 44
    new-instance v4, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-direct {v4, v0}, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)V

    .line 45
    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/PlayInfo;

    .line 47
    if-eqz v0, :cond_1

    .line 48
    new-instance v5, Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    invoke-direct {v5, v0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;-><init>(Lcom/wandoujia/entities/video/PlayInfo;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Lcom/wandoujia/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_2
    :try_start_1
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoPlayModelPack;

    invoke-direct {v0, v2, v4, v1}, Lcom/wandoujia/p4/video2/model/VideoPlayModelPack;-><init>(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Ljava/util/List;)V
    :try_end_1
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lgkg;->a(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoPlayModelPack;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic process(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lgkg;->a(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoPlayModelPack;

    move-result-object v0

    return-object v0
.end method
