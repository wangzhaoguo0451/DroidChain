.class public final Lfwk;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetFeedbackCommentsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfxr;",
        "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lfxr;

    invoke-direct {v0}, Lfxr;-><init>()V

    new-instance v1, Lfwl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfwl;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 19
    return-void
.end method
