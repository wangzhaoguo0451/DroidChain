.class public Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;
.super Ljava/lang/Object;
.source "WebDownloadDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field static final COLUMN_EXTRA:Ljava/lang/String; = "extra"

.field static final COLUMN_FILE_NAME:Ljava/lang/String; = "file_name"

.field static final COLUMN_FUTURE_LISTENER_NAME:Ljava/lang/String; = "future_listener"

.field static final COLUMN_IS_MEDIA:Ljava/lang/String; = "is_media"

.field static final COLUMN_MEDIA_INDEX:Ljava/lang/String; = "media_index"

.field static final COLUMN_PAGE_ID:Ljava/lang/String; = "page_id"

.field static final COLUMN_REGULATION_INDEX:Ljava/lang/String; = "regulation_index"

.field static final COLUMN_URL:Ljava/lang/String; = "url"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item.resource"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SELECTIONS:[Ljava/lang/String; = null

.field private static final SQL_CREATE_STATEMENT:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS Resource (_id INTEGER NOT NULL PRIMARY KEY,url TEXT NOT NULL,page_id INTEGER NOT NULL,file_name TEXT NOT NULL,future_listener TEXT NOT NULL,regulation_index INTEGER DEFAULT -1, is_media INTEGER DEFAULT 0,media_index INTEGER DEFAULT 0, extra TEXT)"

.field public static final TABLE_NAME:Ljava/lang/String; = "Resource"


# instance fields
.field public extra:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public futureListenerName:Ljava/lang/String;

.field public id:J

.field public isMedia:Z

.field public mediaIndex:I

.field public pageId:J

.field public strategyIndex:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Resource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 266
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "page_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "file_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "future_listener"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "regulation_index"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_media"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "media_index"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "extra"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->DEFAULT_SELECTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->id:J

    .line 282
    const-string v0, "page_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->pageId:J

    .line 283
    const-string v0, "url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->url:Ljava/lang/String;

    .line 284
    const-string v0, "file_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->fileName:Ljava/lang/String;

    .line 285
    const-string v0, "future_listener"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->futureListenerName:Ljava/lang/String;

    .line 286
    const-string v0, "regulation_index"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->strategyIndex:I

    .line 287
    const-string v0, "is_media"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->isMedia:Z

    .line 288
    const-string v0, "media_index"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->mediaIndex:I

    .line 289
    const-string v0, "extra"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->extra:Ljava/lang/String;

    .line 290
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateContentValues(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;)Landroid/content/ContentValues;
    .locals 6
    .parameter

    .prologue
    .line 309
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 310
    iget-wide v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->id:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 311
    const-string v0, "_id"

    iget-wide v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    :cond_0
    const-string v0, "url"

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->url:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "page_id"

    iget-wide v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->pageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 315
    const-string v0, "file_name"

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "future_listener"

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->futureListenerName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "regulation_index"

    iget v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->strategyIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v2, "is_media"

    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->isMedia:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string v0, "media_index"

    iget v2, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->mediaIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v2, "extra"

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->extra:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-object v1

    .line 318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->extra:Ljava/lang/String;

    goto :goto_1
.end method

.method public static generateContentValues(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;ILjava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 295
    const-string v0, "url"

    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "page_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    const-string v0, "file_name"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "future_listener"

    invoke-virtual {v1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "regulation_index"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    if-eqz p6, :cond_0

    .line 301
    const-string v2, "is_media"

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    :cond_0
    const-string v0, "media_index"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v0, "extra"

    if-nez p8, :cond_1

    const-string p8, ""

    :cond_1
    invoke-virtual {v1, v0, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-object v1

    .line 301
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 359
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

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public available(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 332
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 335
    :goto_0
    iget-boolean v4, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->isMedia:Z

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".download"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    move v0, v1

    .line 339
    :cond_0
    return v0

    :cond_1
    move v0, v2

    .line 332
    goto :goto_0

    :cond_2
    move v1, v2

    .line 337
    goto :goto_1
.end method

.method public getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
