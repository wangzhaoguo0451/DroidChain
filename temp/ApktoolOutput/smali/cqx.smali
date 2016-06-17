.class public final Lcqx;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lorg/apache/http/client/ResponseHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/ResponseHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcqx;->a:Lorg/apache/http/client/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/wandoujia/base/http/HttpClientWrapper;->errorCodeHandler:Lcom/wandoujia/base/http/HttpClientWrapper$ErrorCodeHandler;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/wandoujia/base/http/HttpClientWrapper$ErrorCodeHandler;->onResponse(I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcqx;->a:Lorg/apache/http/client/ResponseHandler;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcqx;->a:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
