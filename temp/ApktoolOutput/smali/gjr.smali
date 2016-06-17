.class public final Lgjr;
.super Lfxm;
.source "GetVideoPlayModelListDelegate.java"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 82
    iput-wide p1, p0, Lgjr;->a:J

    .line 83
    iput-wide p3, p0, Lgjr;->b:J

    .line 84
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "http://oscar.wandoujia.com/api/v1/videoEpisodes/"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 93
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 94
    const-string v0, "opt_fields"

    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_EPISODE_API_PLAY:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "order"

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->ASC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->getOrderNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "emax"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-wide v0, p0, Lgjr;->a:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 101
    const-string v0, "videoId"

    iget-wide v2, p0, Lgjr;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-wide v0, p0, Lgjr;->b:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 111
    const-string v0, "episodeId"

    iget-wide v2, p0, Lgjr;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    return-void
.end method
