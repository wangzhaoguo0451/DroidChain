.class public final Lgjn;
.super Lfxm;
.source "GetVideoEpisodeModelDelegate.java"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 35
    iput-wide p1, p0, Lgjn;->a:J

    .line 36
    iput-wide p3, p0, Lgjn;->b:J

    .line 37
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "http://oscar.wandoujia.com/api/v1/videoEpisodes/"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 46
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 47
    iget-wide v0, p0, Lgjn;->a:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 48
    const-string v0, "videoId"

    iget-wide v2, p0, Lgjn;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-wide v0, p0, Lgjn;->b:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 51
    const-string v0, "episodeId"

    iget-wide v2, p0, Lgjn;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    const-string v0, "emax"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
