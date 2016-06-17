.class public final Laqx;
.super Ljava/lang/Object;
.source "EncodedImage.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lakk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakk",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/facebook/imageformat/ImageFormat;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lakk;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakk",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    iput-object v0, p0, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;

    .line 49
    iput v1, p0, Laqx;->c:I

    .line 50
    iput v1, p0, Laqx;->d:I

    .line 51
    iput v1, p0, Laqx;->e:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Laqx;->f:I

    .line 55
    invoke-static {p1}, Lakk;->a(Lakk;)Z

    move-result v0

    invoke-static {v0}, Ld;->a(Z)V

    .line 56
    invoke-virtual {p1}, Lakk;->b()Lakk;

    move-result-object v0

    iput-object v0, p0, Laqx;->a:Lakk;

    .line 57
    return-void
.end method

.method public static a(Laqx;)Laqx;
    .locals 1
    .parameter

    .prologue
    .line 65
    if-eqz p0, :cond_0

    invoke-direct {p0}, Laqx;->d()Laqx;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Laqx;)Z
    .locals 1
    .parameter

    .prologue
    .line 274
    iget v0, p0, Laqx;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, Laqx;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Laqx;->e:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Laqx;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Laqx;->a:Lakk;

    invoke-static {v0}, Lakk;->b(Lakk;)Lakk;

    move-result-object v1

    .line 73
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 76
    :goto_0
    invoke-static {v1}, Lakk;->c(Lakk;)V

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p0}, Laqx;->b(Laqx;)V

    .line 81
    :cond_0
    return-object v0

    .line 73
    :cond_1
    :try_start_0
    new-instance v0, Laqx;

    invoke-direct {v0, v1}, Laqx;-><init>(Lakk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lakk;->c(Lakk;)V

    throw v0
.end method

.method public static d(Laqx;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    if-eqz p0, :cond_0

    .line 286
    invoke-virtual {p0}, Laqx;->close()V

    .line 288
    :cond_0
    return-void
.end method

.method private declared-synchronized e()Z
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqx;->a:Lakk;

    invoke-static {v0}, Lakk;->a(Lakk;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static e(Laqx;)Z
    .locals 1
    .parameter

    .prologue
    .line 295
    if-eqz p0, :cond_0

    invoke-direct {p0}, Laqx;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Laqx;->a:Lakk;

    invoke-static {v0}, Lakk;->b(Lakk;)Lakk;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_0

    .line 118
    :try_start_0
    new-instance v1, Larw;

    invoke-virtual {v2}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    invoke-direct {v1, v0}, Larw;-><init>(Lcom/facebook/imagepipeline/memory/PooledByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-static {v2}, Lakk;->c(Lakk;)V

    move-object v0, v1

    .line 123
    :goto_0
    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lakk;->c(Lakk;)V

    throw v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Laqx;->a:Lakk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqx;->a:Lakk;

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Laqx;->a:Lakk;

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final b(Laqx;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p1, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;

    iput-object v0, p0, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;

    .line 264
    iget v0, p1, Laqx;->d:I

    iput v0, p0, Laqx;->d:I

    .line 265
    iget v0, p1, Laqx;->e:I

    iput v0, p0, Laqx;->e:I

    .line 266
    iget v0, p1, Laqx;->c:I

    iput v0, p0, Laqx;->c:I

    .line 267
    iget v0, p1, Laqx;->f:I

    iput v0, p0, Laqx;->f:I

    .line 268
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lanb;->a(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v1

    .line 234
    iput-object v1, p0, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;

    .line 238
    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormat;->isWebpFormat(Lcom/facebook/imageformat/ImageFormat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ld;->b(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_0

    .line 241
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Laqx;->d:I

    .line 242
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Laqx;->e:I

    .line 245
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v1, v0, :cond_1

    .line 246
    iget v0, p0, Laqx;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 247
    invoke-virtual {p0}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ld;->c(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0}, Lauz;->a(I)I

    move-result v0

    iput v0, p0, Laqx;->c:I

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Laqx;->c:I

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Laqx;->a:Lakk;

    invoke-static {v0}, Lakk;->c(Lakk;)V

    .line 90
    return-void
.end method
