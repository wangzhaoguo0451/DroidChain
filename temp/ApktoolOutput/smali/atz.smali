.class final Latz;
.super Lask;
.source "MultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Latx;


# direct methods
.method private constructor <init>(Latx;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Latz;->a:Latx;

    invoke-direct {p0}, Lask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Latx;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 496
    invoke-direct {p0, p1}, Latz;-><init>(Latx;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 509
    iget-object v1, p0, Latz;->a:Latx;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Latx;->f:Latz;

    if-eq v0, p0, :cond_0

    monitor-exit v1

    .line 510
    :goto_0
    return-void

    .line 509
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v1, Latx;->f:Latz;

    const/4 v0, 0x0

    iput-object v0, v1, Latx;->e:Lasd;

    iget-object v0, v1, Latx;->c:Ljava/io/Closeable;

    invoke-static {v0}, Latx;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, v1, Latx;->c:Ljava/io/Closeable;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Latx;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final a(F)V
    .locals 3
    .parameter

    .prologue
    .line 514
    iget-object v1, p0, Latz;->a:Latx;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Latx;->f:Latz;

    if-eq v0, p0, :cond_1

    monitor-exit v1

    .line 515
    :cond_0
    return-void

    .line 514
    :cond_1
    iput p1, v1, Latx;->d:F

    iget-object v0, v1, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lask;

    invoke-virtual {v0, p1}, Lask;->b(F)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 496
    check-cast p1, Ljava/io/Closeable;

    iget-object v0, p0, Latz;->a:Latx;

    invoke-virtual {v0, p0, p1, p2}, Latx;->a(Latz;Ljava/io/Closeable;Z)V

    return-void
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .locals 4
    .parameter

    .prologue
    .line 504
    iget-object v1, p0, Latz;->a:Latx;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Latx;->f:Latz;

    if-eq v0, p0, :cond_1

    monitor-exit v1

    .line 505
    :cond_0
    return-void

    .line 504
    :cond_1
    iget-object v0, v1, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v0, v1, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v0, v1, Latx;->g:Latw;

    iget-object v3, v1, Latx;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Latw;->a(Ljava/lang/Object;Latx;)V

    iget-object v0, v1, Latx;->c:Ljava/io/Closeable;

    invoke-static {v0}, Latx;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, v1, Latx;->c:Ljava/io/Closeable;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lask;

    invoke-virtual {v0, p1}, Lask;->b(Ljava/lang/Throwable;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
