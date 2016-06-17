.class public final Lant;
.super Ljava/lang/Object;
.source "AnimatedImageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static a(Lanm;)Laqt;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 99
    :try_start_0
    new-instance v0, Lanp;

    invoke-direct {v0, p0}, Lanp;-><init>(Lanm;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lakk;->b(Lakk;)Lakk;

    move-result-object v1

    iput-object v1, v0, Lanp;->b:Lakk;

    const/4 v1, 0x0

    invoke-static {v1}, Lakk;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lanp;->c:Ljava/util/List;

    invoke-virtual {v0}, Lanp;->a()Lano;

    move-result-object v0

    .line 116
    new-instance v1, Laqt;

    invoke-direct {v1, v0}, Laqt;-><init>(Lano;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-static {v2}, Lakk;->c(Lakk;)V

    .line 119
    invoke-static {v2}, Lakk;->a(Ljava/lang/Iterable;)V

    return-object v1

    .line 118
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lakk;->c(Lakk;)V

    .line 119
    invoke-static {v2}, Lakk;->a(Ljava/lang/Iterable;)V

    throw v0
.end method

.method public static a(Laqx;)Laqv;
    .locals 4
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laqx;->a:Lakk;

    invoke-static {v0}, Lakk;->b(Lakk;)Lakk;

    move-result-object v1

    .line 62
    invoke-static {v1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ld;->b(Z)V

    .line 65
    invoke-virtual {v1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    .line 66
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/facebook/imagepipeline/gif/GifImage;->a(JI)Lcom/facebook/imagepipeline/gif/GifImage;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lant;->a(Lanm;)Laqt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 70
    invoke-static {v1}, Lakk;->c(Lakk;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lakk;->c(Lakk;)V

    throw v0
.end method

.method public static b(Laqx;)Laqv;
    .locals 4
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Laqx;->a:Lakk;

    invoke-static {v0}, Lakk;->b(Lakk;)Lakk;

    move-result-object v1

    .line 85
    invoke-static {v1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 88
    invoke-virtual {v1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    .line 89
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/facebook/imagepipeline/webp/WebPImage;->a(JI)Lcom/facebook/imagepipeline/webp/WebPImage;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lant;->a(Lanm;)Laqt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 92
    invoke-static {v1}, Lakk;->c(Lakk;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lakk;->c(Lakk;)V

    throw v0
.end method
