.class public final Lghs;
.super Ljava/lang/Object;
.source "VideoVarietyEpisodeModelListFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lfsr;

.field private synthetic c:Lghr;


# direct methods
.method public constructor <init>(Lghr;Ljava/lang/String;Lfsr;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lghs;->c:Lghr;

    iput-object p2, p0, Lghs;->a:Ljava/lang/String;

    iput-object p3, p0, Lghs;->b:Lfsr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 27
    new-instance v1, Ledf;

    iget-object v0, p0, Lghs;->c:Lghr;

    iget-wide v2, v0, Lghr;->a:J

    invoke-direct {v1, v2, v3}, Ledf;-><init>(J)V

    .line 29
    invoke-virtual {v1}, Ledf;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lgju;

    iget-object v2, p0, Lghs;->a:Ljava/lang/String;

    iput-object v2, v0, Lgju;->a:Ljava/lang/String;

    .line 31
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 32
    iget-object v1, p0, Lghs;->b:Lfsr;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lfss;

    invoke-direct {v4, v0}, Lfss;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2, v3, v4}, Lfsr;->a(IILfss;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    iget-object v1, p0, Lghs;->b:Lfsr;

    invoke-interface {v1, v5, v0}, Lfsr;->a(ILjava/util/concurrent/ExecutionException;)V

    goto :goto_0
.end method
