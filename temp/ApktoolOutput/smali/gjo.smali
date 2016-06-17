.class public final Lgjo;
.super Lfxm;
.source "GetVideoEpisodeModelListDelegate.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field private final c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 46
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgjo;->c:Ljava/lang/Long;

    .line 53
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://videos.wandoujia.com/api/v1/videos"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgjo;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 73
    iget-object v0, p0, Lgjo;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "estart"

    iget-object v1, p0, Lgjo;->a:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lgjo;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "emax"

    iget-object v1, p0, Lgjo;->b:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    const-string v0, "opt_fields"

    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_EPISODE:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
