.class public final Lgkb;
.super Lfxd;
.source "VideoDetailModelProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxd",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoDetailModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lfxd;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;
    .locals 2
    .parameter

    .prologue
    .line 19
    :try_start_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    const-class v1, Lcom/wandoujia/entities/video/NetVideoInfo;

    invoke-virtual {v0, p0, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/NetVideoInfo;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    new-instance v1, Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-direct {v1, v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;-><init>(Lcom/wandoujia/entities/video/NetVideoInfo;)V

    move-object v0, v1

    .line 26
    :goto_0
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Lcom/wandoujia/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lgkb;->a(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic process(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p1}, Lgkb;->a(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    move-result-object v0

    return-object v0
.end method
