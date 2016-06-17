.class public final Lfpk;
.super Lfpj;
.source "LocalImageController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfpj",
        "<",
        "Ldd;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Landroid/net/Uri;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfpr;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfpp;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lfpp;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lfpq;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Looper;

.field private g:Lfps;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfpq;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfpr;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lfpq;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:J

.field private final m:Lhau;

.field private n:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lfpp;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "content://com.wandoujia.image"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    const-string v1, "folders"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lfpk;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 130
    invoke-direct {p0}, Lfpj;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfpk;->b:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfpk;->c:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfpk;->d:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lfpk;->e:Ljava/util/HashMap;

    .line 64
    new-instance v0, Lhau;

    invoke-direct {v0, p0}, Lhau;-><init>(Lfpk;)V

    iput-object v0, p0, Lfpk;->m:Lhau;

    .line 99
    new-instance v0, Lfpl;

    invoke-direct {v0}, Lfpl;-><init>()V

    iput-object v0, p0, Lfpk;->n:Ljava/util/Comparator;

    .line 114
    new-instance v0, Lfpm;

    invoke-direct {v0, p0}, Lfpm;-><init>(Lfpk;)V

    iput-object v0, p0, Lfpk;->o:Landroid/database/ContentObserver;

    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "image-sync-service"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lfpk;->f:Landroid/os/Looper;

    .line 137
    new-instance v0, Lfps;

    iget-object v1, p0, Lfpk;->f:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lfps;-><init>(Lfpk;Landroid/os/Looper;)V

    iput-object v0, p0, Lfpk;->g:Lfps;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfpk;->k:Ljava/util/HashMap;

    .line 140
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    iget-object v1, p0, Lfpk;->m:Lhau;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->b:Lgdw;

    invoke-virtual {v0, v1}, Lgdw;->a(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method static synthetic a(Lfpk;)J
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-wide v0, p0, Lfpk;->l:J

    return-wide v0
.end method

.method static synthetic a(Lfpk;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lfpk;->l:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wandoujia/base/utils/FileUtil;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 365
    const-string v2, "_display_name"

    invoke-static {p1}, Lcom/wandoujia/base/utils/FileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v2, "description"

    const-string v3, "this is description"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v2, "mime_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "_data"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 370
    return-void
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lfpq;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lfpr;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lfpk;->h:Ljava/util/ArrayList;

    .line 327
    iput-object p2, p0, Lfpk;->i:Ljava/util/ArrayList;

    .line 328
    if-eqz p3, :cond_0

    .line 329
    iput-object p3, p0, Lfpk;->k:Ljava/util/HashMap;

    .line 331
    :cond_0
    invoke-virtual {p0}, Lfpk;->a()Landroid/os/Handler;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_1

    .line 333
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    :cond_1
    new-instance v0, Lfpo;

    invoke-direct {v0}, Lfpo;-><init>()V

    invoke-virtual {p0}, Lfpk;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/util/HashMap;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lfpq;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lfpr;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iput-object p1, p0, Lfpk;->j:Ljava/util/HashMap;

    .line 305
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 311
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpr;

    .line 313
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 315
    :cond_3
    invoke-direct {p0, v1, v2, p3}, Lfpk;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method static synthetic b(Lfpk;)Lfps;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lfpk;->g:Lfps;

    return-object v0
.end method

.method static synthetic c(Lfpk;)V
    .locals 28
    .parameter

    .prologue
    .line 36
    const-string v2, "[IMAGE_SERVICE]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sync folder time0 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "date_modified"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "datetaken"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "date_added"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "bucket_display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "orientation"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date_modified DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    if-nez v10, :cond_1

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lfpk;->o:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lfpk;->a:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "folder_path"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    if-eqz v9, :cond_3

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "folder_path"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v2, v9

    move-object v3, v10

    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lfpk;->a:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lfpk;->o:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v2, "bucket_display_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string v2, "orientation"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const-string v2, "date_added"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    const-string v2, "datetaken"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    const-string v2, "date_modified"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v22, v2, v4

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    div-long v12, v4, v22

    const-wide/16 v24, 0x64

    cmp-long v8, v12, v24

    if-lez v8, :cond_4

    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    :cond_4
    div-long v12, v2, v22

    const-wide/16 v24, 0x64

    cmp-long v8, v12, v24

    if-lez v8, :cond_5

    const-wide/16 v12, 0x3e8

    div-long/2addr v2, v12

    :cond_5
    div-long v12, v6, v22

    const-wide/16 v24, 0x64

    cmp-long v8, v12, v24

    if-lez v8, :cond_6

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    :cond_6
    const-wide/16 v12, 0x0

    sub-long v24, v6, v22

    const-wide/16 v26, 0x0

    cmp-long v8, v24, v26

    if-gez v8, :cond_14

    const-wide/16 v24, 0x0

    cmp-long v8, v24, v6

    if-gez v8, :cond_14

    :goto_4
    sub-long v12, v2, v22

    const-wide/16 v24, 0x0

    cmp-long v8, v12, v24

    if-gez v8, :cond_13

    cmp-long v8, v6, v2

    if-gez v8, :cond_13

    :goto_5
    sub-long v6, v4, v22

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-gez v6, :cond_12

    cmp-long v6, v2, v4

    if-gez v6, :cond_12

    :goto_6
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    :goto_7
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    :cond_a
    const/4 v2, 0x0

    const/16 v3, 0x2f

    :try_start_4
    invoke-virtual {v8, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lfpk;->k:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lgdh;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->c:Ljava/util/ArrayList;

    new-instance v3, Lfpp;

    invoke-direct/range {v3 .. v8}, Lfpp;-><init>(JJLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lfpk;->e:Ljava/util/HashMap;

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    new-instance v12, Lfpq;

    invoke-direct {v12, v3, v2}, Lfpq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->d:Ljava/util/HashMap;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfpq;

    iget-object v2, v2, Lfpq;->a:Ljava/util/ArrayList;

    new-instance v12, Lfpr;

    invoke-direct {v12, v6, v7, v8}, Lfpr;-><init>(JLjava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    new-instance v3, Lfpp;

    invoke-direct/range {v3 .. v8}, Lfpp;-><init>(JJLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfpk;->n:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfpp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfpk;->b:Ljava/util/ArrayList;

    new-instance v5, Lfpr;

    iget-wide v6, v2, Lfpp;->b:J

    iget-object v2, v2, Lfpp;->c:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v2}, Lfpr;-><init>(JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfpk;->n:Ljava/util/Comparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfpp;

    new-instance v7, Lfpr;

    iget-wide v12, v3, Lfpp;->b:J

    iget-object v3, v3, Lfpp;->c:Ljava/lang/String;

    invoke-direct {v7, v12, v13, v3}, Lfpr;-><init>(JLjava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lfpk;->e:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfpq;

    iput-object v5, v2, Lfpq;->a:Ljava/util/ArrayList;

    goto :goto_a

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->e:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfpk;->b:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfpk;->k:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lfpk;->a(Ljava/util/HashMap;Ljava/util/List;Ljava/util/HashMap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lfpk;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lfpk;->e:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v10, :cond_11

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    move-object v10, v9

    move-object v9, v8

    goto/16 :goto_7

    :catchall_2
    move-exception v2

    move-object v9, v8

    goto/16 :goto_7

    :catch_1
    move-exception v2

    move-object v2, v8

    move-object v3, v9

    goto/16 :goto_2

    :catch_2
    move-exception v2

    move-object v2, v8

    move-object v3, v10

    goto/16 :goto_2

    :cond_12
    move-wide v4, v2

    goto/16 :goto_6

    :cond_13
    move-wide v2, v6

    goto/16 :goto_5

    :cond_14
    move-wide v6, v12

    goto/16 :goto_4
.end method


# virtual methods
.method public final c()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lfpk;->g:Lfps;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfps;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method

.method public final declared-synchronized d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lfpq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfpk;->j:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lfpq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfpk;->h:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lfpr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfpk;->i:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfpk;->k:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
