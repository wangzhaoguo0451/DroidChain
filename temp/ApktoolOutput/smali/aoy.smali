.class final Laoy;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic b:Laip;

.field private synthetic c:Laox;


# direct methods
.method constructor <init>(Laox;Ljava/util/concurrent/atomic/AtomicBoolean;Laip;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Laoy;->c:Laox;

    iput-object p2, p0, Laoy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Laoy;->b:Laip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Laqx;
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Laoy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Laoy;->c:Laox;

    invoke-static {v0}, Laox;->a(Laox;)Lapq;

    move-result-object v0

    iget-object v1, p0, Laoy;->b:Laip;

    invoke-virtual {v0, v1}, Lapq;->a(Laip;)Laqx;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    invoke-static {}, Laox;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Found image for %s in staging area"

    iget-object v3, p0, Laoy;->b:Laip;

    invoke-interface {v3}, Laip;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    invoke-static {}, Laox;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Host thread was interrupted, decreasing reference count"

    invoke-static {v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 118
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Laqx;->close()V

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 100
    :cond_2
    invoke-static {}, Laox;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Did not find image for %s in staging area"

    iget-object v2, p0, Laoy;->b:Laip;

    invoke-interface {v2}, Laip;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    :try_start_0
    iget-object v0, p0, Laoy;->c:Laox;

    iget-object v1, p0, Laoy;->b:Laip;

    invoke-static {v0, v1}, Laox;->a(Laox;Laip;)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lakk;->a(Ljava/io/Closeable;)Lakk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    :try_start_1
    new-instance v0, Laqx;

    invoke-direct {v0, v1}, Laqx;-><init>(Lakk;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    invoke-static {v1}, Lakk;->c(Lakk;)V

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 123
    :cond_3
    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lakk;->c(Lakk;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Laoy;->a()Laqx;

    move-result-object v0

    return-object v0
.end method
