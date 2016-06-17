.class public final Lfjg;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetCommunityJoinedGroupListDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfmc;",
        "Lcom/wandoujia/p4/community/http/model/CommunityGroupListModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lfmc;

    invoke-direct {v0}, Lfmc;-><init>()V

    new-instance v1, Lfjh;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfjh;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 16
    return-void
.end method
