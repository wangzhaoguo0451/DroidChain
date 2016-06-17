.class public Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;
.super Ljava/lang/Object;
.source "WebDownloadDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field static final COLUMN_FILE_NAME:Ljava/lang/String; = "file_name"

.field static final COLUMN_IDENTITY:Ljava/lang/String; = "identity"

.field static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item.strategy"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SELECTIONS:[Ljava/lang/String; = null

.field private static final SQL_CREATE_STATEMENT:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS Strategy (_id INTEGER NOT NULL PRIMARY KEY,identity TEXT NOT NULL,file_name TEXT NOT NULL,version TEXT NOT NULL)"

.field public static final TABLE_NAME:Ljava/lang/String; = "Strategy"


# instance fields
.field public fileName:Ljava/lang/String;

.field public id:J

.field public identity:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Strategy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->CONTENT_URI:Landroid/net/Uri;

    .line 388
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "identity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "file_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->DEFAULT_SELECTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-wide p1, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->id:J

    .line 398
    iput-object p3, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->identity:Ljava/lang/String;

    .line 399
    iput-object p4, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->fileName:Ljava/lang/String;

    .line 400
    iput-object p5, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->version:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->id:J

    .line 405
    const-string v0, "identity"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->identity:Ljava/lang/String;

    .line 406
    const-string v0, "file_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->fileName:Ljava/lang/String;

    .line 407
    const-string v0, "version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->version:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public static generateContentValues(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 419
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 420
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string v1, "identity"

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v1, "file_name"

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v1, "version"

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-object v0
.end method

.method public static generateContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 412
    const-string v1, "identity"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v1, "file_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v1, "version"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-object v0
.end method
