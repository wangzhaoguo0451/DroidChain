.class public final Lfki;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "SubmitForbidUserDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfms;",
        "Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lfms;

    invoke-direct {v0}, Lfms;-><init>()V

    new-instance v1, Lfkj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfkj;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 15
    return-void
.end method
