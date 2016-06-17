.class public final Ledf;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetLauncherSuggestionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lgju;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ledi;

    invoke-direct {v0}, Ledi;-><init>()V

    new-instance v1, Ledg;

    invoke-direct {v1}, Ledg;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 15
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter

    .prologue
    .line 27
    new-instance v0, Lgju;

    invoke-direct {v0, p1, p2}, Lgju;-><init>(J)V

    new-instance v1, Lgkc;

    invoke-direct {v1}, Lgkc;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 29
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    new-instance v0, Lgjs;

    invoke-direct {v0, p1, p2}, Lgjs;-><init>(J)V

    new-instance v1, Lgkg;

    invoke-direct {v1, p3, p4}, Lgkg;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    new-instance v0, Lfmg;

    invoke-direct {v0}, Lfmg;-><init>()V

    iput-object p1, v0, Lfmg;->e:Ljava/lang/String;

    new-instance v1, Lfjq;

    invoke-direct {v1}, Lfjq;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 18
    return-void
.end method
