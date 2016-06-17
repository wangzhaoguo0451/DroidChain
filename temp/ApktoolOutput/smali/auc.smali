.class public final Lauc;
.super Ljava/lang/Object;
.source "NetworkFetcher.java"


# instance fields
.field private synthetic a:Lata;

.field private synthetic b:Laua;


# direct methods
.method constructor <init>(Laua;Lata;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lauc;->b:Laua;

    iput-object p2, p0, Lauc;->a:Lata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lauc;->a:Lata;

    invoke-virtual {v0}, Lata;->b()Laug;

    move-result-object v1

    invoke-virtual {v0}, Lata;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkFetchProducer"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Laug;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v0, Lata;->d:Lask;

    invoke-virtual {v0}, Lask;->b()V

    .line 83
    return-void
.end method

.method public final a(Ljava/io/InputStream;I)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v5, p0, Lauc;->b:Laua;

    iget-object v3, p0, Lauc;->a:Lata;

    if-lez p2, :cond_1

    iget-object v1, v5, Laua;->a:Larv;

    new-instance v0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;

    iget-object v1, v1, Larv;->a:Larm;

    invoke-direct {v0, v1, p2}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;-><init>(Larm;I)V

    move-object v1, v0

    :goto_0
    iget-object v0, v5, Laua;->b:Larp;

    const/16 v2, 0x4000

    invoke-interface {v0, v2}, Larp;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_3

    if-lez v2, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v2}, Larx;->write([BII)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v1}, Larx;->b()I

    move-result v2

    if-lez p2, :cond_2

    int-to-float v2, v2

    int-to-float v6, p2

    div-float/2addr v2, v6

    :goto_2
    iget-object v6, v3, Lata;->d:Lask;

    invoke-virtual {v6, v2}, Lask;->b(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, v5, Laua;->b:Larp;

    invoke-interface {v3, v0}, Larp;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Larx;->close()V

    throw v2

    :cond_1
    iget-object v0, v5, Laua;->a:Larv;

    invoke-virtual {v0}, Larv;->a()Larx;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/high16 v6, 0x3f80

    neg-int v2, v2

    int-to-double v8, v2

    const-wide v10, 0x40e86a0000000000L

    div-double/2addr v8, v10

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    double-to-float v2, v8

    sub-float v2, v6, v2

    goto :goto_2

    :cond_3
    iget-object v2, v5, Laua;->c:Laub;

    invoke-virtual {v2, v3}, Laub;->a(Lata;)V

    invoke-virtual {v1}, Larx;->b()I

    move-result v2

    invoke-virtual {v3}, Lata;->b()Laug;

    move-result-object v6

    invoke-virtual {v3}, Lata;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Laug;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v2, v4

    :goto_3
    invoke-virtual {v3}, Lata;->b()Laug;

    move-result-object v6

    invoke-virtual {v3}, Lata;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NetworkFetchProducer"

    invoke-virtual {v6, v7, v8, v2}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, v3, Lata;->d:Lask;

    invoke-virtual {v1}, Larx;->c()Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lakk;->a(Ljava/io/Closeable;)Lakk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    :try_start_2
    new-instance v3, Laqx;

    invoke-direct {v3, v6}, Laqx;-><init>(Lakk;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Laqx;->c()V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lask;->b(Ljava/lang/Object;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v3}, Laqx;->d(Laqx;)V

    invoke-static {v6}, Lakk;->c(Lakk;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v2, v5, Laua;->b:Larp;

    invoke-interface {v2, v0}, Larp;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Larx;->close()V

    return-void

    :cond_4
    :try_start_5
    iget-object v6, v5, Laua;->c:Laub;

    invoke-virtual {v6, v3, v2}, Laub;->a(Lata;I)Ljava/util/Map;

    move-result-object v2

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v3, v4

    :goto_4
    invoke-static {v3}, Laqx;->d(Laqx;)V

    invoke-static {v6}, Lakk;->c(Lakk;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v2

    goto :goto_4
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 5
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lauc;->a:Lata;

    invoke-virtual {v0}, Lata;->b()Laug;

    move-result-object v1

    invoke-virtual {v0}, Lata;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkFetchProducer"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p1, v4}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    iget-object v0, v0, Lata;->d:Lask;

    invoke-virtual {v0, p1}, Lask;->b(Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method
