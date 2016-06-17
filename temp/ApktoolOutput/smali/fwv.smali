.class public final Lfwv;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "SubmitAppCommentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfxn;",
        "Lcom/wandoujia/entities/app/comment/PostResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lfxn;

    invoke-direct {v0}, Lfxn;-><init>()V

    new-instance v1, Lfww;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfww;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 18
    return-void
.end method
