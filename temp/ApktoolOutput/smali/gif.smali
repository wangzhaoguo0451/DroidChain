.class public final Lgif;
.super Lcom/wandoujia/rpc/http/delegate/HttpDelegate;
.source "VideoPlayHtml5Fragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/HttpDelegate",
        "<",
        "Lgih;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lgih;Lcom/wandoujia/rpc/http/processor/Processor;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgih;",
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "Ljava/lang/Boolean;",
            "Ljava/util/concurrent/ExecutionException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/rpc/http/delegate/HttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 618
    return-void
.end method
