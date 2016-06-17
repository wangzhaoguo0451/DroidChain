.class public final Lcsb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GarbageDatabaseHelper.java"


# static fields
.field private static a:Lcsb;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    const-string v0, "storage_garbage.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    return-void
.end method

.method public static declared-synchronized a()Lcsb;
    .locals 3

    .prologue
    .line 25
    const-class v1, Lcsb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcsb;->a:Lcsb;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcsb;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcsb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcsb;->a:Lcsb;

    .line 28
    :cond_0
    sget-object v0, Lcsb;->a:Lcsb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    const-string v0, "DROP TABLE IF EXISTS garbage_bean"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE TABLE garbage_bean (id INTEGER PRIMARY KEY,alertInfo TEXT,appName TEXT,desc TEXT,latestModification LONG,pathMd5 TEXT,pathType INTEGER NOT NULL DEFAULT 0,pkgNameMd5 TEXT,simpleAlertInfo TEXT,subPathLevel INTEGER NOT NULL DEFAULT 0,flag INTEGER NOT NULL DEFAULT 0,subPath TEXT,contentType INTEGER,regPkgName TEXT,rootPathMd5 TEXT,title TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "CREATE INDEX IF NOT EXISTS path_type_index ON garbage_bean(pathType)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    const-string v0, "CREATE INDEX IF NOT EXISTS path_md5_index ON garbage_bean(pathMd5)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v0, "CREATE INDEX IF NOT EXISTS pkg_md5_index ON garbage_bean(pkgNameMd5)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string v0, "DROP TABLE IF EXISTS content_type"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    const-string v0, "CREATE TABLE content_type (id INTEGER PRIMARY KEY,labelId INTEGER NOT NULL DEFAULT 0,title TEXT,desc TEXT,alertInfo TEXT,adviceLevel INTEGER NOT NULL DEFAULT 0,orderType INTEGER NOT NULL DEFAULT 0,rank INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string v0, "DROP TABLE IF EXISTS content_type"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v0, "CREATE TABLE label (id INTEGER PRIMARY KEY,name TEXT,orderType INTEGER NOT NULL DEFAULT 0,rank INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    const-string v0, "DROP TABLE IF EXISTS white_list"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "CREATE TABLE white_list (type INTEGER,filePath TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-static {p1}, Lcsb;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 34
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p1}, Lcsb;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 39
    invoke-static {p1}, Lcsb;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    :cond_0
    return-void

    .line 42
    :cond_1
    :goto_0
    if-ge p2, p3, :cond_0

    .line 43
    add-int/lit8 p2, p2, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "ALTER TABLE garbage_bean ADD COLUMN flag INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE white_list (type INTEGER,filePath TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "DROP TABLE IF EXISTS white_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE white_list (type INTEGER,filePath TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
