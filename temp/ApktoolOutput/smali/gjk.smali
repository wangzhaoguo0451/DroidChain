.class public final Lgjk;
.super Lfxm;
.source "GetVideoDownloadModelListDelegate.java"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 47
    iput-wide p1, p0, Lgjk;->a:J

    .line 48
    iput-wide p3, p0, Lgjk;->b:J

    .line 49
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "http://oscar.wandoujia.com/api/v1/videoEpisodes/"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 58
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 59
    const-string v0, "opt_fields"

    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_EPISODE_API_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "order"

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->ASC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->getOrderNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "emax"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-wide v0, p0, Lgjk;->a:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 66
    const-string v0, "videoId"

    iget-wide v2, p0, Lgjk;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-wide v0, p0, Lgjk;->b:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 76
    const-string v0, "episodeId"

    iget-wide v2, p0, Lgjk;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    return-void
.end method
