.class public final Lfjy;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetCommunityUserTopicListDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfmm;",
        "Lcom/wandoujia/p4/community/http/model/CommunityTopicInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lfmm;

    invoke-direct {v0}, Lfmm;-><init>()V

    new-instance v1, Lfjz;

    invoke-direct {v1}, Lfjz;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 16
    return-void
.end method
