.class public final Laus;
.super Ljava/lang/Object;
.source "ThrottlingProducer.java"

# interfaces
.implements Laud;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Laud",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lask",
            "<TT;>;",
            "Laue;",
            ">;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/Executor;

.field private final d:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Laud;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Laud",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Laus;->c:Ljava/util/concurrent/Executor;

    .line 45
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laud;

    iput-object v0, p0, Laus;->d:Laud;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Laus;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Laus;->a:I

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lask;Laue;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<TT;>;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p2}, Laue;->c()Laug;

    move-result-object v0

    .line 53
    invoke-interface {p2}, Laue;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThrottlingProducer"

    invoke-virtual {v0, v1, v2}, Laug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget v0, p0, Laus;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Laus;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v0, 0x1

    .line 64
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2}, Laus;->b(Lask;Laue;)V

    .line 69
    :cond_0
    return-void

    .line 61
    :cond_1
    :try_start_1
    iget v0, p0, Laus;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laus;->a:I

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final b(Lask;Laue;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<TT;>;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-interface {p2}, Laue;->c()Laug;

    move-result-object v0

    .line 73
    invoke-interface {p2}, Laue;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThrottlingProducer"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    iget-object v0, p0, Laus;->d:Laud;

    new-instance v1, Laut;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Laut;-><init>(Laus;Lask;B)V

    invoke-interface {v0, v1, p2}, Laud;->a(Lask;Laue;)V

    .line 75
    return-void
.end method
