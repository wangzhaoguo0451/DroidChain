.class public final Lefo;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "OnlineConfigDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfmh;",
        "Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lefw;

    invoke-direct {v0}, Lefw;-><init>()V

    new-instance v1, Lefp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lefp;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    new-instance v0, Lfmh;

    invoke-direct {v0, p1}, Lfmh;-><init>(Ljava/lang/String;)V

    new-instance v1, Lfjr;

    invoke-direct {v1}, Lfjr;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 16
    return-void
.end method
