.class public final Lgjt;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetVideoVarietyDetailDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lgkj;",
        "Lcom/wandoujia/p4/video2/model/VideoDetailModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lgkj;

    invoke-direct {v0}, Lgkj;-><init>()V

    new-instance v1, Lgkb;

    invoke-direct {v1}, Lgkb;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 16
    return-void
.end method
