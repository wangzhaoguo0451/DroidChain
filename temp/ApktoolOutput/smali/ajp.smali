.class public final Lajp;
.super Lajn;
.source "DefaultSerialExecutorService.java"

# interfaces
.implements Lajt;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    const-string v0, "SerialExecutor"

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lajn;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lajn;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
