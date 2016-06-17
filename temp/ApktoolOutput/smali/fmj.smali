.class public final Lfmj;
.super Lfiq;
.source "GetCommunityTopicListRequestBuilder.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lfiq;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lfmj;->d:I

    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "http://group.wandoujia.com/api/v1/topics/list"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lfiq;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 35
    iget-object v0, p0, Lfmj;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "group_id"

    iget-object v1, p0, Lfmj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "type"

    iget v1, p0, Lfmj;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method
