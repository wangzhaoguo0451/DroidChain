.class public abstract Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "CacheableGZipHttpDelegate.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/cache/Cacheable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<TU;TT;>;",
        "Lcom/wandoujia/rpc/http/cache/Cacheable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TIMEOUT_INTERVAL_MS:J = 0x493e0L


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
            "TT;+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutInterval()J
    .locals 2

    .prologue
    .line 27
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method
