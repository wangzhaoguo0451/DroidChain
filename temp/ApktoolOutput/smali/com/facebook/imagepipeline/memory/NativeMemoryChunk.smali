.class public Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
.super Ljava/lang/Object;
.source "NativeMemoryChunk.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Laka;
.end annotation


# instance fields
.field final a:J

.field public final b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "memchunk"

    invoke-static {v0}, Lako;->a(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->c:Z

    .line 67
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 57
    iput p1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b:I

    .line 58
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b:I

    invoke-static {v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeAllocate(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    .line 59
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->c:Z

    .line 60
    return-void

    :cond_0
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method private a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 254
    const/4 v0, 0x0

    iget v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b:I

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 255
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private a(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    if-ltz p4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 267
    if-ltz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ld;->a(Z)V

    .line 268
    if-ltz p3, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ld;->a(Z)V

    .line 269
    add-int v0, p1, p4

    iget v3, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b:I

    if-gt v0, v3, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Ld;->a(Z)V

    .line 270
    add-int v0, p3, p4

    if-gt v0, p2, :cond_4

    :goto_4
    invoke-static {v1}, Ld;->a(Z)V

    .line 271
    return-void

    :cond_0
    move v0, v2

    .line 266
    goto :goto_0

    :cond_1
    move v0, v2

    .line 267
    goto :goto_1

    :cond_2
    move v0, v2

    .line 268
    goto :goto_2

    :cond_3
    move v0, v2

    .line 269
    goto :goto_3

    :cond_4
    move v1, v2

    .line 270
    goto :goto_4
.end method

.method private static native nativeAllocate(I)J
    .annotation build Laka;
    .end annotation
.end method

.method private static native nativeCopyFromByteArray(J[BII)V
    .annotation build Laka;
    .end annotation
.end method

.method private static native nativeCopyToByteArray(J[BII)V
    .annotation build Laka;
    .end annotation
.end method

.method private static native nativeFree(J)V
    .annotation build Laka;
    .end annotation
.end method

.method private static native nativeMemcpy(JJI)V
    .annotation build Laka;
    .end annotation
.end method

.method private static native nativeReadByte(J)B
    .annotation build Laka;
    .end annotation
.end method


# virtual methods
.method public final declared-synchronized a(I)B
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Ld;->b(Z)V

    .line 148
    if-ltz p1, :cond_1

    move v2, v0

    :goto_1
    invoke-static {v2}, Ld;->a(Z)V

    .line 149
    iget v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b:I

    if-ge p1, v2, :cond_2

    :goto_2
    invoke-static {v0}, Ld;->a(Z)V

    .line 150
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeReadByte(J)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 147
    goto :goto_0

    :cond_1
    move v2, v1

    .line 148
    goto :goto_1

    :cond_2
    move v0, v1

    .line 149
    goto :goto_2

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I[BII)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->b(Z)V

    .line 110
    invoke-direct {p0, p1, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(II)I

    move-result v0

    .line 111
    array-length v1, p2

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(IIII)V

    .line 112
    iget-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v2, v3, p2, p3, v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeCopyFromByteArray(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ld;->b(Z)V

    .line 220
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Ld;->b(Z)V

    .line 221
    iget v0, p1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b:I

    invoke-direct {p0, v2, v0, v2, p2}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(IIII)V

    .line 222
    iget-wide v0, p1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    add-long/2addr v0, v4

    iget-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3, p2}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeMemcpy(JJI)V

    .line 223
    return-void

    :cond_0
    move v0, v2

    .line 219
    goto :goto_0

    :cond_1
    move v1, v2

    .line 220
    goto :goto_1
.end method

.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I[BII)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->b(Z)V

    .line 135
    invoke-direct {p0, p1, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(II)I

    move-result v0

    .line 136
    array-length v1, p2

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(IIII)V

    .line 137
    iget-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v2, v3, p2, p3, v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeCopyToByteArray(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->c:Z

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->c:Z

    .line 75
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeFree(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finalize: Chunk "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " still active. Underlying address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
