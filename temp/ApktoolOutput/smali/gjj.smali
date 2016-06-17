.class public final Lgjj;
.super Lfxm;
.source "GetVideoDownloadAllModelListDelegate.java"


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;


# direct methods
.method public constructor <init>(JLcom/wandoujia/p4/video/util/VideoEpisodeListOrder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgjj;->a:Ljava/lang/Long;

    .line 51
    iput-object p3, p0, Lgjj;->b:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    .line 52
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://videos.wandoujia.com/api/v1/videos"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgjj;->a:Ljava/lang/Long;

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
    .line 58
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 59
    const-string v0, "opt_fields"

    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_DOWNLOAD_ALL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lgjj;->b:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "order"

    iget-object v1, p0, Lgjj;->b:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->getOrderNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method
