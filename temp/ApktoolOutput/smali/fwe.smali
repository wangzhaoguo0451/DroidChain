.class public final Lfwe;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetCommentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfxk;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/entities/app/comment/Comment;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lfxk;

    invoke-direct {v0}, Lfxk;-><init>()V

    new-instance v1, Lfwf;

    invoke-direct {v1}, Lfwf;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 20
    return-void
.end method
