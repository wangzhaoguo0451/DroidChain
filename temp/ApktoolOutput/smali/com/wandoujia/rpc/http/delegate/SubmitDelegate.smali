.class public Lcom/wandoujia/rpc/http/delegate/SubmitDelegate;
.super Lcom/wandoujia/rpc/http/delegate/HttpDelegate;
.source "SubmitDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;",
        ">",
        "Lcom/wandoujia/rpc/http/delegate/HttpDelegate",
        "<TU;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/wandoujia/rpc/http/processor/EmptyResponseProcessor;

    invoke-direct {v0}, Lcom/wandoujia/rpc/http/processor/EmptyResponseProcessor;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 17
    return-void
.end method
