.class public final Lfmg;
.super Lfiq;
.source "GetCommunityReplyListRequestBuilder.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lfiq;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfmg;->f:Z

    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "http://group.wandoujia.com/api/v1/replies/list"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lfiq;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 56
    iget-object v0, p0, Lfmg;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set topicId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lfmg;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "order"

    iget-object v1, p0, Lfmg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lfmg;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "after_id"

    iget-object v1, p0, Lfmg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    const-string v0, "topic_id"

    iget-object v1, p0, Lfmg;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "include_after_id"

    iget-boolean v1, p0, Lfmg;->f:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
