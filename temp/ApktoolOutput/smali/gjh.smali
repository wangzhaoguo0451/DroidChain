.class public final Lgjh;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetVideoDetailDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lgki;",
        "Lcom/wandoujia/p4/video2/model/VideoDetailModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lgki;

    invoke-direct {v0}, Lgki;-><init>()V

    new-instance v1, Lgkb;

    invoke-direct {v1}, Lgkb;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 18
    return-void
.end method
