.class public final Lgjl;
.super Lfxd;
.source "GetVideoEpisodeModelDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxd",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lfxd;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
    .locals 3
    .parameter

    .prologue
    .line 63
    :try_start_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    new-instance v1, Lgjm;

    invoke-direct {v1}, Lgjm;-><init>()V

    invoke-virtual {v1}, Lgjm;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-direct {v1, v0}, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)V

    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Lcom/wandoujia/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 58
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lgjl;->a(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic process(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-static {p1}, Lgjl;->a(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v0

    return-object v0
.end method
