.class public final Lgke;
.super Lfxd;
.source "VideoMetaModelListProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxd",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoMetaModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lfxd;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoMetaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    :try_start_0
    iget-object v0, p0, Lgke;->gson:Lcvo;

    new-instance v1, Lgkf;

    invoke-direct {v1}, Lgkf;-><init>()V

    invoke-virtual {v1}, Lgkf;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 24
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/NetVideoInfo;

    .line 29
    new-instance v3, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-direct {v3, v0}, Lcom/wandoujia/p4/video2/model/VideoMetaModel;-><init>(Lcom/wandoujia/entities/video/NetVideoInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Lcom/wandoujia/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v0, v1

    .line 31
    goto :goto_0
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lgke;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic process(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lgke;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
