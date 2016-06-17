.class public final Lgjz;
.super Lfxd;
.source "GetVideoDownloadModelListProcessor.java"


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
    iput-wide p1, p0, Lgjz;->a:J

    .line 25
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
            "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    new-instance v1, Lgka;

    invoke-direct {v1}, Lgka;-><init>()V

    invoke-virtual {v1}, Lgka;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    .line 38
    new-instance v1, Lgfg;

    iget-wide v2, p0, Lgjz;->a:J

    invoke-direct {v1, v2, v3, v0}, Lgfg;-><init>(JLcom/wandoujia/entities/video/VideoEpisodeInfo;)V

    .line 40
    invoke-virtual {v1}, Lgfg;->a()Ljava/util/List;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Lcom/wandoujia/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lgjz;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic process(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lgjz;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
