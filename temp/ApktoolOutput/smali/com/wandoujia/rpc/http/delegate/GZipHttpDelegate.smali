.class public Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.super Lcom/wandoujia/rpc/http/delegate/HttpDelegate;
.source "GZipHttpDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/wandoujia/rpc/http/delegate/HttpDelegate",
        "<TU;TT;>;"
    }
.end annotation


# instance fields
.field private final contentProcessor:Lcom/wandoujia/rpc/http/processor/Processor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<",
            "Ljava/lang/String;",
            "TT;+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<",
            "Ljava/lang/String;",
            "TT;+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;

    invoke-direct {v0}, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;-><init>()V

    invoke-static {v0, p2}, Lcom/wandoujia/rpc/http/processor/ProcessorConnector;->connect(Lcom/wandoujia/rpc/http/processor/Processor;Lcom/wandoujia/rpc/http/processor/Processor;)Lcom/wandoujia/rpc/http/processor/ProcessorConnector;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 24
    iput-object p2, p0, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;->contentProcessor:Lcom/wandoujia/rpc/http/processor/Processor;

    .line 25
    return-void
.end method


# virtual methods
.method public getContentProcessor()Lcom/wandoujia/rpc/http/processor/Processor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<",
            "Ljava/lang/String;",
            "TT;+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;->contentProcessor:Lcom/wandoujia/rpc/http/processor/Processor;

    return-object v0
.end method
