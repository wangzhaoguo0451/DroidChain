.class public final Lfkm;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "SubmitJoinGroupDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfmu;",
        "Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lfmu;

    invoke-direct {v0}, Lfmu;-><init>()V

    new-instance v1, Lfkn;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfkn;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 17
    return-void
.end method
