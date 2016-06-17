.class public final Lfka;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetTopicLikeUsersDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfmi;",
        "Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lfmi;

    invoke-direct {v0}, Lfmi;-><init>()V

    new-instance v1, Lfkb;

    invoke-direct {v1}, Lfkb;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 20
    return-void
.end method
