.class public final Leig;
.super Ljava/lang/Object;
.source "ZipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Leii;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic f:Lcom/wandoujia/launcher_base/utils/ZipManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leii;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p2, p0, Leig;->a:Ljava/lang/String;

    .line 355
    iput-object p3, p0, Leig;->b:Ljava/lang/String;

    .line 356
    iput-object p4, p0, Leig;->c:Ljava/lang/String;

    .line 357
    iput-object p5, p0, Leig;->d:Leii;

    .line 358
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Leig;->e:Ljava/util/Set;

    .line 359
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    .line 363
    iget-object v1, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v1, v1, Lcom/wandoujia/launcher_base/utils/ZipManager;->c:Ljava/util/Map;

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v4, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v4, v4, Lcom/wandoujia/launcher_base/utils/ZipManager;->c:Ljava/util/Map;

    iget-object v5, p0, Leig;->a:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    sget-object v9, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->FAILED:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    .line 373
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 375
    :try_start_1
    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Leig;->b:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 377
    const/16 v1, 0x400

    :try_start_2
    new-array v12, v1, [B

    .line 378
    iget-object v1, p0, Leig;->c:Ljava/lang/String;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Leig;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leig;->c:Ljava/lang/String;

    .line 383
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Leig;->b:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 386
    iget-object v1, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v6, p0, Leig;->a:Ljava/lang/String;

    sget-object v7, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->UNZIPPING:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    invoke-static {v1, v6, v7}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v6, v0

    .line 388
    :goto_0
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 389
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "\\"

    const-string v13, "/"

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 390
    iget-object v0, p0, Leig;->d:Leii;

    if-eqz v0, :cond_5

    iget-object v0, p0, Leig;->d:Leii;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    iget-object v13, v0, Leii;->a:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    iget-object v13, v0, Leii;->a:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_1
    iget-object v13, v0, Leii;->b:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v0, v0, Leii;->b:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    .line 391
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 392
    iget-object v0, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v1, p0, Leig;->a:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    move-object v0, v6

    move-object v1, v8

    :goto_2
    :try_start_4
    sget-object v2, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->FAILED:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 452
    iget-object v3, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v3, v3, Lcom/wandoujia/launcher_base/utils/ZipManager;->d:Ljava/util/Map;

    iget-object v4, p0, Leig;->a:Ljava/lang/String;

    iget-object v5, p0, Leig;->e:Ljava/util/Set;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v3, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v4, p0, Leig;->a:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V

    .line 454
    invoke-static {v0}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/io/Closeable;)V

    .line 455
    invoke-static {v1}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/io/Closeable;)V

    .line 456
    :goto_3
    return-void

    .line 365
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_4
    move v0, v10

    .line 390
    goto :goto_1

    .line 395
    :cond_5
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 396
    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Leig;->c:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Leig;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 434
    :catch_1
    move-exception v0

    :goto_4
    :try_start_7
    sget-object v1, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->FAILED:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 442
    :try_start_8
    iget-object v0, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    invoke-static {v0, v11}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 452
    iget-object v0, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v0, v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->d:Ljava/util/Map;

    iget-object v2, p0, Leig;->a:Ljava/lang/String;

    iget-object v3, p0, Leig;->e:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v2, p0, Leig;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V

    .line 454
    invoke-static {v6}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/io/Closeable;)V

    .line 455
    invoke-static {v8}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 401
    :cond_6
    :try_start_9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Leig;->c:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7

    .line 404
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 406
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 407
    iget-object v1, p0, Leig;->e:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 410
    :goto_5
    :try_start_a
    invoke-virtual {v8, v12}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 411
    const/4 v1, 0x0

    invoke-virtual {v7, v12, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 412
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 413
    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 414
    iget-object v0, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v1, p0, Leig;->a:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;JJ)V

    goto :goto_5

    .line 425
    :catch_2
    move-exception v0

    move-object v0, v7

    move-object v1, v8

    goto/16 :goto_2

    .line 416
    :cond_8
    invoke-static {v7}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object v6, v7

    .line 417
    goto/16 :goto_0

    .line 419
    :cond_9
    :try_start_b
    sget-object v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->SUCCESS:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 452
    iget-object v1, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v1, v1, Lcom/wandoujia/launcher_base/utils/ZipManager;->d:Ljava/util/Map;

    iget-object v2, p0, Leig;->a:Ljava/lang/String;

    iget-object v3, p0, Leig;->e:Ljava/util/Set;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v1, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v2, p0, Leig;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V

    .line 454
    invoke-static {v6}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/io/Closeable;)V

    .line 455
    invoke-static {v8}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/io/Closeable;)V

    goto/16 :goto_3

    .line 444
    :catch_3
    move-exception v1

    move-object v6, v0

    move-object v8, v0

    :goto_6
    :try_start_c
    sget-object v1, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->FAILED:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 450
    :try_start_d
    iget-object v0, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    invoke-static {v0, v11}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/util/List;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 452
    iget-object v0, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v0, v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->d:Ljava/util/Map;

    iget-object v2, p0, Leig;->a:Ljava/lang/String;

    iget-object v3, p0, Leig;->e:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v2, p0, Leig;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V

    .line 454
    invoke-static {v6}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/io/Closeable;)V

    .line 455
    invoke-static {v8}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/io/Closeable;)V

    goto/16 :goto_3

    .line 452
    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v9

    :goto_7
    iget-object v2, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v2, v2, Lcom/wandoujia/launcher_base/utils/ZipManager;->d:Ljava/util/Map;

    iget-object v3, p0, Leig;->a:Ljava/lang/String;

    iget-object v4, p0, Leig;->e:Ljava/util/Set;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v2, p0, Leig;->f:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v3, p0, Leig;->a:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V

    .line 454
    invoke-static {v6}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/io/Closeable;)V

    .line 455
    invoke-static {v8}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/io/Closeable;)V

    throw v0

    .line 452
    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v9

    move-object v6, v7

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v1, v9

    goto :goto_7

    :catchall_5
    move-exception v2

    move-object v6, v0

    move-object v8, v1

    move-object v0, v2

    move-object v1, v9

    goto :goto_7

    :catchall_6
    move-exception v0

    goto :goto_7

    .line 444
    :catch_4
    move-exception v1

    move-object v6, v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v6, v7

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_6

    .line 434
    :catch_7
    move-exception v1

    move-object v6, v0

    move-object v8, v0

    goto/16 :goto_4

    :catch_8
    move-exception v1

    move-object v6, v0

    goto/16 :goto_4

    :catch_9
    move-exception v0

    move-object v6, v7

    goto/16 :goto_4

    .line 425
    :catch_a
    move-exception v1

    move-object v1, v0

    goto/16 :goto_2

    :catch_b
    move-exception v1

    move-object v1, v8

    goto/16 :goto_2
.end method
