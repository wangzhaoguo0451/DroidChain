.class public final Lgkc;
.super Lfxc;
.source "VideoEpisodeModelListProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxc",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lgkd;

    invoke-direct {v0}, Lgkd;-><init>()V

    invoke-direct {p0, v0}, Lfxc;-><init>(Lczv;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final bridge synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgkc;->process(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final process(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    :try_start_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    const-class v2, Lcom/wandoujia/entities/video/NetVideoInfo;

    invoke-virtual {v0, p1, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/NetVideoInfo;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 34
    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

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

    .line 35
    if-eqz v0, :cond_0

    .line 36
    new-instance v3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-direct {v3, v0}, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Lcom/wandoujia/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    return-object v1
.end method
