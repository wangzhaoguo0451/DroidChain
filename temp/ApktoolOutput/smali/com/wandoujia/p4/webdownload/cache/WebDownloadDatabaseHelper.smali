.class public Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;
.super Lfqc;
.source "WebDownloadDatabaseHelper.java"


# static fields
.field public static AUTHORITY:Ljava/lang/String; = null

.field static final DATABASE_NAME:Ljava/lang/String; = "webdownload.db"

.field private static final DATABASE_PATH:Ljava/lang/String; = null

.field private static final DATABASE_VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "com.wandoujia.webdownload"

    sput-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->AUTHORITY:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgxl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "webdownload.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->DATABASE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->DATABASE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    new-array v2, v2, [Lfqb;

    invoke-direct {p0, p1, v0, v1, v2}, Lfqc;-><init>(Landroid/content/Context;Ljava/io/File;I[Lfqb;)V

    .line 35
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-static {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    const-string v0, "DROP TABLE IF EXISTS Page"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "DROP TABLE IF EXISTS Resource"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const-string v0, "CREATE TABLE IF NOT EXISTS Resource (_id INTEGER NOT NULL PRIMARY KEY,url TEXT NOT NULL,page_id INTEGER NOT NULL,file_name TEXT NOT NULL,future_listener TEXT NOT NULL,regulation_index INTEGER DEFAULT -1, is_media INTEGER DEFAULT 0,media_index INTEGER DEFAULT 0, extra TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v0, "DROP TABLE IF EXISTS Strategy"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v0, "CREATE TABLE IF NOT EXISTS Strategy (_id INTEGER NOT NULL PRIMARY KEY,identity TEXT NOT NULL,file_name TEXT NOT NULL,version TEXT NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALTER TABLE Page ADD COLUMN type INTEGER NOT NULL DEFAULT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/wandoujia/p4/webdownload/WebDownloadType;->MUSIC:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->getTypeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "ALTER TABLE Page ADD COLUMN extra TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "ALTER TABLE Resource ADD COLUMN extra TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method
