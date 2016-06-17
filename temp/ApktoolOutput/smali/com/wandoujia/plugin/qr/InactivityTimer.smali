.class public final Lcom/wandoujia/plugin/qr/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Landroid/app/Activity;

.field private c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lgzf;

    invoke-direct {v0, v1}, Lgzf;-><init>(B)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/InactivityTimer;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/InactivityTimer;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 40
    new-instance v0, Lcom/wandoujia/plugin/qr/InactivityTimer$PowerStatusReceiver;

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/plugin/qr/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/wandoujia/plugin/qr/InactivityTimer;B)V

    .line 43
    iput-object p1, p0, Lcom/wandoujia/plugin/qr/InactivityTimer;->b:Landroid/app/Activity;

    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/plugin/qr/InactivityTimer;->a()V

    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/wandoujia/plugin/qr/InactivityTimer;->b()V

    .line 49
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/InactivityTimer;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/InactivityTimer;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lgze;

    iget-object v2, p0, Lcom/wandoujia/plugin/qr/InactivityTimer;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lgze;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x12c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/InactivityTimer;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/InactivityTimer;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 73
    if-eqz v0, :cond_0

    .line 74
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/InactivityTimer;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 77
    :cond_0
    return-void
.end method
