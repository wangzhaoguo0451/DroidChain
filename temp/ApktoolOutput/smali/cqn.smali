.class public final Lcqn;
.super Lcqk;
.source "GetUpgradableAppsRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcqk;-><init>()V

    return-void
.end method


# virtual methods
.method protected final genEntity(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)Lorg/apache/http/HttpEntity;
    .locals 3
    .parameter

    .prologue
    .line 63
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    iget-object v1, p0, Lcqn;->a:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "http://api.wandoujia.com/v2/update"

    return-object v0
.end method

.method protected final setHeaders(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcqn;->b:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;

    invoke-virtual {p1, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->putAll(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 58
    invoke-super {p0, p1}, Lcqk;->setHeaders(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 59
    return-void
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1}, Lcqk;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 36
    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=UTF-8"

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcqn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "token"

    invoke-virtual {p1, v2, v1, v3}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    const-string v1, "timestamp"

    invoke-virtual {p1, v1, v0, v3}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    new-instance v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;

    invoke-direct {v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;-><init>()V

    iput-object v0, p0, Lcqn;->b:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;

    .line 46
    iget-object v0, p0, Lcqn;->b:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;

    invoke-virtual {v0, p1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->putAll(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 47
    return-void
.end method
