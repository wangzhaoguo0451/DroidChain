.class public Laje;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Lajj;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:J

.field private static final c:J


# instance fields
.field private final d:J

.field private final e:J

.field private f:J

.field private g:J

.field private final h:Lcom/facebook/common/statfs/StatFsHelper;

.field private final i:Laji;

.field private final j:Lajf;

.field private final k:Lakt;

.field private final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    const-class v0, Laje;

    sput-object v0, Laje;->a:Ljava/lang/Class;

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Laje;->b:J

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Laje;->c:J

    return-void
.end method

.method public constructor <init>(Laji;Lajg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laje;->l:Ljava/lang/Object;

    .line 147
    iget-wide v0, p2, Lajg;->a:J

    iput-wide v0, p0, Laje;->d:J

    .line 148
    iget-wide v0, p2, Lajg;->b:J

    iput-wide v0, p0, Laje;->e:J

    .line 149
    iget-wide v0, p2, Lajg;->b:J

    iput-wide v0, p0, Laje;->f:J

    .line 150
    invoke-static {}, Lcom/facebook/common/statfs/StatFsHelper;->a()Lcom/facebook/common/statfs/StatFsHelper;

    move-result-object v0

    iput-object v0, p0, Laje;->h:Lcom/facebook/common/statfs/StatFsHelper;

    .line 152
    iput-object p1, p0, Laje;->i:Laji;

    .line 154
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Laje;->g:J

    .line 156
    new-instance v0, Lajf;

    invoke-direct {v0}, Lajf;-><init>()V

    iput-object v0, p0, Laje;->j:Lajf;

    .line 163
    invoke-static {}, Lakv;->b()Lakv;

    move-result-object v0

    iput-object v0, p0, Laje;->k:Lakt;

    .line 167
    return-void
.end method

.method private a(Ljava/lang/String;)Lain;
    .locals 18
    .parameter

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-object v7, v0, Laje;->l:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-direct/range {p0 .. p0}, Laje;->a()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Laje;->h:Lcom/facebook/common/statfs/StatFsHelper;

    sget-object v2, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    move-object/from16 v0, p0

    iget-wide v8, v0, Laje;->e:J

    move-object/from16 v0, p0

    iget-object v5, v0, Laje;->j:Lajf;

    invoke-virtual {v5}, Lajf;->c()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v3}, Lcom/facebook/common/statfs/StatFsHelper;->b()V

    invoke-virtual {v3}, Lcom/facebook/common/statfs/StatFsHelper;->b()V

    iget-object v5, v3, Lcom/facebook/common/statfs/StatFsHelper;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->tryLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-eqz v5, :cond_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v3, Lcom/facebook/common/statfs/StatFsHelper;->d:J

    sub-long/2addr v10, v12

    sget-wide v12, Lcom/facebook/common/statfs/StatFsHelper;->a:J

    cmp-long v5, v10, v12

    if-lez v5, :cond_0

    invoke-virtual {v3}, Lcom/facebook/common/statfs/StatFsHelper;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    iget-object v5, v3, Lcom/facebook/common/statfs/StatFsHelper;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    sget-object v5, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    if-ne v2, v5, :cond_3

    iget-object v2, v3, Lcom/facebook/common/statfs/StatFsHelper;->b:Landroid/os/StatFs;

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v10

    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v5, v2, v10

    if-lez v5, :cond_5

    cmp-long v2, v2, v8

    if-ltz v2, :cond_5

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-wide v2, v0, Laje;->d:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Laje;->f:J

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Laje;->j:Lajf;

    invoke-virtual {v2}, Lajf;->c()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v8, v0, Laje;->f:J

    cmp-long v5, v2, v8

    if-lez v5, :cond_2

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Laje;->j:Lajf;

    invoke-virtual {v4}, Lajf;->b()V

    invoke-direct/range {p0 .. p0}, Laje;->a()Z

    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Laje;->f:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget-wide v2, v0, Laje;->f:J

    const-wide/16 v4, 0x9

    mul-long/2addr v2, v4

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    sget-object v4, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->CACHE_FULL:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    move-object/from16 v0, p0

    iget-object v4, v0, Laje;->i:Laji;

    invoke-interface {v4}, Laji;->a()Lajc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    :try_start_3
    invoke-interface {v8}, Lajc;->b()Ljava/util/Collection;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Laje;->k:Lakt;

    invoke-interface {v4}, Lakt;->a()J

    move-result-wide v4

    sget-wide v10, Laje;->b:J

    add-long/2addr v4, v10

    new-instance v9, Lajh;

    invoke-direct {v9, v4, v5}, Lajh;-><init>(J)V

    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Laje;->j:Lajf;

    invoke-virtual {v4}, Lajf;->c()J

    move-result-wide v4

    sub-long v10, v4, v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lajd;

    cmp-long v6, v4, v10

    if-gtz v6, :cond_7

    invoke-interface {v8, v2}, Lajc;->a(Lajd;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-lez v2, :cond_9

    add-int/lit8 v6, v3, 0x1

    add-long v2, v4, v12

    move v4, v6

    :goto_5
    move-wide/from16 v16, v2

    move v3, v4

    move-wide/from16 v4, v16

    goto :goto_4

    :catchall_0
    move-exception v2

    iget-object v3, v3, Lcom/facebook/common/statfs/StatFsHelper;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :cond_3
    :try_start_5
    iget-object v2, v3, Lcom/facebook/common/statfs/StatFsHelper;->c:Landroid/os/StatFs;

    goto/16 :goto_0

    :cond_4
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Laje;->e:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Laje;->f:J

    goto/16 :goto_3

    :catch_0
    move-exception v2

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "evictAboveSize: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    throw v2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Laje;->j:Lajf;

    neg-long v4, v4

    neg-int v3, v3

    int-to-long v10, v3

    invoke-virtual {v2, v4, v5, v10, v11}, Lajf;->b(JJ)V

    invoke-interface {v8}, Lajc;->a()V

    :cond_8
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Laje;->i:Laji;

    invoke-interface {v2}, Laji;->a()Lajc;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lajc;->b(Ljava/lang/String;)Lain;

    move-result-object v2

    return-object v2

    :cond_9
    move-wide/from16 v16, v4

    move v4, v3

    move-wide/from16 v2, v16

    goto :goto_5
.end method

.method private a(Ljava/lang/String;Lain;)Lain;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 272
    iget-object v1, p0, Laje;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Laje;->i:Laji;

    invoke-interface {v0}, Laji;->a()Lajc;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lajc;->a(Ljava/lang/String;Lain;)Lain;

    move-result-object v0

    .line 274
    iget-object v2, p0, Laje;->j:Lajf;

    invoke-interface {v0}, Lain;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-virtual {v2, v4, v5, v6, v7}, Lajf;->b(JJ)V

    .line 275
    monitor-exit v1

    return-object v0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lain;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    instance-of v0, p0, Laio;

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    check-cast p0, Laio;

    .line 254
    iget-object v0, p0, Laio;->a:Ljava/io/File;

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    sget-object v1, Laje;->a:Ljava/lang/Class;

    const-string v2, "Temp file still on disk: %s "

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lakf;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    sget-object v1, Laje;->a:Ljava/lang/Class;

    const-string v2, "Failed to delete temp file: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lakf;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 26

    .prologue
    .line 567
    const/4 v2, 0x0

    .line 568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 569
    move-object/from16 v0, p0

    iget-object v3, v0, Laje;->j:Lajf;

    invoke-virtual {v3}, Lajf;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Laje;->g:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Laje;->g:J

    sub-long v4, v14, v4

    sget-wide v6, Laje;->c:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 572
    :cond_0
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Laje;->k:Lakt;

    invoke-interface {v10}, Lakt;->a()J

    move-result-wide v16

    sget-wide v10, Laje;->b:J

    add-long v18, v16, v10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Laje;->i:Laji;

    invoke-interface {v10}, Laji;->a()Lajc;

    move-result-object v10

    invoke-interface {v10}, Lajc;->b()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v10, v2

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lajd;

    add-int/lit8 v12, v10, 0x1

    invoke-interface {v2}, Lajd;->b()J

    move-result-wide v10

    add-long/2addr v10, v8

    invoke-interface {v2}, Lajd;->a()J

    move-result-wide v8

    cmp-long v8, v8, v18

    if-lez v8, :cond_4

    const/4 v8, 0x1

    add-int/lit8 v7, v6, 0x1

    int-to-long v0, v3

    move-wide/from16 v20, v0

    invoke-interface {v2}, Lajd;->b()J

    move-result-wide v22

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v6, v0

    invoke-interface {v2}, Lajd;->a()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move v4, v6

    move v5, v7

    move v6, v8

    :goto_1
    move v7, v6

    move-wide v8, v10

    move v6, v5

    move v10, v12

    move/from16 v24, v4

    move-wide v4, v2

    move/from16 v3, v24

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->READ_INVALID_ENTRY:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Future timestamp found in "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " files , with a total size of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, and a maximum time delta of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Laje;->j:Lajf;

    int-to-long v4, v10

    invoke-virtual {v2, v8, v9, v4, v5}, Lajf;->a(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_2
    move-object/from16 v0, p0

    iput-wide v14, v0, Laje;->g:J

    .line 574
    const/4 v2, 0x1

    .line 576
    :cond_3
    return v2

    .line 572
    :catch_0
    move-exception v2

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "calcFileCacheSize: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    move-wide/from16 v24, v4

    move v4, v3

    move v5, v6

    move-wide/from16 v2, v24

    move v6, v7

    goto :goto_1
.end method

.method private static c(Laip;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 626
    :try_start_0
    invoke-interface {p0}, Laip;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lakw;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 627
    :catch_0
    move-exception v0

    .line 629
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Laip;)Lain;
    .locals 3
    .parameter

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Laje;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :try_start_1
    iget-object v0, p0, Laje;->i:Laji;

    invoke-interface {v0}, Laji;->a()Lajc;

    move-result-object v0

    invoke-static {p1}, Laje;->c(Laip;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lajc;->c(Ljava/lang/String;)Lain;

    move-result-object v0

    .line 198
    monitor-exit v1

    .line 211
    :goto_0
    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 206
    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Laip;Lait;)Lain;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-static {p1}, Laje;->c(Laip;)Ljava/lang/String;

    move-result-object v0

    .line 287
    :try_start_0
    invoke-direct {p0, v0}, Laje;->a(Ljava/lang/String;)Lain;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 289
    :try_start_1
    iget-object v2, p0, Laje;->i:Laji;

    invoke-interface {v2}, Laji;->a()Lajc;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lajc;->a(Lain;Lait;)V

    .line 291
    invoke-direct {p0, v0, v1}, Laje;->a(Ljava/lang/String;Lain;)Lain;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 293
    :try_start_2
    invoke-static {v1}, Laje;->a(Lain;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Laje;->a(Lain;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    sget-object v1, Laje;->a:Ljava/lang/Class;

    const-string v2, "Failed inserting a file into the cache"

    invoke-static {v1, v2, v0}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    throw v0
.end method

.method public final b(Laip;)Z
    .locals 2
    .parameter

    .prologue
    .line 513
    :try_start_0
    iget-object v0, p0, Laje;->i:Laji;

    invoke-interface {v0}, Laji;->a()Lajc;

    move-result-object v0

    invoke-static {p1}, Laje;->c(Laip;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lajc;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 515
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
