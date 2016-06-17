.class public final Lflv;
.super Lflr;
.source "FeatureTopicRequestBuilder.java"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lflr;-><init>()V

    .line 21
    sget-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->POST:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    invoke-virtual {p0, v0}, Lflv;->setMethod(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 22
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lflv;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must set topic id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    const-string v0, "http://group.wandoujia.com/api/v1/topics/%s/feature"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lflv;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lflr;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 33
    const-string v1, "value"

    iget-boolean v0, p0, Lflv;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
