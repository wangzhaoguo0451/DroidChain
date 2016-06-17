.class public Lcom/wandoujia/rpc/http/delegate/HttpDelegate;
.super Ljava/lang/Object;
.source "HttpDelegate.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/delegate/ApiDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/delegate/ApiDelegate",
        "<TT;",
        "Ljava/util/concurrent/ExecutionException;",
        ">;"
    }
.end annotation


# instance fields
.field private final processor:Lcom/wandoujia/rpc/http/processor/Processor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "TT;",
            "Ljava/util/concurrent/ExecutionException;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final requestBuilder:Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "TT;",
            "Ljava/util/concurrent/ExecutionException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;->requestBuilder:Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    .line 28
    iput-object p2, p0, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;->processor:Lcom/wandoujia/rpc/http/processor/Processor;

    .line 29
    return-void
.end method


# virtual methods
.method public getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;->requestBuilder:Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    invoke-interface {v0}, Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;->build()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;->requestBuilder:Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    return-object v0
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;->processor:Lcom/wandoujia/rpc/http/processor/Processor;

    invoke-interface {v0, p1}, Lcom/wandoujia/rpc/http/processor/Processor;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rebuildHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;->requestBuilder:Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    invoke-interface {v0}, Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;->build()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 45
    iget-object v0, p0, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method
