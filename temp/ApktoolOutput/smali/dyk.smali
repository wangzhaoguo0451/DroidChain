.class public final Ldyk;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetGiftListDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lgjn;",
        "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ldyn;

    invoke-direct {v0}, Ldyn;-><init>()V

    new-instance v1, Ldyl;

    invoke-direct {v1}, Ldyl;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 23
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter

    .prologue
    .line 29
    new-instance v0, Lgjj;

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->ASC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    invoke-direct {v0, p1, p2, v1}, Lgjj;-><init>(JLcom/wandoujia/p4/video/util/VideoEpisodeListOrder;)V

    new-instance v1, Lgjy;

    invoke-direct {v1, p1, p2}, Lgjy;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 31
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 25
    new-instance v0, Lgjn;

    invoke-direct {v0, p1, p2, p3, p4}, Lgjn;-><init>(JJ)V

    new-instance v1, Lgjl;

    invoke-direct {v1}, Lgjl;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    new-instance v0, Lfly;

    invoke-direct {v0, p1}, Lfly;-><init>(Ljava/lang/String;)V

    new-instance v1, Lfja;

    invoke-direct {v1}, Lfja;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 16
    return-void
.end method
