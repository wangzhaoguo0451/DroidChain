.class final Lcae;
.super Lbxs;
.source "SpdyConnection.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;


# instance fields
.field final synthetic a:Lbzv;

.field private b:Lcom/squareup/okhttp/internal/spdy/FrameReader;


# direct methods
.method private constructor <init>(Lbzv;)V
    .locals 4
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcae;->a:Lbzv;

    .line 563
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lbzv;->a(Lbzv;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbxs;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method synthetic constructor <init>(Lbzv;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcae;-><init>(Lbzv;)V

    return-void
.end method


# virtual methods
.method public final ackSettings()V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public final alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 782
    return-void
.end method

.method protected final b()V
    .locals 6

    .prologue
    .line 567
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 568
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 570
    :try_start_0
    iget-object v1, p0, Lcae;->a:Lbzv;

    iget-object v1, v1, Lbzv;->g:Lcom/squareup/okhttp/internal/spdy/Variant;

    iget-object v3, p0, Lcae;->a:Lbzv;

    iget-object v3, v3, Lbzv;->h:Ljava/net/Socket;

    invoke-static {v3}, Lhsx;->b(Ljava/net/Socket;)Lhth;

    move-result-object v3

    invoke-static {v3}, Lhsx;->a(Lhth;)Lhss;

    move-result-object v3

    iget-object v4, p0, Lcae;->a:Lbzv;

    iget-boolean v4, v4, Lbzv;->b:Z

    invoke-interface {v1, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Variant;->newReader(Lhss;Z)Lcom/squareup/okhttp/internal/spdy/FrameReader;

    move-result-object v1

    iput-object v1, p0, Lcae;->b:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    .line 571
    iget-object v1, p0, Lcae;->a:Lbzv;

    iget-boolean v1, v1, Lbzv;->b:Z

    if-nez v1, :cond_0

    .line 572
    iget-object v1, p0, Lcae;->b:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/spdy/FrameReader;->readConnectionPreface()V

    .line 574
    :cond_0
    iget-object v1, p0, Lcae;->b:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    invoke-interface {v1, p0}, Lcom/squareup/okhttp/internal/spdy/FrameReader;->nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 577
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :try_start_1
    iget-object v2, p0, Lcae;->a:Lbzv;

    invoke-static {v2, v0, v1}, Lbzv;->a(Lbzv;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 586
    :goto_0
    iget-object v0, p0, Lcae;->b:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    invoke-static {v0}, Lbya;->a(Ljava/io/Closeable;)V

    .line 587
    :goto_1
    return-void

    .line 579
    :catch_0
    move-exception v1

    :try_start_2
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    :try_start_3
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 583
    :try_start_4
    iget-object v2, p0, Lcae;->a:Lbzv;

    invoke-static {v2, v1, v0}, Lbzv;->a(Lbzv;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 586
    :goto_2
    iget-object v0, p0, Lcae;->b:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    invoke-static {v0}, Lbya;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 582
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 583
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcae;->a:Lbzv;

    invoke-static {v3, v1, v2}, Lbzv;->a(Lbzv;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 586
    :goto_4
    iget-object v1, p0, Lcae;->b:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    invoke-static {v1}, Lbya;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_4

    .line 582
    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final data(ZILhss;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-static {v0, p2}, Lbzv;->a(Lbzv;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-static {v0, p2, p3, p4, p1}, Lbzv;->a(Lbzv;ILhss;IZ)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-virtual {v0, p2}, Lbzv;->a(I)Lcah;

    move-result-object v0

    .line 597
    if-nez v0, :cond_2

    .line 598
    iget-object v0, p0, Lcae;->a:Lbzv;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lbzv;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 599
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lhss;->f(J)V

    goto :goto_0

    .line 602
    :cond_2
    sget-boolean v1, Lcah;->i:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iget-object v1, v0, Lcah;->f:Lcaj;

    int-to-long v2, p4

    invoke-virtual {v1, p3, v2, v3}, Lcaj;->a(Lhss;J)V

    .line 603
    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {v0}, Lcah;->e()V

    goto :goto_0
.end method

.method public final goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lokio/ByteString;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 734
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 739
    iget-object v1, p0, Lcae;->a:Lbzv;

    monitor-enter v1

    .line 740
    :try_start_0
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-static {v0}, Lbzv;->e(Lbzv;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcae;->a:Lbzv;

    invoke-static {v2}, Lbzv;->e(Lbzv;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcah;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcah;

    .line 741
    iget-object v2, p0, Lcae;->a:Lbzv;

    invoke-static {v2}, Lbzv;->j(Lbzv;)Z

    .line 742
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 746
    iget v4, v3, Lcah;->c:I

    if-le v4, p1, :cond_0

    invoke-virtual {v3}, Lcah;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    sget-object v4, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v3, v4}, Lcah;->c(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 748
    iget-object v4, p0, Lcae;->a:Lbzv;

    iget v3, v3, Lcah;->c:I

    invoke-virtual {v4, v3}, Lbzv;->b(I)Lcah;

    .line 745
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 751
    :cond_1
    return-void
.end method

.method public final headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;",
            "Lcom/squareup/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 610
    iget-object v1, p0, Lcae;->a:Lbzv;

    invoke-static {v1, p3}, Lbzv;->a(Lbzv;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-static {v0, p3, p5, p2}, Lbzv;->a(Lbzv;ILjava/util/List;Z)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v6, p0, Lcae;->a:Lbzv;

    monitor-enter v6

    .line 617
    :try_start_0
    iget-object v1, p0, Lcae;->a:Lbzv;

    invoke-static {v1}, Lbzv;->b(Lbzv;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 619
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcae;->a:Lbzv;

    invoke-virtual {v1, p3}, Lbzv;->a(I)Lcah;

    move-result-object v2

    .line 621
    if-nez v2, :cond_6

    .line 623
    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfStreamAbsent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 624
    iget-object v0, p0, Lcae;->a:Lbzv;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, p3, v1}, Lbzv;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 625
    monitor-exit v6

    goto :goto_0

    .line 629
    :cond_3
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-static {v0}, Lbzv;->c(Lbzv;)I

    move-result v0

    if-gt p3, v0, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 632
    :cond_4
    rem-int/lit8 v0, p3, 0x2

    iget-object v1, p0, Lcae;->a:Lbzv;

    invoke-static {v1}, Lbzv;->d(Lbzv;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_5

    monitor-exit v6

    goto :goto_0

    .line 635
    :cond_5
    new-instance v0, Lcah;

    iget-object v2, p0, Lcae;->a:Lbzv;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcah;-><init>(ILbzv;ZZLjava/util/List;)V

    .line 637
    iget-object v1, p0, Lcae;->a:Lbzv;

    invoke-static {v1, p3}, Lbzv;->b(Lbzv;I)I

    .line 638
    iget-object v1, p0, Lcae;->a:Lbzv;

    invoke-static {v1}, Lbzv;->e(Lbzv;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-static {}, Lbzv;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcaf;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcae;->a:Lbzv;

    invoke-static {v7}, Lbzv;->a(Lbzv;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lcaf;-><init>(Lcae;Ljava/lang/String;[Ljava/lang/Object;Lcah;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 648
    monitor-exit v6

    goto :goto_0

    .line 650
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfStreamPresent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 654
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v2, v0}, Lcah;->b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 655
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-virtual {v0, p3}, Lbzv;->b(I)Lcah;

    goto/16 :goto_0

    .line 660
    :cond_7
    sget-boolean v1, Lcah;->i:Z

    if-nez v1, :cond_8

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    const/4 v1, 0x0

    monitor-enter v2

    :try_start_2
    iget-object v3, v2, Lcah;->e:Ljava/util/List;

    if-nez v3, :cond_b

    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfHeadersAbsent()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_d

    invoke-virtual {v2, v1}, Lcah;->b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 661
    :cond_9
    :goto_2
    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcah;->e()V

    goto/16 :goto_0

    .line 660
    :cond_a
    :try_start_3
    iput-object p5, v2, Lcah;->e:Ljava/util/List;

    invoke-virtual {v2}, Lcah;->a()Z

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_b
    :try_start_4
    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfHeadersPresent()Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    goto :goto_1

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Lcah;->e:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v3, v2, Lcah;->e:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_d
    if-nez v0, :cond_9

    iget-object v0, v2, Lcah;->d:Lbzv;

    iget v1, v2, Lcah;->c:I

    invoke-virtual {v0, v1}, Lbzv;->b(I)Lcah;

    goto :goto_2
.end method

.method public final ping(ZII)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 722
    if-eqz p1, :cond_3

    .line 723
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-static {v0}, Lbzv;->i(Lbzv;)Laf;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_2

    .line 725
    iget-wide v2, v0, Laf;->S:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, v0, Laf;->R:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Laf;->S:J

    iget-object v0, v0, Laf;->Q:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 731
    :cond_2
    :goto_0
    return-void

    .line 729
    :cond_3
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-static {v0, p2, p3}, Lbzv;->a(Lbzv;II)V

    goto :goto_0
.end method

.method public final priority(IIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    return-void
.end method

.method public final pushPromise(IILjava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-static {v0, p2, p3}, Lbzv;->a(Lbzv;ILjava/util/List;)V

    .line 777
    return-void
.end method

.method public final rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-static {v0, p1}, Lbzv;->a(Lbzv;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-static {v0, p1, p2}, Lbzv;->a(Lbzv;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-virtual {v0, p1}, Lbzv;->b(I)Lcah;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0, p2}, Lcah;->c(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public final settings(ZLbzr;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 676
    .line 677
    const/4 v0, 0x0

    .line 678
    iget-object v8, p0, Lcae;->a:Lbzv;

    monitor-enter v8

    .line 679
    :try_start_0
    iget-object v2, p0, Lcae;->a:Lbzv;

    iget-object v2, v2, Lbzv;->f:Lbzr;

    invoke-virtual {v2}, Lbzr;->b()I

    move-result v3

    .line 680
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcae;->a:Lbzv;

    iget-object v2, v2, Lbzv;->f:Lbzr;

    const/4 v4, 0x0

    iput v4, v2, Lbzr;->c:I

    iput v4, v2, Lbzr;->b:I

    iput v4, v2, Lbzr;->a:I

    iget-object v2, v2, Lbzr;->d:[I

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 681
    :cond_0
    iget-object v2, p0, Lcae;->a:Lbzv;

    iget-object v4, v2, Lbzv;->f:Lbzr;

    move v2, v1

    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_2

    invoke-virtual {p2, v2}, Lbzr;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2, v2}, Lbzr;->b(I)I

    move-result v5

    iget-object v9, p2, Lbzr;->d:[I

    aget v9, v9, v2

    invoke-virtual {v4, v2, v5, v9}, Lbzr;->a(III)Lbzr;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 682
    :cond_2
    iget-object v2, p0, Lcae;->a:Lbzv;

    iget-object v2, v2, Lbzv;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v2, v4, :cond_3

    .line 683
    invoke-static {}, Lbzv;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v4, Lcag;

    const-string v5, "OkHttp %s ACK Settings"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcae;->a:Lbzv;

    invoke-static {v11}, Lbzv;->a(Lbzv;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v4, p0, v5, v9, p2}, Lcag;-><init>(Lcae;Ljava/lang/String;[Ljava/lang/Object;Lbzr;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 685
    :cond_3
    iget-object v2, p0, Lcae;->a:Lbzv;

    iget-object v2, v2, Lbzv;->f:Lbzr;

    invoke-virtual {v2}, Lbzr;->b()I

    move-result v2

    .line 686
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    if-eq v2, v3, :cond_8

    .line 687
    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 688
    iget-object v4, p0, Lcae;->a:Lbzv;

    invoke-static {v4}, Lbzv;->g(Lbzv;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 689
    iget-object v4, p0, Lcae;->a:Lbzv;

    iget-wide v10, v4, Lbzv;->d:J

    add-long/2addr v10, v2

    iput-wide v10, v4, Lbzv;->d:J

    cmp-long v5, v2, v6

    if-lez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 690
    :cond_4
    iget-object v4, p0, Lcae;->a:Lbzv;

    invoke-static {v4}, Lbzv;->h(Lbzv;)Z

    .line 692
    :cond_5
    iget-object v4, p0, Lcae;->a:Lbzv;

    invoke-static {v4}, Lbzv;->e(Lbzv;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 693
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-static {v0}, Lbzv;->e(Lbzv;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lcae;->a:Lbzv;

    invoke-static {v4}, Lbzv;->e(Lbzv;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcah;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcah;

    move-wide v4, v2

    move-object v2, v0

    .line 696
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    if-eqz v2, :cond_6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 698
    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_6

    aget-object v1, v2, v0

    .line 699
    monitor-enter v1

    .line 700
    :try_start_1
    invoke-virtual {v1, v4, v5}, Lcah;->a(J)V

    .line 701
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 696
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 701
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 704
    :cond_6
    return-void

    :cond_7
    move-wide v4, v2

    move-object v2, v0

    goto :goto_1

    :cond_8
    move-object v2, v0

    move-wide v4, v6

    goto :goto_1
.end method

.method public final windowUpdate(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 754
    if-nez p1, :cond_1

    .line 755
    iget-object v1, p0, Lcae;->a:Lbzv;

    monitor-enter v1

    .line 756
    :try_start_0
    iget-object v0, p0, Lcae;->a:Lbzv;

    iget-wide v2, v0, Lbzv;->d:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lbzv;->d:J

    .line 757
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 758
    monitor-exit v1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 760
    :cond_1
    iget-object v0, p0, Lcae;->a:Lbzv;

    invoke-virtual {v0, p1}, Lbzv;->a(I)Lcah;

    move-result-object v1

    .line 761
    if-eqz v1, :cond_0

    .line 762
    monitor-enter v1

    .line 763
    :try_start_1
    invoke-virtual {v1, p2, p3}, Lcah;->a(J)V

    .line 764
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
