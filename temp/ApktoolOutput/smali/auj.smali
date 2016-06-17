.class final Lauj;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lath;


# instance fields
.field private synthetic a:Laui;


# direct methods
.method constructor <init>(Laui;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lauj;->a:Laui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laqx;Z)V
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v12, v0, Lauj;->a:Laui;

    iget-object v2, v12, Laui;->a:Laue;

    invoke-interface {v2}, Laue;->c()Laug;

    move-result-object v2

    iget-object v3, v12, Laui;->a:Laue;

    invoke-interface {v3}, Laue;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResizeAndRotateProducer"

    invoke-virtual {v2, v3, v4}, Laug;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v12, Laui;->a:Laue;

    invoke-interface {v2}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    iget-object v3, v12, Laui;->e:Lauh;

    iget-object v3, v3, Lauh;->b:Larv;

    invoke-virtual {v3}, Larv;->a()Larx;

    move-result-object v13

    const/4 v11, 0x0

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lauh;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Laqx;)I

    move-result v14

    iget-object v3, v12, Laui;->a:Laue;

    invoke-interface {v3}, Laue;->c()Laug;

    move-result-object v3

    iget-object v4, v12, Laui;->a:Laue;

    invoke-interface {v4}, Laue;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laug;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Laqx;->a()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :try_start_2
    invoke-static {v3, v13, v14}, Lcom/facebook/imagepipeline/nativecode/JpegTranscoder;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v13}, Larx;->c()Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lakk;->a(Ljava/io/Closeable;)Lakk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    :try_start_3
    new-instance v6, Laqx;

    invoke-direct {v6, v5}, Laqx;-><init>(Lakk;)V

    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    iput-object v2, v6, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v6}, Laqx;->c()V

    iget-object v2, v12, Laui;->a:Laue;

    invoke-interface {v2}, Laue;->c()Laug;

    move-result-object v2

    iget-object v7, v12, Laui;->a:Laue;

    invoke-interface {v7}, Laue;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ResizeAndRotateProducer"

    invoke-virtual {v2, v7, v8, v4}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, v12, Lass;->d:Lask;

    move/from16 v0, p2

    invoke-virtual {v2, v6, v0}, Lask;->b(Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v6}, Laqx;->d(Laqx;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v5}, Lakk;->c(Lakk;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    invoke-static {v3}, Lajy;->a(Ljava/io/InputStream;)V

    invoke-virtual {v13}, Larx;->close()V

    :goto_1
    return-void

    :cond_0
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v4, v0, Laqx;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Laqx;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    iget v5, v5, Lapu;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    iget v2, v2, Lapu;->b:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-lez v14, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/8"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string v2, "Original size"

    const-string v4, "Requested size"

    const-string v6, "Fraction"

    const-string v8, "queueTime"

    iget-object v9, v12, Laui;->c:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v9}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_0

    :cond_1
    const-string v5, "Unspecified"

    goto :goto_2

    :cond_2
    const-string v7, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v2

    :try_start_8
    invoke-static {v6}, Laqx;->d(Laqx;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_9
    invoke-static {v5}, Lakk;->c(Lakk;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v2

    :goto_4
    :try_start_a
    iget-object v5, v12, Laui;->a:Laue;

    invoke-interface {v5}, Laue;->c()Laug;

    move-result-object v5

    iget-object v6, v12, Laui;->a:Laue;

    invoke-interface {v6}, Laue;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ResizeAndRotateProducer"

    invoke-virtual {v5, v6, v7, v2, v4}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    iget-object v4, v12, Lass;->d:Lask;

    invoke-virtual {v4, v2}, Lask;->b(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {v3}, Lajy;->a(Ljava/io/InputStream;)V

    invoke-virtual {v13}, Larx;->close()V

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    :goto_5
    invoke-static {v10}, Lajy;->a(Ljava/io/InputStream;)V

    invoke-virtual {v13}, Larx;->close()V

    throw v2

    :catchall_3
    move-exception v2

    move-object v10, v3

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v3, v10

    goto :goto_4
.end method
