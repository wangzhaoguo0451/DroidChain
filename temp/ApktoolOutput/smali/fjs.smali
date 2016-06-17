.class public final Lfjs;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetCommunityTopicListDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfmj;",
        "Lcom/wandoujia/p4/community/http/model/CommunityTopicInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lfmj;

    invoke-direct {v0}, Lfmj;-><init>()V

    new-instance v1, Lfjt;

    invoke-direct {v1}, Lfjt;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    new-instance v0, Lfmj;

    invoke-direct {v0}, Lfmj;-><init>()V

    iput-object p1, v0, Lfmj;->c:Ljava/lang/String;

    new-instance v1, Lfjt;

    invoke-direct {v1}, Lfjt;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 19
    return-void
.end method
