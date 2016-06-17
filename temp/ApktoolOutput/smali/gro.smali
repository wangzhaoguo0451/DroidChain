.class public final Lgro;
.super Ljava/lang/Object;
.source "WebDownloadCacheManager.java"


# static fields
.field private static b:Lgro;


# instance fields
.field public a:Lgrq;

.field private c:Lgrp;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lgrq;

    invoke-direct {v0, p1}, Lgrq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgro;->a:Lgrq;

    .line 63
    new-instance v0, Lgrp;

    iget-object v1, p0, Lgro;->a:Lgrq;

    invoke-direct {v0, p1, v1}, Lgrp;-><init>(Landroid/content/Context;Lgrq;)V

    iput-object v0, p0, Lgro;->c:Lgrp;

    .line 64
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lgro;
    .locals 3
    .parameter

    .prologue
    .line 67
    const-class v1, Lgro;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgro;->b:Lgro;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lgro;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lgro;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgro;->b:Lgro;

    .line 70
    :cond_0
    sget-object v0, Lgro;->b:Lgro;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;Ljava/io/File;)Liaz;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-static {p3}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a(Ljava/io/File;)Lhud;

    move-result-object v2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-header"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    iget-object v3, p0, Lgro;->a:Lgrq;

    iget-wide v4, p2, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual {v3, v4, v5, v0}, Lgrq;->a(JLjava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    move-result-object v0

    .line 457
    iget-object v3, p2, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a(Ljava/io/File;)Lhud;

    move-result-object v3

    .line 463
    :try_start_0
    invoke-static {v3}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Lhud;)Liaj;

    move-result-object v0

    .line 465
    invoke-interface {v0, v2}, Liaz;->a(Lhud;)V

    .line 467
    invoke-interface {v0}, Liaz;->g()Libc;

    move-result-object v4

    iget v4, v4, Libc;->d:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 468
    new-instance v0, Liaj;

    sget-object v4, Libd;->b:Libd;

    sget-object v5, Libc;->a:Libc;

    invoke-direct {v0, v4, v5}, Liaj;-><init>(Libd;Libc;)V

    .line 469
    const-string v4, "Connection"

    const-string v5, "keep-alive"

    invoke-interface {v0, v4, v5}, Liaz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    const-string v4, "Accept-Ranges"

    const-string v5, "bytes"

    invoke-interface {v0, v4, v5}, Liaz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    const-string v4, "Content-Type"

    const-string v5, "audio/mp3"

    invoke-interface {v0, v4, v5}, Liaz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    invoke-interface {v0, v2}, Liaz;->a(Lhud;)V

    .line 477
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 478
    const-string v5, "Content-Length"

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v4, v5, v6, v7}, Ld;->a(Liaz;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/frame/TooLongFrameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    return-object v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    const-string v4, "webdownload-offline"

    const-string v5, "getMediaResponse exception: "

    invoke-static {v4, v5, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 486
    invoke-interface {v2}, Lhud;->c()V

    .line 487
    invoke-interface {v3}, Lhud;->c()V

    move-object v0, v1

    .line 488
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;Ljava/lang/String;Ljava/io/File;)Liaz;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    :cond_0
    const/4 v1, 0x0

    .line 591
    :goto_0
    return-object v1

    .line 503
    :cond_1
    const-string v0, "bytes="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 507
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 508
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 510
    const/4 v0, 0x0

    :goto_1
    array-length v1, v9

    if-ge v0, v1, :cond_4

    .line 511
    aget-object v1, v9, v0

    .line 512
    const-string v2, "-"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 514
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 522
    :goto_2
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    const/4 v6, 0x1

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 526
    :goto_3
    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 527
    const/4 v1, 0x0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v2

    const-wide/16 v2, 0x0

    goto :goto_2

    .line 524
    :catch_1
    move-exception v1

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    goto :goto_3

    .line 530
    :cond_3
    new-instance v1, Lgui;

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lgui;-><init>(JJJ)V

    .line 531
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    :cond_4
    const/4 v0, 0x0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-Range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    iget-object v2, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 539
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 540
    invoke-static {v1}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a(Ljava/io/File;)Lhud;

    move-result-object v1

    .line 542
    invoke-static {v1}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Lhud;)Liaj;
    :try_end_2
    .catch Lorg/jboss/netty/handler/codec/frame/TooLongFrameException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 543
    :try_start_3
    invoke-interface {v1}, Lhud;->c()V

    .line 544
    invoke-interface {v0}, Liaz;->g()Libc;

    move-result-object v1

    iget v1, v1, Libc;->d:I
    :try_end_3
    .catch Lorg/jboss/netty/handler/codec/frame/TooLongFrameException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_5

    .line 545
    const/4 v0, 0x0

    .line 552
    :cond_5
    :goto_4
    if-nez v0, :cond_7

    .line 553
    new-instance v0, Liaj;

    sget-object v1, Libd;->b:Libd;

    sget-object v2, Libc;->b:Libc;

    invoke-direct {v0, v1, v2}, Liaj;-><init>(Libd;Libc;)V

    .line 555
    const-string v1, "Accept-Ranges"

    const-string v2, "bytes"

    invoke-interface {v0, v1, v2}, Liaz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 556
    const-string v1, "Content-Type"

    const-string v2, "audio/mp4"

    invoke-interface {v0, v1, v2}, Liaz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    .line 560
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 561
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgui;

    .line 562
    iget-wide v2, v0, Lgui;->a:J

    invoke-virtual {v0}, Lgui;->a()J

    move-result-wide v4

    invoke-static {p3, v2, v3, v4, v5}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a(Ljava/io/File;JJ)Lhud;

    move-result-object v2

    .line 566
    invoke-virtual {v0}, Lgui;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lgui;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lgui;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lgui;->c:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 571
    const-string v5, "Content-Length"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v3, "Content-Range"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v0, "Content-Type"

    const-string v3, "audio/mp4"

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v3, v5}, Ld;->a(Liaz;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object v0, v2

    .line 589
    :goto_6
    invoke-interface {v1, v0}, Liaz;->a(Lhud;)V

    goto/16 :goto_0

    .line 548
    :catch_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 549
    :goto_7
    const-string v2, "webdownload-offline"

    const-string v3, "getContentRangeResponseBuffer exception: "

    invoke-static {v2, v3, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_4

    .line 577
    :cond_6
    const-string v2, "FC:754CAF8075DBD909D79FC07C10C3F598"

    .line 578
    invoke-static {p3, v8, v2}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a(Ljava/io/File;Ljava/util/ArrayList;Ljava/lang/String;)Lhud;

    move-result-object v0

    .line 580
    invoke-interface {v0}, Lhud;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "multipart/byteranges; boundary=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 583
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 584
    const-string v5, "Content-Length"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v3, "Content-Type"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v2, "Accept-Ranges"

    const-string v3, "bytes"

    invoke-interface {v1, v2, v3}, Liaz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v3, v5}, Ld;->a(Liaz;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_6

    .line 548
    :catch_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_7

    :cond_7
    move-object v1, v0

    goto/16 :goto_5
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;Liaw;Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;)Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 349
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-object v1

    .line 353
    :cond_1
    invoke-interface {p2}, Liaw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgxg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    const-string v0, "webdownload-offline"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "WebDownloadCacheManager getCachedHttpResponse url "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " pageUrl "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    const-string v0, "webdownload-offline"

    const-string v2, "WebDownloadCacheManager getCachedHttpResponse error url null "

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lgro;->a:Lgrq;

    iget-wide v4, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual {v0, v4, v5, v3}, Lgrq;->a(JLjava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    move-result-object v0

    .line 364
    if-nez v0, :cond_3

    .line 368
    :try_start_0
    invoke-virtual {p3, v3}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->getUrlRuleIndexInStrategy(Ljava/lang/String;)I

    move-result v2

    .line 369
    const-string v4, "webdownload-offline"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WebDownloadCacheManager getCachedHttpResponse try strategy, index is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    if-ltz v2, :cond_3

    .line 373
    iget-object v4, p0, Lgro;->a:Lgrq;

    iget-wide v6, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual {v4, v6, v7, v2}, Lgrq;->a(JI)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 382
    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 383
    iget-object v2, p0, Lgro;->a:Lgrq;

    iget-wide v4, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_6

    :cond_4
    move-object v0, v1

    .line 386
    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 387
    const-string v0, "webdownload-offline"

    const-string v2, "WebDownloadCacheManager getCachedHttpResponse error cannot find resource "

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 375
    :catch_0
    move-exception v2

    .line 376
    const-string v4, "webdownload-offline"

    const-string v5, "getCachedHttpResponse exception: "

    invoke-static {v4, v5, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 377
    :catch_1
    move-exception v2

    .line 378
    const-string v4, "webdownload-offline"

    const-string v5, "getCachedHttpResponse exception: "

    invoke-static {v4, v5, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 383
    :cond_6
    invoke-virtual {v2, v4, v5, v3}, Lgrq;->b(JLjava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {v2, v3}, Lgrq;->b(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    move-result-object v0

    goto :goto_2

    .line 392
    :cond_7
    iget-object v2, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 393
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 394
    :cond_8
    const-string v0, "webdownload-offline"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebDownloadCacheManager getCachedHttpResponse error cache file error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 400
    :cond_9
    const-string v4, "Range"

    invoke-interface {p2, v4}, Liaw;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 401
    invoke-static {v4}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 402
    const-string v0, "webdownload-offline"

    const-string v5, "WebDownloadCacheManager getCachedHttpResponse is range "

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, p1, v0, v2}, Lgro;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;Ljava/lang/String;Ljava/io/File;)Liaz;

    move-result-object v2

    .line 405
    if-nez v2, :cond_a

    .line 406
    const-string v0, "webdownload-offline"

    const-string v2, "WebDownloadCacheManager get partial cache error resource null"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 412
    :cond_a
    :try_start_1
    new-instance v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;

    invoke-static {v2}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Liaz;)Lhud;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->NO_OP_LISTENER:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    invoke-direct {v0, v2, v3}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;-><init>(Lhud;Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    goto/16 :goto_0

    .line 415
    :catch_2
    move-exception v0

    .line 416
    const-string v2, "webdownload-offline"

    const-string v3, "WebDownloadCacheManager getCachedHttpResponse error generate response error "

    invoke-static {v2, v3, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 420
    :cond_b
    iget-boolean v4, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->isMedia:Z

    if-eqz v4, :cond_d

    .line 422
    const-string v0, "webdownload-offline"

    const-string v4, "WebDownloadCacheManager getCachedHttpResponse is media"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    invoke-direct {p0, v3, p1, v2}, Lgro;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;Ljava/io/File;)Liaz;

    move-result-object v2

    .line 424
    if-nez v2, :cond_c

    .line 425
    const-string v0, "webdownload-offline"

    const-string v2, "WebDownloadCacheManager getCachedHttpResponse error response null"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 431
    :cond_c
    :try_start_2
    new-instance v0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;

    invoke-static {v2}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Liaz;)Lhud;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->NO_OP_LISTENER:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    invoke-direct {v0, v2, v3}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;-><init>(Lhud;Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v0

    goto/16 :goto_0

    .line 434
    :catch_3
    move-exception v0

    .line 435
    const-string v2, "webdownload-offline"

    const-string v3, "getCachedHttpResponse generate response error "

    invoke-static {v2, v3, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 440
    :cond_d
    invoke-static {v2}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a(Ljava/io/File;)Lhud;

    move-result-object v4

    .line 443
    const-string v1, "webdownload-offline"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get url cache : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    new-instance v1, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;

    invoke-direct {v1, v4, v0}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;-><init>(Lhud;Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;I)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 741
    iget-object v0, p0, Lgro;->c:Lgrp;

    iget-object v1, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgrp;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgrp;->b(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->resourceColumnsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    iget v2, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->strategyIndex:I

    if-ne v2, p2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 736
    iget-object v0, p0, Lgro;->c:Lgrp;

    iget-object v1, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgrp;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgrp;->b(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->resourceColumnsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    iget-object v2, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->url:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    invoke-virtual {p0, p1}, Lgro;->b(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgxl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 650
    :try_start_0
    iget-object v3, p0, Lgro;->a:Lgrq;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    if-eqz v0, :cond_0

    iget-object v7, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->url:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    :cond_1
    return-void

    .line 650
    :cond_2
    iget-object v7, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->url:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, v3, Lgrq;->a:Landroid/content/ContentResolver;

    sget-object v6, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "page_id"

    invoke-static {v7, v5}, Lgxm;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_6

    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    .line 651
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    .line 652
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    if-nez v3, :cond_8

    :cond_5
    move-object v0, v1

    .line 653
    :goto_3
    if-eqz v0, :cond_4

    .line 654
    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->deletePath(Ljava/lang/String;)V

    goto :goto_2

    .line 650
    :cond_6
    iget-object v0, v3, Lgrq;->a:Landroid/content/ContentResolver;

    sget-object v3, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "url"

    invoke-static {v5, v4}, Lgxm;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 652
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgxl;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 675
    iget-object v0, p0, Lgro;->a:Lgrq;

    iget-wide v2, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual {v0, v2, v3}, Lgrq;->b(J)Ljava/util/List;

    move-result-object v0

    .line 677
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 688
    :goto_0
    return v0

    .line 681
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    .line 682
    iget-object v3, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 684
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 688
    goto :goto_0
.end method

.method public final a(Ljava/io/File;Ljava/lang/String;Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;)Z
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    const/4 v2, 0x0

    .line 289
    invoke-static/range {p1 .. p1}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a(Ljava/io/File;)Lhud;

    move-result-object v13

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-header"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 295
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    if-eqz v13, :cond_0

    .line 297
    invoke-interface {v13}, Lhud;->c()V

    .line 299
    :cond_0
    const/4 v2, 0x0

    .line 343
    :cond_1
    :goto_0
    return v2

    .line 303
    :cond_2
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 306
    :cond_3
    new-instance v4, Liaj;

    sget-object v5, Libd;->a:Libd;

    sget-object v6, Libc;->a:Libc;

    invoke-direct {v4, v5, v6}, Liaj;-><init>(Libd;Libc;)V

    .line 307
    const-string v5, "Accept-Ranges"

    const-string v6, "bytes"

    invoke-virtual {v4, v5, v6}, Liaj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    const-string v5, "Content-Type"

    const-string v6, "audio/mpeg"

    invoke-virtual {v4, v5, v6}, Liaj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    const-string v5, "Content-Length"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Liaj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 324
    invoke-static {v4}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Liaz;)Lhud;

    move-result-object v4

    invoke-static {v4, v14}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a(Lhud;Ljava/io/File;)Z
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/frame/TooLongFrameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    .line 327
    if-eqz v12, :cond_7

    .line 329
    :try_start_1
    iget-object v2, p0, Lgro;->a:Lgrq;

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->NO_OP_LISTENER:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    invoke-virtual {v7}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lgrq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;ILjava/lang/String;)Z
    :try_end_1
    .catch Lorg/jboss/netty/handler/codec/frame/TooLongFrameException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    and-int/2addr v2, v12

    .line 339
    :cond_5
    :goto_2
    if-nez v2, :cond_1

    .line 340
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 341
    invoke-interface {v13}, Lhud;->c()V

    goto :goto_0

    .line 311
    :cond_6
    :try_start_2
    invoke-static {v13}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Lhud;)Liaj;

    move-result-object v4

    .line 312
    if-eqz v4, :cond_4

    .line 314
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Liaj;->a(Lhud;)V

    .line 315
    const-string v5, "0"

    .line 316
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 317
    const-string v7, "Content-Length"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v5, v7, v8}, Ld;->a(Liaz;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/jboss/netty/handler/codec/frame/TooLongFrameException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 333
    :catch_0
    move-exception v3

    move v12, v2

    move-object v2, v3

    .line 334
    :goto_3
    const-string v3, "webdownload-download"

    const-string v4, "saveMediaHeader exception: "

    invoke-static {v3, v4, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v12

    .line 337
    goto :goto_2

    .line 335
    :catch_1
    move-exception v3

    move v12, v2

    move-object v2, v3

    .line 336
    :goto_4
    const-string v3, "webdownload-download"

    const-string v4, "saveMediaHeader exception: "

    invoke-static {v3, v4, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v12

    goto :goto_2

    .line 335
    :catch_2
    move-exception v2

    goto :goto_4

    .line 333
    :catch_3
    move-exception v2

    goto :goto_3

    :cond_7
    move v2, v12

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 630
    iget-object v1, p0, Lgro;->a:Lgrq;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1, p2}, Lgrq;->a(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v2, v2, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual {v1, v2, v3, p1}, Lgrq;->a(JLjava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;
    .locals 1
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lgro;->a:Lgrq;

    invoke-virtual {v0, p1}, Lgrq;->a(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Lgro;->a:Lgrq;

    iget-wide v2, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual {v0, v2, v3}, Lgrq;->a(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;)Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;
    .locals 4
    .parameter

    .prologue
    .line 755
    iget-object v0, p0, Lgro;->c:Lgrp;

    iget-object v1, p1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgrp;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lgrp;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    iget-object v3, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->url:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dynamicStrategy:Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 12
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 634
    invoke-virtual {p0, p1}, Lgro;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 635
    if-nez v2, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    :try_start_0
    iget-object v3, p0, Lgro;->a:Lgrq;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Lgrq;->a(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, v3, Lgrq;->a:Landroid/content/ContentResolver;

    sget-object v6, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "page_id"

    invoke-static {v7}, Lgxm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v10, v4, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v3, v3, Lgrq;->a:Landroid/content/ContentResolver;

    sget-object v4, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "url"

    invoke-static {v5}, Lgxm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    :goto_1
    if-eqz v0, :cond_0

    .line 641
    invoke-static {v2}, Lcom/wandoujia/base/utils/FileUtil;->deletePath(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 640
    goto :goto_1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 671
    iget-object v0, p0, Lgro;->c:Lgrp;

    invoke-virtual {v0, p1}, Lgrp;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lgrp;->b(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
