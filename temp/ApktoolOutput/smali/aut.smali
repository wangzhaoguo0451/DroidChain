.class final Laut;
.super Lass;
.source "ThrottlingProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lass",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laus;


# direct methods
.method private constructor <init>(Laus;Lask;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Laut;->a:Laus;

    .line 80
    invoke-direct {p0, p2}, Lass;-><init>(Lask;)V

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Laus;Lask;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Laut;-><init>(Laus;Lask;)V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Laut;->a:Laus;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Laut;->a:Laus;

    iget-object v0, v0, Laus;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 107
    if-nez v0, :cond_0

    .line 108
    iget-object v2, p0, Laut;->a:Laus;

    iget v3, v2, Laus;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Laus;->a:I

    .line 110
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    iget-object v1, p0, Laut;->a:Laus;

    iget-object v1, v1, Laus;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lauu;

    invoke-direct {v2, p0, v0}, Lauu;-><init>(Laut;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    :cond_1
    return-void

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0}, Lask;->b()V

    .line 100
    invoke-direct {p0}, Laut;->c()V

    .line 101
    return-void
.end method

.method protected final a(Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1, p2}, Lask;->b(Ljava/lang/Object;Z)V

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-direct {p0}, Laut;->c()V

    .line 89
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1}, Lask;->b(Ljava/lang/Throwable;)V

    .line 94
    invoke-direct {p0}, Laut;->c()V

    .line 95
    return-void
.end method
