.class public Lcpu;
.super Ljava/lang/Object;
.source "AppStorage.java"


# static fields
.field private static b:Lcpu;

.field private static synthetic g:Z


# instance fields
.field public final a:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Landroid/content/Context;

.field private f:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcpu;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcpu;->g:Z

    .line 37
    const-class v0, Lcpu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcpu;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcpu;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    iput-object p1, p0, Lcpu;->e:Landroid/content/Context;

    .line 93
    invoke-static {}, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;->a()Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    move-result-object v0

    iput-object v0, p0, Lcpu;->a:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    .line 94
    return-void
.end method

.method private static a(Landroid/database/Cursor;Ljava/util/Set;)Lcom/wandoujia/appmanager/LocalAppInfo;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/appmanager/LocalAppInfo;"
        }
    .end annotation

    .prologue
    .line 330
    const-string v0, "packagename"

    invoke-static {v0, p0}, Lcpu;->b(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 346
    :goto_0
    return-object v0

    .line 335
    :cond_0
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-direct {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;-><init>()V

    .line 336
    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->packageName:Ljava/lang/String;

    .line 337
    const-string v2, "title"

    invoke-static {v2, p0}, Lcpu;->b(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->title:Ljava/lang/String;

    .line 338
    const-string v2, "title_pinyin_first_char"

    invoke-static {v2, p0}, Lcpu;->b(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->titlePinyinFirstChar:Ljava/lang/String;

    .line 339
    const-string v2, "size"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->size:J

    .line 340
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored:Z

    .line 341
    const-string v1, "versioncode"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->versionCode:I

    .line 345
    const-string v1, "upgrade_info"

    invoke-static {v1, p0}, Lcpu;->b(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->parseFromJson(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    goto :goto_0
.end method

.method static synthetic a(Lcpu;)Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcpu;->a:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    return-object v0
.end method

.method public static a()Lcpu;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcpu;->b:Lcpu;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcpu;->b(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcpu;

    invoke-direct {v0, p0}, Lcpu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcpu;->b:Lcpu;

    .line 69
    return-void
.end method

.method private a(Lcom/wandoujia/appmanager/LocalAppInfo;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcpu;->d()V

    .line 104
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 127
    :cond_1
    :goto_0
    return v0

    .line 108
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcpu;->a(Ljava/lang/String;Z)Z

    .line 109
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 110
    const-string v2, "packagename"

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "title_pinyin_first_char"

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitlePinyinFirstChar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "size"

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    const-string v2, "versioncode"

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v2, "md5"

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    .line 117
    const-string v4, "upgrade_info"

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcpu;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "apps"

    const-string v5, "packagename=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 120
    if-gtz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcpu;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "apps"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 124
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_0

    .line 117
    :cond_3
    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->toJson()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcpu;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcpu;->b()V

    .line 365
    :cond_0
    iget-object v1, p0, Lcpu;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 366
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcpu;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 368
    :try_start_1
    sget-boolean v0, Lcpu;->g:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 371
    :catch_0
    move-exception v0

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcpu;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 225
    invoke-direct {p0}, Lcpu;->d()V

    .line 226
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 267
    :cond_1
    :goto_0
    return-object v0

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packagename IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 232
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 238
    :cond_3
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 241
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 244
    :try_start_0
    iget-object v0, p0, Lcpu;->a:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    iget-object v0, v0, Lhpu;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 247
    iget-object v0, p0, Lcpu;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "apps"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 248
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 250
    invoke-static {v1, v9}, Lcpu;->a(Landroid/database/Cursor;Ljava/util/Set;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v2

    .line 251
    if-eqz v2, :cond_5

    .line 252
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 258
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_6

    .line 261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_7
    if-eqz v1, :cond_1

    .line 261
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_8

    .line 261
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_8
    throw v0

    .line 264
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 258
    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Lcpu;->d()V

    .line 172
    if-eqz p2, :cond_0

    .line 173
    iget-object v0, p0, Lcpu;->a:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    invoke-virtual {v0, p1}, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;->a(Ljava/lang/String;)V

    .line 177
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcpu;->a:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    iget-object v1, v0, Lhpu;->a:Landroid/os/Handler;

    new-instance v2, Lhqa;

    invoke-direct {v2, v0, p1}, Lhqa;-><init>(Lhpu;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcpu;->d()V

    .line 139
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 157
    :goto_0
    monitor-exit p0

    return v0

    .line 143
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcpu;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 144
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 145
    invoke-direct {p0, v0}, Lcpu;->a(Lcom/wandoujia/appmanager/LocalAppInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 150
    :try_start_2
    iget-object v0, p0, Lcpu;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move v0, v1

    .line 157
    goto :goto_0

    .line 147
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcpu;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 148
    :try_start_4
    iget-object v0, p0, Lcpu;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 157
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    :try_start_5
    iget-object v1, p0, Lcpu;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 157
    :goto_4
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 138
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcpu;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcpu;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    new-instance v0, Lcpv;

    iget-object v1, p0, Lcpu;->e:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcpv;-><init>(Lcpu;Landroid/content/Context;B)V

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcpu;->f:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :try_start_2
    invoke-virtual {v0}, Lcpv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcpu;->f:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    :try_start_3
    iget-object v1, p0, Lcpu;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    :try_start_4
    iget-object v0, p0, Lcpu;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    iget-object v0, p0, Lcpu;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 72
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/wandoujia/base/log/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 276
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 279
    :try_start_0
    invoke-direct {p0}, Lcpu;->d()V

    .line 280
    iget-object v0, p0, Lcpu;->a:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    iget-object v0, v0, Lhpu;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 281
    iget-object v0, p0, Lcpu;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "apps"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 282
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    invoke-static {v0, v10}, Lcpu;->a(Landroid/database/Cursor;Ljava/util/Set;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_0
    :goto_2
    return-object v9

    .line 289
    :cond_1
    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 289
    :catch_1
    move-exception v0

    :goto_3
    if-eqz v8, :cond_0

    .line 290
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 289
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_2

    .line 290
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 289
    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v8, v0

    goto :goto_3

    .line 286
    :catch_3
    move-exception v0

    move-object v0, v8

    goto :goto_1
.end method
