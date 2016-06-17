.class abstract Lasp;
.super Lass;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lass",
        "<",
        "Laqx;",
        "Lakk",
        "<",
        "Laqv;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Laue;

.field final b:Lcom/facebook/imagepipeline/producers/JobScheduler;

.field final synthetic c:Lasm;

.field private final e:Laug;

.field private final f:Laps;

.field private g:Z


# direct methods
.method public constructor <init>(Lasm;Lask;Laue;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lasp;->c:Lasm;

    .line 111
    invoke-direct {p0, p2}, Lass;-><init>(Lask;)V

    .line 112
    iput-object p3, p0, Lasp;->a:Laue;

    .line 113
    invoke-interface {p3}, Laue;->c()Laug;

    move-result-object v0

    iput-object v0, p0, Lasp;->e:Laug;

    .line 114
    invoke-interface {p3}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Laps;

    iput-object v0, p0, Lasp;->f:Laps;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasp;->g:Z

    .line 116
    new-instance v0, Lasq;

    invoke-direct {v0, p0, p3}, Lasq;-><init>(Lasp;Laue;)V

    .line 132
    new-instance v1, Lcom/facebook/imagepipeline/producers/JobScheduler;

    iget-object v2, p1, Lasm;->a:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lasp;->f:Laps;

    iget v3, v3, Laps;->a:I

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lath;I)V

    iput-object v1, p0, Lasp;->b:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 133
    iget-object v0, p0, Lasp;->a:Laue;

    new-instance v1, Lasr;

    invoke-direct {v1, p0}, Lasr;-><init>(Lasp;)V

    invoke-interface {v0, v1}, Laue;->a(Lauf;)V

    .line 142
    return-void
.end method

.method private a(Laqv;JLara;Z)Ljava/util/Map;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqv;",
            "J",
            "Lara;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lasp;->e:Laug;

    iget-object v1, p0, Lasp;->a:Laue;

    invoke-interface {v1}, Laue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laug;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    .line 209
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-interface {p4}, Lara;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 212
    instance-of v0, p1, Laqw;

    if-eqz v0, :cond_1

    .line 213
    check-cast p1, Laqw;

    iget-object v0, p1, Laqw;->a:Landroid/graphics/Bitmap;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v0, "bitmapSize"

    const-string v2, "queueTime"

    const-string v4, "hasGoodQuality"

    const-string v6, "isFinal"

    invoke-static/range {v0 .. v7}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_1
    const-string v0, "queueTime"

    const-string v1, "hasGoodQuality"

    const-string v2, "isFinal"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lasp;Laqx;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lasp;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Laqx;->e(Laqx;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lasp;->b:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d()J

    move-result-wide v2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Laqx;->b()I

    move-result v0

    move v1, v0

    :goto_1
    if-eqz p2, :cond_5

    sget-object v4, Laqz;->a:Lara;

    :goto_2
    iget-object v0, p0, Lasp;->e:Laug;

    iget-object v5, p0, Lasp;->a:Laue;

    invoke-interface {v5}, Laue;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DecodeProducer"

    invoke-virtual {v0, v5, v6}, Laug;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lasp;->c:Lasm;

    iget-object v5, v0, Lasm;->b:Laqo;

    iget-object v6, p0, Lasp;->f:Laps;

    iget-object v0, p1, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;

    if-eqz v0, :cond_2

    sget-object v7, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v7, :cond_3

    :cond_2
    invoke-virtual {p1}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lanb;->a(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    :cond_3
    sget-object v7, Laqp;->a:[I

    invoke-virtual {v0}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v0

    aget v0, v7, v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v5, p1}, Laqo;->a(Laqx;)Laqw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_3
    move-object v0, p0

    move v5, p2

    :try_start_2
    invoke-direct/range {v0 .. v5}, Lasp;->a(Laqv;JLara;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lasp;->e:Laug;

    iget-object v3, p0, Lasp;->a:Laue;

    invoke-interface {v3}, Laue;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DecodeProducer"

    invoke-virtual {v2, v3, v4, v0}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v1}, Lakk;->a(Ljava/io/Closeable;)Lakk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :try_start_3
    invoke-direct {p0, p2}, Lasp;->a(Z)V

    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, v1, p2}, Lask;->b(Ljava/lang/Object;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1}, Lakk;->c(Lakk;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {p1}, Laqx;->d(Laqx;)V

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-virtual {p0, p1}, Lasp;->a(Laqx;)I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lasp;->c()Lara;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    goto :goto_2

    :pswitch_0
    :try_start_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown image format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    move-object v6, v0

    const/4 v1, 0x0

    move-object v0, p0

    move v5, p2

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lasp;->a(Laqv;JLara;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lasp;->e:Laug;

    iget-object v2, p0, Lasp;->a:Laue;

    invoke-interface {v2}, Laue;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DecodeProducer"

    invoke-virtual {v1, v2, v3, v6, v0}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    invoke-direct {p0, v6}, Lasp;->c(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {p1}, Laqx;->d(Laqx;)V

    goto/16 :goto_0

    :pswitch_1
    :try_start_8
    invoke-virtual {v5, p1, v1, v4}, Laqo;->a(Laqx;ILara;)Laqw;

    move-result-object v1

    goto :goto_3

    :pswitch_2
    invoke-virtual {v5, p1, v6}, Laqo;->a(Laqx;Laps;)Laqv;

    move-result-object v1

    goto :goto_3

    :pswitch_3
    invoke-static {p1}, Lant;->b(Laqx;)Laqv;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v1

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_9
    invoke-static {v1}, Lakk;->c(Lakk;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1}, Laqx;->d(Laqx;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 247
    monitor-enter p0

    .line 248
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lasp;->g:Z

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    monitor-exit p0

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lasp;->g:Z

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    iget-object v0, p0, Lasp;->b:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a()V

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lasp;->a(Z)V

    .line 274
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1}, Lask;->b(Ljava/lang/Throwable;)V

    .line 275
    return-void
.end method

.method private declared-synchronized d()Z
    .locals 1

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lasp;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a(Laqx;)I
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lasp;->a(Z)V

    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0}, Lask;->b()V

    .line 162
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    check-cast p1, Laqx;

    invoke-virtual {p0, p1, p2}, Lasp;->a(Laqx;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object v0, p0, Lasp;->a:Laue;

    invoke-interface {v0}, Laue;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lasp;->b:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b()Z

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lasp;->c(Ljava/lang/Throwable;)V

    .line 157
    return-void
.end method

.method protected a(Laqx;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lasp;->b:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a(Laqx;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract c()Lara;
.end method
