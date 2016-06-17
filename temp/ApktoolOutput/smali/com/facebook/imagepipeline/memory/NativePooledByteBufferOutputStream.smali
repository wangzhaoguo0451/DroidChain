.class public final Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;
.super Larx;
.source "NativePooledByteBufferOutputStream.java"


# instance fields
.field private final a:Larm;

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

.field private c:I


# direct methods
.method public constructor <init>(Larm;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p1, Larm;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;-><init>(Larm;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Larm;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Larx;-><init>()V

    .line 50
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 51
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larm;

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a:Larm;

    .line 52
    iput v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a:Larm;

    invoke-virtual {v0, p2}, Larm;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a:Larm;

    invoke-static {v0, v1}, Lakk;->a(Ljava/lang/Object;Lakn;)Lakk;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lakk;

    .line 54
    return-void

    :cond_0
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lakk;

    invoke-static {v0}, Lakk;->a(Lakk;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream$InvalidStreamException;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream$InvalidStreamException;-><init>()V

    throw v0

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->d()V

    .line 65
    new-instance v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lakk;

    iget v2, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;-><init>(Lakk;I)V

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    return v0
.end method

.method public final synthetic c()Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a()Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lakk;

    invoke-static {v0}, Lakk;->c(Lakk;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lakk;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    .line 126
    invoke-super {p0}, Larx;->close()V

    .line 127
    return-void
.end method

.method public final write(I)V
    .locals 3
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 86
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 87
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->write([B)V

    .line 88
    return-void
.end method

.method public final write([BII)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->d()V

    .line 111
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    add-int v1, v0, p3

    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->d()V

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lakk;

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b:I

    if-le v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a:Larm;

    invoke-virtual {v0, v1}, Larm;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lakk;

    invoke-virtual {v1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    iget v2, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    iget-wide v6, v1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Copying from NativeMemoryChunk "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to NativeMemoryChunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which share the same address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {v3}, Ld;->a(Z)V

    :cond_2
    iget-wide v4, v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    iget-wide v6, v1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    monitor-enter v0

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, v0, v2}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lakk;

    invoke-virtual {v1}, Lakk;->close()V

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a:Larm;

    invoke-static {v0, v1}, Lakk;->a(Ljava/lang/Object;Lakn;)Lakk;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lakk;

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lakk;

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    iget v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(I[BII)I

    .line 113
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    .line 114
    return-void

    .line 111
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_4
    monitor-enter v1

    :try_start_5
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1, v0, v2}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;I)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v2

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
.end method
