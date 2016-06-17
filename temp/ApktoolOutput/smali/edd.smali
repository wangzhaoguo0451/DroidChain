.class public final Ledd;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetAppsCategoriesDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lgjr;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ledh;

    invoke-direct {v0}, Ledh;-><init>()V

    new-instance v1, Lefu;

    invoke-direct {v1}, Lefu;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 19
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter

    .prologue
    .line 30
    new-instance v0, Lgjo;

    invoke-direct {v0, p1, p2}, Lgjo;-><init>(J)V

    new-instance v1, Lgkc;

    invoke-direct {v1}, Lgkc;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 32
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Lgjr;

    invoke-direct {v0, p1, p2, p3, p4}, Lgjr;-><init>(JJ)V

    new-instance v1, Lgjp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgjp;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 14
    new-instance v0, Lfmb;

    invoke-direct {v0, p1}, Lfmb;-><init>(Ljava/lang/String;)V

    new-instance v1, Lfjf;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfjf;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 15
    return-void
.end method
