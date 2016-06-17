.class final Lbzu;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameWriter;


# instance fields
.field private final a:Lhsr;

.field private final b:Lhsp;

.field private final c:Lhsr;

.field private final d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lhsr;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lbzu;->a:Lhsr;

    .line 296
    iput-boolean p2, p0, Lbzu;->d:Z

    .line 298
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 299
    sget-object v1, Lbzs;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 300
    new-instance v1, Lhsp;

    invoke-direct {v1}, Lhsp;-><init>()V

    iput-object v1, p0, Lbzu;->b:Lhsp;

    .line 301
    new-instance v1, Lhst;

    iget-object v2, p0, Lbzu;->b:Lhsp;

    invoke-direct {v1, v2, v0}, Lhst;-><init>(Lhtg;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lhsx;->a(Lhtg;)Lhsr;

    move-result-object v0

    iput-object v0, p0, Lbzu;->c:Lhsr;

    .line 302
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lbzu;->b:Lhsp;

    iget-wide v0, v0, Lhsp;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 410
    :cond_0
    iget-object v0, p0, Lbzu;->c:Lhsr;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 411
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 412
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzb;

    iget-object v0, v0, Lbzb;->h:Lokio/ByteString;

    .line 413
    iget-object v3, p0, Lbzu;->c:Lhsr;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lhsr;->e(I)Lhsr;

    .line 414
    iget-object v3, p0, Lbzu;->c:Lhsr;

    invoke-interface {v3, v0}, Lhsr;->b(Lokio/ByteString;)Lhsr;

    .line 415
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzb;

    iget-object v0, v0, Lbzb;->i:Lokio/ByteString;

    .line 416
    iget-object v3, p0, Lbzu;->c:Lhsr;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lhsr;->e(I)Lhsr;

    .line 417
    iget-object v3, p0, Lbzu;->c:Lhsr;

    invoke-interface {v3, v0}, Lhsr;->b(Lokio/ByteString;)Lhsr;

    .line 411
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lbzu;->c:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V

    .line 420
    return-void
.end method


# virtual methods
.method public final ackSettings(Lbzr;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    return-void
.end method

.method public final declared-synchronized close()V
    .locals 2

    .prologue
    .line 488
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lbzu;->e:Z

    .line 489
    iget-object v0, p0, Lbzu;->a:Lhsr;

    iget-object v1, p0, Lbzu;->c:Lhsr;

    invoke-static {v0, v1}, Lbya;->a(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized connectionPreface()V
    .locals 0

    .prologue
    .line 316
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized data(ZILhsp;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 392
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lbzu;->e:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_1
    int-to-long v2, p4

    const-wide/32 v4, 0xffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lbzu;->a:Lhsr;

    const v2, 0x7fffffff

    and-int/2addr v2, p2

    invoke-interface {v1, v2}, Lhsr;->e(I)Lhsr;

    iget-object v1, p0, Lbzu;->a:Lhsr;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lhsr;->e(I)Lhsr;

    if-lez p4, :cond_3

    iget-object v0, p0, Lbzu;->a:Lhsr;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lhsr;->a_(Lhsp;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized flush()V
    .locals 2

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbzu;->a:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 457
    :cond_0
    :try_start_1
    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const v1, -0x7ffcfff9

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 464
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 465
    iget-object v0, p0, Lbzu;->a:Lhsr;

    invoke-interface {v0, p1}, Lhsr;->e(I)Lhsr;

    .line 466
    iget-object v0, p0, Lbzu;->a:Lhsr;

    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 467
    iget-object v0, p0, Lbzu;->a:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized headers(ILjava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 360
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lbzu;->a(Ljava/util/List;)V

    .line 361
    iget-object v0, p0, Lbzu;->b:Lhsp;

    iget-wide v0, v0, Lhsp;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 365
    iget-object v1, p0, Lbzu;->a:Lhsr;

    const v2, -0x7ffcfff8

    invoke-interface {v1, v2}, Lhsr;->e(I)Lhsr;

    .line 366
    iget-object v1, p0, Lbzu;->a:Lhsr;

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x0

    invoke-interface {v1, v0}, Lhsr;->e(I)Lhsr;

    .line 367
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 368
    iget-object v0, p0, Lbzu;->a:Lhsr;

    iget-object v1, p0, Lbzu;->b:Lhsp;

    invoke-interface {v0, v1}, Lhsr;->a(Lhth;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    monitor-exit p0

    return-void
.end method

.method public final maxDataLength()I
    .locals 1

    .prologue
    .line 386
    const/16 v0, 0x3fff

    return v0
.end method

.method public final declared-synchronized ping(ZII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 442
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lbzu;->e:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 443
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lbzu;->d:Z

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_2

    .line 444
    :goto_1
    if-eq p1, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    .line 443
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 445
    :cond_3
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const v1, -0x7ffcfffa

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 449
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 450
    iget-object v0, p0, Lbzu;->a:Lhsr;

    invoke-interface {v0, p2}, Lhsr;->e(I)Lhsr;

    .line 451
    iget-object v0, p0, Lbzu;->a:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    monitor-exit p0

    return-void
.end method

.method public final pushPromise(IILjava/util/List;)V
    .locals 0
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
    .line 312
    return-void
.end method

.method public final declared-synchronized rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 374
    :cond_0
    :try_start_1
    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 375
    :cond_1
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 379
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 380
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 381
    iget-object v0, p0, Lbzu;->a:Lhsr;

    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 382
    iget-object v0, p0, Lbzu;->a:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized settings(Lbzr;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0xffffff

    .line 423
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 424
    :cond_0
    :try_start_1
    iget v0, p1, Lbzr;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 427
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    .line 428
    iget-object v2, p0, Lbzu;->a:Lhsr;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, Lhsr;->e(I)Lhsr;

    .line 429
    iget-object v2, p0, Lbzu;->a:Lhsr;

    and-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x0

    invoke-interface {v2, v1}, Lhsr;->e(I)Lhsr;

    .line 430
    iget-object v1, p0, Lbzu;->a:Lhsr;

    invoke-interface {v1, v0}, Lhsr;->e(I)Lhsr;

    .line 431
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 432
    invoke-virtual {p1, v0}, Lbzr;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    invoke-virtual {p1, v0}, Lbzr;->b(I)I

    move-result v1

    .line 434
    iget-object v2, p0, Lbzu;->a:Lhsr;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v3, v0, v4

    or-int/2addr v1, v3

    invoke-interface {v2, v1}, Lhsr;->e(I)Lhsr;

    .line 435
    iget-object v1, p0, Lbzu;->a:Lhsr;

    iget-object v2, p1, Lbzr;->d:[I

    aget v2, v2, v0

    invoke-interface {v1, v2}, Lhsr;->e(I)Lhsr;

    .line 431
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lbzu;->a:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized synReply(ZILjava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 345
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lbzu;->a(Ljava/util/List;)V

    .line 346
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 348
    :goto_0
    iget-object v1, p0, Lbzu;->b:Lhsp;

    iget-wide v2, v1, Lhsp;->b:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    long-to-int v1, v2

    .line 350
    iget-object v2, p0, Lbzu;->a:Lhsr;

    const v3, -0x7ffcfffe

    invoke-interface {v2, v3}, Lhsr;->e(I)Lhsr;

    .line 351
    iget-object v2, p0, Lbzu;->a:Lhsr;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Lhsr;->e(I)Lhsr;

    .line 352
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 353
    iget-object v0, p0, Lbzu;->a:Lhsr;

    iget-object v1, p0, Lbzu;->b:Lhsp;

    invoke-interface {v0, v1}, Lhsr;->a(Lhth;)J

    .line 354
    iget-object v0, p0, Lbzu;->a:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 346
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 7
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
            ">;)V"
        }
    .end annotation

    .prologue
    const v6, 0x7fffffff

    const/4 v0, 0x0

    .line 326
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lbzu;->e:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 327
    :cond_0
    :try_start_1
    invoke-direct {p0, p5}, Lbzu;->a(Ljava/util/List;)V

    .line 328
    const-wide/16 v2, 0xa

    iget-object v1, p0, Lbzu;->b:Lhsp;

    iget-wide v4, v1, Lhsp;->b:J

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 329
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :cond_1
    or-int/2addr v0, v1

    .line 332
    iget-object v1, p0, Lbzu;->a:Lhsr;

    const v3, -0x7ffcffff

    invoke-interface {v1, v3}, Lhsr;->e(I)Lhsr;

    .line 334
    iget-object v1, p0, Lbzu;->a:Lhsr;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lhsr;->e(I)Lhsr;

    .line 335
    iget-object v0, p0, Lbzu;->a:Lhsr;

    and-int v1, p3, v6

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 336
    iget-object v0, p0, Lbzu;->a:Lhsr;

    and-int v1, p4, v6

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 337
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhsr;->f(I)Lhsr;

    .line 338
    iget-object v0, p0, Lbzu;->a:Lhsr;

    iget-object v1, p0, Lbzu;->b:Lhsp;

    invoke-interface {v0, v1}, Lhsr;->a(Lhth;)J

    .line 339
    iget-object v0, p0, Lbzu;->a:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    :cond_2
    move v1, v0

    .line 329
    goto :goto_0
.end method

.method public final declared-synchronized windowUpdate(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbzu;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 473
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 474
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_2
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 481
    iget-object v0, p0, Lbzu;->a:Lhsr;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 482
    iget-object v0, p0, Lbzu;->a:Lhsr;

    invoke-interface {v0, p1}, Lhsr;->e(I)Lhsr;

    .line 483
    iget-object v0, p0, Lbzu;->a:Lhsr;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lhsr;->e(I)Lhsr;

    .line 484
    iget-object v0, p0, Lbzu;->a:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    monitor-exit p0

    return-void
.end method
