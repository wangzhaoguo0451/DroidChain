.class public final Lgji;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetVideoDetailRecommendDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lgkh;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoMetaModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lgkh;

    invoke-direct {v0}, Lgkh;-><init>()V

    new-instance v1, Lgke;

    invoke-direct {v1}, Lgke;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 19
    return-void
.end method
