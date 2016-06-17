.class public final Lfiw;
.super Lfir;
.source "DeleteCommunityTopicDelegate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    new-instance v0, Lflu;

    invoke-direct {v0, p1}, Lflu;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lfir;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;)V

    .line 14
    return-void
.end method
