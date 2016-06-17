.class public Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;
.super Ljava/lang/Object;
.source "WebDownloadDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field private static final COLUMN_DIR:Ljava/lang/String; = "dir"

.field static final COLUMN_DOWNLOADING:Ljava/lang/String; = "downloading"

.field private static final COLUMN_EXTRA:Ljava/lang/String; = "extra"

.field static final COLUMN_PAGE_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMN_STRATEGY_IDENTITY:Ljava/lang/String; = "strategy_identity"

.field private static final COLUMN_STRATEGY_VERSION:Ljava/lang/String; = "strategy_version"

.field static final COLUMN_URL:Ljava/lang/String; = "url"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item.page"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SELECTIONS:[Ljava/lang/String; = null

.field static final DOWNLOADED_VALUE:I = 0x0

.field static final DOWNLOADING_VALUE:I = 0x1

.field private static final SQL_CREATE_STATEMENT:Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "Page"


# instance fields
.field public dir:Ljava/lang/String;

.field public dynamicStrategy:Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;

.field public extra:Ljava/lang/String;

.field public id:J

.field public isDownloading:Z

.field public resourceColumnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;",
            ">;"
        }
    .end annotation
.end field

.field public strategyColumn:Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;

.field public strategyIdentity:Ljava/lang/String;

.field public strategyVersion:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS Page (_id INTEGER NOT NULL PRIMARY KEY,url TEXT NOT NULL,strategy_identity TEXT NOT NULL, strategy_version TEXT NOT NULL, downloading INTEGER NOT NULL DEFAULT 1, dir TEXT NOT NULL, type INTEGER NOT NULL DEFAULT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/wandoujia/p4/webdownload/WebDownloadType;->MUSIC:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->getTypeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra TEXT)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->SQL_CREATE_STATEMENT:Ljava/lang/String;

    .line 125
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dir"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "strategy_identity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "strategy_version"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "downloading"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "extra"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->DEFAULT_SELECTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    .line 147
    const-string v1, "url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->url:Ljava/lang/String;

    .line 148
    const-string v1, "dir"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    .line 149
    const-string v1, "strategy_identity"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->strategyIdentity:Ljava/lang/String;

    .line 150
    const-string v1, "strategy_version"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->strategyVersion:Ljava/lang/String;

    .line 151
    const-string v1, "downloading"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->isDownloading:Z

    .line 152
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->type:I

    .line 153
    const-string v0, "extra"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->extra:Ljava/lang/String;

    .line 154
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->SQL_CREATE_STATEMENT:Ljava/lang/String;

    return-object v0
.end method

.method public static generateContentValues(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;)Landroid/content/ContentValues;
    .locals 6
    .parameter

    .prologue
    .line 171
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 172
    iget-wide v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 173
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    :cond_0
    const-string v1, "url"

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "strategy_version"

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->strategyVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "strategy_identity"

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->strategyIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "dir"

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "downloading"

    iget-boolean v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->isDownloading:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    const-string v1, "type"

    iget v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v1, "extra"

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v0
.end method

.method public static generateContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/wandoujia/p4/webdownload/WebDownloadType;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 160
    const-string v0, "url"

    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "strategy_version"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "strategy_identity"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "dir"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v2, "downloading"

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v0, "type"

    invoke-virtual {p5}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->getTypeIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v0, "extra"

    invoke-virtual {v1, v0, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-object v1

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 211
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgxl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->getDirNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDirNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Liif;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #calls: Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public available()Z
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->getCacheFile()Ljava/io/File;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
