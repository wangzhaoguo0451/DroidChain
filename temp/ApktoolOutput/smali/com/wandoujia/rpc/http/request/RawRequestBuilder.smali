.class public Lcom/wandoujia/rpc/http/request/RawRequestBuilder;
.super Ljava/lang/Object;
.source "RawRequestBuilder.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;


# instance fields
.field private request:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/rpc/http/request/RawRequestBuilder;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public setHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/wandoujia/rpc/http/request/RawRequestBuilder;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 16
    return-void
.end method
