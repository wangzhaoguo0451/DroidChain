.class public final Larw;
.super Ljava/io/InputStream;
.source "PooledByteBufferInputStream.java"


# instance fields
.field private a:Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/PooledByteBuffer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 41
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    iput-object v0, p0, Larw;->a:Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    .line 42
    iput v1, p0, Larw;->b:I

    .line 43
    iput v1, p0, Larw;->c:I

    .line 44
    return-void

    :cond_0
    move v0, v1

    .line 40
    goto :goto_0
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Larw;->a:Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v0

    iget v1, p0, Larw;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final mark(I)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Larw;->b:I

    iput v0, p0, Larw;->c:I

    .line 63
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Larw;->available()I

    move-result v0

    if-gtz v0, :cond_0

    .line 77
    const/4 v0, -0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Larw;->a:Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    iget v1, p0, Larw;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Larw;->b:I

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Larw;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 98
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

    .line 104
    :cond_1
    invoke-virtual {p0}, Larw;->available()I

    move-result v0

    .line 105
    if-gtz v0, :cond_2

    .line 106
    const/4 v0, -0x1

    .line 116
    :goto_0
    return v0

    .line 109
    :cond_2
    if-gtz p3, :cond_3

    .line 110
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_3
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 114
    iget-object v1, p0, Larw;->a:Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    iget v2, p0, Larw;->b:I

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a(I[BII)V

    .line 115
    iget v1, p0, Larw;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Larw;->b:I

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Larw;->c:I

    iput v0, p0, Larw;->b:I

    .line 127
    return-void
.end method

.method public final skip(J)J
    .locals 3
    .parameter

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 137
    long-to-int v0, p1

    invoke-virtual {p0}, Larw;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 138
    iget v1, p0, Larw;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Larw;->b:I

    .line 139
    int-to-long v0, v0

    return-wide v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
