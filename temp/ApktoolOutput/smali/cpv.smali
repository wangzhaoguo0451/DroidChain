.class final Lcpv;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AppStorage.java"


# instance fields
.field private synthetic a:Lcpu;


# direct methods
.method private constructor <init>(Lcpu;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcpv;->a:Lcpu;

    .line 400
    const-string v0, "localapps.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 401
    return-void
.end method

.method synthetic constructor <init>(Lcpu;Landroid/content/Context;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1, p2}, Lcpv;-><init>(Lcpu;Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 496
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 497
    const-string v0, "ignored_apps"

    sget-object v1, Lcom/wandoujia/appmanager/config/Config$ContentDir;->DATA:Lcom/wandoujia/appmanager/config/Config$ContentDir;

    invoke-static {v1}, Lcom/wandoujia/appmanager/config/Config;->a(Lcom/wandoujia/appmanager/config/Config$ContentDir;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    :goto_0
    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 503
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 504
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_1

    .line 509
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_1

    .line 515
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 522
    :cond_1
    :goto_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 523
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 524
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 525
    const-string v3, "packagename"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :try_start_3
    const-string v0, "ignore_upgrade"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    .line 497
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 513
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 517
    :catch_2
    move-exception v0

    goto :goto_3

    .line 511
    :catch_3
    move-exception v0

    :goto_5
    if-eqz v2, :cond_1

    .line 515
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    .line 517
    :catch_4
    move-exception v0

    goto :goto_3

    .line 513
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v2, :cond_5

    .line 515
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 517
    :cond_5
    :goto_7
    throw v0

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_7

    .line 533
    :cond_6
    return-void

    .line 513
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    .line 511
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 509
    :catch_8
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 536
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 539
    :try_start_0
    const-string v1, "ignore_upgrade"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 541
    if-eqz v0, :cond_2

    .line 542
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 544
    const-string v1, "packagename"

    invoke-static {v1, v0}, Lcpu;->a(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 546
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 557
    :cond_1
    :goto_2
    iget-object v0, p0, Lcpv;->a:Lcpu;

    invoke-static {v0}, Lcpu;->a(Lcpu;)Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;->a(Ljava/util/List;)V

    .line 558
    return-void

    .line 553
    :cond_2
    if-eqz v0, :cond_1

    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 553
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_3

    .line 554
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 553
    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    .line 551
    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_1
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 405
    const-string v0, "CREATE TABLE IF NOT EXISTS apps (packagename TEXT NOT NULL PRIMARY KEY,title TEXT,title_pinyin_first_char TEXT, size INTEGER,md5 TEXT,versioncode INTEGER,upgrade_info TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 406
    const-string v0, "CREATE TABLE IF NOT EXISTS ignore_upgrade (packagename TEXT NOT NULL PRIMARY KEY)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    const-string v0, "DROP TABLE IF EXISTS apps"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 419
    const-string v0, "DROP TABLE IF EXISTS ignore_upgrade"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 420
    const-string v0, "CREATE TABLE IF NOT EXISTS apps (packagename TEXT NOT NULL PRIMARY KEY,title TEXT,title_pinyin_first_char TEXT, size INTEGER,md5 TEXT,versioncode INTEGER,upgrade_info TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 421
    const-string v0, "CREATE TABLE IF NOT EXISTS ignore_upgrade (packagename TEXT NOT NULL PRIMARY KEY)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-gt v0, p3, :cond_0

    .line 412
    packed-switch v0, :pswitch_data_0

    .line 411
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :pswitch_1
    const-string v1, "CREATE TABLE IF NOT EXISTS ignore_upgrade (packagename TEXT NOT NULL PRIMARY KEY)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "INSERT INTO ignore_upgrade SELECT packagename FROM apps WHERE ignored=1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_2
    const-string v1, "apps_backup"

    const-string v2, "CREATE TABLE IF NOT EXISTS apps (packagename TEXT NOT NULL PRIMARY KEY,title TEXT,size INTEGER,md5 TEXT,versioncode INTEGER)"

    const-string v3, "apps"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "INSERT INTO "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SELECT packagename,title,md5,size,versioncode FROM apps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_3
    const-string v3, "DROP TABLE apps"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INSERT INTO apps SELECT * FROM "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1}, Lcpv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lcpv;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v1, "DROP TABLE IF EXISTS ignore_upgrade"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    :try_start_3
    const-string v1, "ALTER TABLE apps ADD upgrade_info TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :pswitch_4
    const-string v1, "DROP TABLE IF EXISTS apps"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS apps (packagename TEXT NOT NULL PRIMARY KEY,title TEXT,title_pinyin_first_char TEXT, size INTEGER,md5 TEXT,versioncode INTEGER,upgrade_info TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    :try_start_4
    const-string v1, "ALTER TABLE apps ADD title_pinyin_first_char TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_1

    .line 414
    :cond_0
    return-void

    :catch_2
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v1

    goto/16 :goto_2

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
