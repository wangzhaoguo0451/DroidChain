.class public final Lfke;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "PostCommunityReplyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfmo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lfmo;

    invoke-direct {v0}, Lfmo;-><init>()V

    new-instance v1, Lcom/wandoujia/rpc/http/processor/RawProcessor;

    invoke-direct {v1}, Lcom/wandoujia/rpc/http/processor/RawProcessor;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 15
    return-void
.end method
