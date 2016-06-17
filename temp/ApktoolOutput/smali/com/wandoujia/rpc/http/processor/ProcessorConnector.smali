.class public Lcom/wandoujia/rpc/http/processor/ProcessorConnector;
.super Ljava/lang/Object;
.source "ProcessorConnector.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/processor/Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/processor/Processor",
        "<TU;TT;",
        "Ljava/util/concurrent/ExecutionException;",
        ">;"
    }
.end annotation


# instance fields
.field private final downstreamProcessor:Lcom/wandoujia/rpc/http/processor/Processor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<TV;TT;+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final upstreamProcessor:Lcom/wandoujia/rpc/http/processor/Processor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<TU;TV;+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/rpc/http/processor/Processor;Lcom/wandoujia/rpc/http/processor/Processor;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<TU;TV;+",
            "Ljava/lang/Exception;",
            ">;",
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<TV;TT;+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/wandoujia/rpc/http/processor/ProcessorConnector;->upstreamProcessor:Lcom/wandoujia/rpc/http/processor/Processor;

    .line 28
    iput-object p2, p0, Lcom/wandoujia/rpc/http/processor/ProcessorConnector;->downstreamProcessor:Lcom/wandoujia/rpc/http/processor/Processor;

    .line 29
    return-void
.end method

.method public static connect(Lcom/wandoujia/rpc/http/processor/Processor;Lcom/wandoujia/rpc/http/processor/Processor;)Lcom/wandoujia/rpc/http/processor/ProcessorConnector;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<TU;TV;+",
            "Ljava/lang/Exception;",
            ">;",
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<TV;TT;+",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcom/wandoujia/rpc/http/processor/ProcessorConnector",
            "<TU;TV;TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/wandoujia/rpc/http/processor/ProcessorConnector;

    invoke-direct {v0, p0, p1}, Lcom/wandoujia/rpc/http/processor/ProcessorConnector;-><init>(Lcom/wandoujia/rpc/http/processor/Processor;Lcom/wandoujia/rpc/http/processor/Processor;)V

    return-object v0
.end method


# virtual methods
.method public connect(Lcom/wandoujia/rpc/http/processor/Processor;)Lcom/wandoujia/rpc/http/processor/ProcessorConnector;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/wandoujia/rpc/http/processor/Processor",
            "<TT;TR;+",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcom/wandoujia/rpc/http/processor/ProcessorConnector",
            "<TU;TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/wandoujia/rpc/http/processor/ProcessorConnector;

    invoke-direct {v0, p0, p1}, Lcom/wandoujia/rpc/http/processor/ProcessorConnector;-><init>(Lcom/wandoujia/rpc/http/processor/Processor;Lcom/wandoujia/rpc/http/processor/Processor;)V

    return-object v0
.end method

.method public process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TT;"
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/processor/ProcessorConnector;->downstreamProcessor:Lcom/wandoujia/rpc/http/processor/Processor;

    iget-object v1, p0, Lcom/wandoujia/rpc/http/processor/ProcessorConnector;->upstreamProcessor:Lcom/wandoujia/rpc/http/processor/Processor;

    invoke-interface {v1, p1}, Lcom/wandoujia/rpc/http/processor/Processor;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wandoujia/rpc/http/processor/Processor;->process(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
