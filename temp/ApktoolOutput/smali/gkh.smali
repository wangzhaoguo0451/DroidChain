.class public final Lgkh;
.super Lfxw;
.source "GetVideoDetailRecommendRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lfxw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "http://oscar.wandoujia.com/api/v1/relations"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lfxw;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 28
    iget-object v0, p0, Lgkh;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "videoId"

    iget-object v1, p0, Lgkh;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    const-string v0, "opt_fields"

    sget-object v1, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_SEARCH_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    invoke-virtual {v1}, Lcom/wandoujia/p4/http/request/OptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
