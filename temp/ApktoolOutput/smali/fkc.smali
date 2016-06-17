.class public final Lfkc;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetUnReadMsgCountDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfmn;",
        "Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lfmn;

    invoke-direct {v0}, Lfmn;-><init>()V

    new-instance v1, Lfkd;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfkd;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 15
    return-void
.end method
