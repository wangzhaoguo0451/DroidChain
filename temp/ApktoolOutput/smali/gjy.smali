.class public final Lgjy;
.super Lfxd;
.source "GetVideoDownloadAllSingleEpisodeModelListProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxd",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lfxd;-><init>()V

    .line 24
    iput-wide p1, p0, Lgjy;->a:J

    .line 25
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    :try_start_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    const-class v2, Lcom/wandoujia/entities/video/NetVideoInfo;

    invoke-virtual {v0, p1, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/NetVideoInfo;

    .line 37
    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    .line 43
    if-eqz v0, :cond_0

    .line 44
    new-instance v3, Lgfg;

    iget-wide v4, p0, Lgjy;->a:J

    invoke-direct {v3, v4, v5, v0}, Lgfg;-><init>(JLcom/wandoujia/entities/video/VideoEpisodeInfo;)V

    .line 46
    invoke-virtual {v3}, Lgfg;->a()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Lcom/wandoujia/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lgjy;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic process(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lgjy;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
