.class public Lcom/wandoujia/base/http/HttpClientWrapper;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# static fields
.field public static final HTTP_ERROR_PARAMETER:I = 0x19b

.field public static final HTTP_EXPIRED:I = 0x19c

.field public static final HTTP_MODULAR_FAILED:I = 0x19d

.field public static final HTTP_SIGNATURE_FAILED:I = 0x1a3

.field public static final HTTP_SIZE_OVERFLOW:I = 0x19e

.field public static errorCodeHandler:Lcom/wandoujia/base/http/HttpClientWrapper$ErrorCodeHandler;


# instance fields
.field private httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/wandoujia/base/http/HttpClientWrapper;->setWrappedHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 47
    return-void
.end method

.method private determineTarget(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;
    .locals 4
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 104
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    :cond_0
    return-object v0
.end method

.method public static newInstance(Lorg/apache/http/client/HttpClient;)Lcom/wandoujia/base/http/HttpClientWrapper;
    .locals 1
    .parameter

    .prologue
    .line 82
    new-instance v0, Lcom/wandoujia/base/http/HttpClientWrapper;

    invoke-direct {v0, p0}, Lcom/wandoujia/base/http/HttpClientWrapper;-><init>(Lorg/apache/http/client/HttpClient;)V

    return-object v0
.end method

.method public static setErrorCodeHandler(Lcom/wandoujia/base/http/HttpClientWrapper$ErrorCodeHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    sput-object p0, Lcom/wandoujia/base/http/HttpClientWrapper;->errorCodeHandler:Lcom/wandoujia/base/http/HttpClientWrapper$ErrorCodeHandler;

    .line 51
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/wandoujia/base/http/HttpClientWrapper;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Lcom/wandoujia/base/utils/FreeHttpUtils;->isInFreeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sget-object p1, Lcom/wandoujia/base/utils/FreeHttpUtils;->FREE_HTTP_HOST:Lorg/apache/http/HttpHost;

    .line 161
    invoke-static {p2}, Lcom/wandoujia/base/utils/FreeHttpUtils;->buildFreeRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object v1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Change target "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    :goto_0
    invoke-static {}, Lcom/wandoujia/base/utils/FreeHttpUtils;->isInFreeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/base/http/HttpClientWrapper;->errorCodeHandler:Lcom/wandoujia/base/http/HttpClientWrapper$ErrorCodeHandler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/wandoujia/base/http/HttpClientWrapper;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lcqx;

    invoke-direct {v2, p3}, Lcqx;-><init>(Lorg/apache/http/client/ResponseHandler;)V

    invoke-interface {v0, p1, v1, v2, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/base/http/HttpClientWrapper;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, v1, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/wandoujia/base/http/HttpClientWrapper;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/wandoujia/base/http/HttpClientWrapper;->determineTarget(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/wandoujia/base/http/HttpClientWrapper;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/wandoujia/base/http/HttpClientWrapper;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-static {}, Lcom/wandoujia/base/utils/FreeHttpUtils;->isInFreeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object p1, Lcom/wandoujia/base/utils/FreeHttpUtils;->FREE_HTTP_HOST:Lorg/apache/http/HttpHost;

    .line 124
    invoke-static {p2}, Lcom/wandoujia/base/utils/FreeHttpUtils;->buildFreeRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object v1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Change target "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/base/http/HttpClientWrapper;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, v1, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/wandoujia/base/utils/FreeHttpUtils;->isInFreeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/wandoujia/base/http/HttpClientWrapper;->errorCodeHandler:Lcom/wandoujia/base/http/HttpClientWrapper$ErrorCodeHandler;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    sget-object v1, Lcom/wandoujia/base/http/HttpClientWrapper;->errorCodeHandler:Lcom/wandoujia/base/http/HttpClientWrapper$ErrorCodeHandler;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/wandoujia/base/http/HttpClientWrapper$ErrorCodeHandler;->onResponse(I)V

    .line 132
    :cond_0
    return-object v0

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/base/http/HttpClientWrapper;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/wandoujia/base/http/HttpClientWrapper;->determineTarget(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/wandoujia/base/http/HttpClientWrapper;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/wandoujia/base/http/HttpClientWrapper;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/wandoujia/base/http/HttpClientWrapper;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public setWrappedHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/wandoujia/base/http/HttpClientWrapper;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 56
    iget-object v0, p0, Lcom/wandoujia/base/http/HttpClientWrapper;->httpClient:Lorg/apache/http/client/HttpClient;

    instance-of v0, v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/wandoujia/base/http/HttpClientWrapper;->httpClient:Lorg/apache/http/client/HttpClient;

    check-cast v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    new-instance v1, Lcqw;

    invoke-direct {v1}, Lcqw;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 79
    :cond_0
    return-void
.end method
