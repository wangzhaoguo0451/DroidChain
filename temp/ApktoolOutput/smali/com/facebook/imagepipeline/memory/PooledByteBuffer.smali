.class public final Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
.super Ljava/lang/Object;
.source "PooledByteBuffer.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:I

.field private b:Lakk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakk",
            "<",
            "Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lakk;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakk",
            "<",
            "Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b:I

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 38
    invoke-virtual {p1}, Lakk;->b()Lakk;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->b:Lakk;

    .line 39
    iput p2, p0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a:I

    .line 40
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer$ClosedException;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer$ClosedException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)B
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->d()V

    .line 56
    if-ltz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Ld;->a(Z)V

    .line 57
    iget v2, p0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a:I

    if-ge p1, v2, :cond_1

    :goto_1
    invoke-static {v0}, Ld;->a(Z)V

    .line 58
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->b:Lakk;

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(I)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 56
    goto :goto_0

    :cond_1
    move v0, v1

    .line 57
    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->d()V

    .line 50
    iget v0, p0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I[BII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->d()V

    .line 66
    add-int v0, p1, p4

    iget v1, p0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 67
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->b:Lakk;

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b(I[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()J
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->d()V

    .line 73
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->b:Lakk;

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    iget-wide v0, v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->b:Lakk;

    invoke-static {v0}, Lakk;->a(Lakk;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->b:Lakk;

    invoke-static {v0}, Lakk;->c(Lakk;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->b:Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
