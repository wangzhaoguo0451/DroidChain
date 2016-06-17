.class public final Lcql;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetUpgradableAppsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lgjk;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lcqn;

    invoke-direct {v0}, Lcqn;-><init>()V

    new-instance v1, Lcqm;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcqm;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 16
    return-void
.end method

.method public constructor <init>(B)V
    .locals 2
    .parameter

    .prologue
    .line 25
    new-instance v0, Lfvg;

    invoke-direct {v0}, Lfvg;-><init>()V

    new-instance v1, Lfvb;

    invoke-direct {v1}, Lfvb;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 26
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter

    .prologue
    .line 31
    new-instance v0, Lgjg;

    invoke-direct {v0, p1, p2}, Lgjg;-><init>(J)V

    new-instance v1, Lfwf;

    new-instance v2, Lgjf;

    invoke-direct {v2}, Lgjf;-><init>()V

    invoke-direct {v1, v2}, Lfwf;-><init>(Lczv;)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 36
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Lgjk;

    invoke-direct {v0, p1, p2, p3, p4}, Lgjk;-><init>(JJ)V

    new-instance v1, Lgjz;

    invoke-direct {v1, p1, p2}, Lgjz;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 17
    new-instance v0, Lgcq;

    invoke-direct {v0, p1, p2}, Lgcq;-><init>(Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;Ljava/lang/String;)V

    new-instance v1, Lgck;

    invoke-direct {v1}, Lgck;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 15
    new-instance v0, Lflx;

    invoke-direct {v0, p1}, Lflx;-><init>(Ljava/lang/String;)V

    new-instance v1, Lfiz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfiz;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    new-instance v0, Lfmq;

    invoke-direct {v0, p1, p2, p3}, Lfmq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lfkg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfkg;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 16
    new-instance v0, Lfmr;

    invoke-direct {v0, p1, p2}, Lfmr;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Lfkh;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfkh;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 17
    return-void
.end method

.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;

    invoke-direct {v0, p1, p2}, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;-><init>(Z[Ljava/lang/String;)V

    new-instance v1, Lcom/wandoujia/rpc/http/processor/RawProcessor;

    invoke-direct {v1}, Lcom/wandoujia/rpc/http/processor/RawProcessor;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 24
    return-void
.end method
