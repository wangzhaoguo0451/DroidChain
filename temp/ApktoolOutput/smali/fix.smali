.class public final Lfix;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "FeatureTopicDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lflv;",
        "Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lflv;

    invoke-direct {v0}, Lflv;-><init>()V

    new-instance v1, Lfiy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfiy;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 16
    return-void
.end method
