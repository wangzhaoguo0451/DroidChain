.class public Lcom/wandoujia/rpc/http/delegate/JsonListDelegate;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "JsonListDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<TU;",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


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
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 17
    return-void
.end method
