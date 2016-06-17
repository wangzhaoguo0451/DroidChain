.class public abstract Lfir;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "AbsCommunityDeleteDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;",
        "Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    new-instance v0, Lfis;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfis;-><init>(B)V

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 19
    return-void
.end method
