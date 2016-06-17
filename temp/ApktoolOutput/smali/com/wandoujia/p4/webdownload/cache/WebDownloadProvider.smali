.class public Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;
.super Landroid/content/ContentProvider;
.source "WebDownloadProvider.java"


# static fields
.field private static a:Landroid/content/UriMatcher;

.field private static b:Z


# instance fields
.field private c:Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 295
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    const-class v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->AUTHORITY:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v1

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 300
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$StrategyColumn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 305
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->c:Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;

    invoke-virtual {v0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 180
    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 182
    packed-switch v1, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot delete that URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_0
    const-string v1, "Page"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 186
    if-lez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a()V

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 191
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lgxm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    const-string v2, "Page"

    invoke-virtual {v0, v2, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 195
    if-lez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a()V

    goto :goto_0

    .line 200
    :pswitch_2
    const-string v1, "Resource"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 203
    if-lez v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->b()V

    goto :goto_0

    .line 208
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lgxm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v2, "Resource"

    invoke-virtual {v0, v2, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 213
    if-lez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->b()V

    goto :goto_0

    .line 218
    :pswitch_4
    const-string v1, "Strategy"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 221
    if-lez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->c()V

    goto :goto_0

    .line 226
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lgxm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    const-string v2, "Strategy"

    invoke-virtual {v0, v2, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 231
    if-lez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->c()V

    goto/16 :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 123
    sget-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 124
    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_0
    const-string v0, "vnd.pmp.cursor.dir/pages"

    .line 136
    :goto_0
    return-object v0

    .line 128
    :pswitch_1
    const-string v0, "vnd.pmp.cursor.item/page"

    goto :goto_0

    .line 130
    :pswitch_2
    const-string v0, "vnd.pmp.cursor.dir/resources"

    goto :goto_0

    .line 132
    :pswitch_3
    const-string v0, "vnd.pmp.cursor.item/resource"

    goto :goto_0

    .line 134
    :pswitch_4
    const-string v0, "vnd.pmp.cursor.dir/strategies"

    goto :goto_0

    .line 136
    :pswitch_5
    const-string v0, "vnd.pmp.cursor.item/strategy"

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->c:Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 145
    sget-object v2, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 146
    packed-switch v2, :pswitch_data_0

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    const-string v2, "Page"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 150
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a()V

    .line 152
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_1
    const-string v2, "Resource"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 159
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->b()V

    .line 161
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 166
    :pswitch_2
    const-string v2, "Strategy"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 168
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->c()V

    .line 170
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 49
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->b:Z

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call init method in a class initializer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    new-instance v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;

    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->c:Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;

    .line 55
    sget-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 57
    sput-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->AUTHORITY:Ljava/lang/String;

    const-string v2, "Page"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->AUTHORITY:Ljava/lang/String;

    const-string v2, "Page/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->AUTHORITY:Ljava/lang/String;

    const-string v2, "Resource"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    sget-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->AUTHORITY:Ljava/lang/String;

    const-string v2, "Resource/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->AUTHORITY:Ljava/lang/String;

    const-string v2, "Strategy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->AUTHORITY:Ljava/lang/String;

    const-string v2, "Strategy/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    :cond_1
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 83
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 84
    sget-object v1, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 85
    packed-switch v1, :pswitch_data_0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->c:Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    move-object v8, v5

    .line 116
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 118
    return-object v0

    .line 87
    :pswitch_0
    const-string v1, "Page"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_1
    const-string v1, "Page"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 91
    const-string v1, "Page._id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :pswitch_2
    const-string v1, "Resource"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_3
    const-string v1, "Resource"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 100
    const-string v1, "Resource._id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :pswitch_4
    const-string v1, "Strategy"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_5
    const-string v1, "Strategy"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 109
    const-string v1, "Strategy._id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->c:Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;

    invoke-virtual {v0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 245
    sget-object v0, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 246
    packed-switch v0, :pswitch_data_0

    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot update URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :pswitch_0
    const-string v0, "Page"

    .line 278
    :goto_0
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 279
    if-lez v1, :cond_0

    .line 280
    const-string v2, "Page"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->a()V

    .line 289
    :cond_0
    :goto_1
    return v1

    .line 252
    :pswitch_1
    const-string v0, "Page"

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lgxm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 257
    :pswitch_2
    const-string v0, "Resource"

    goto :goto_0

    .line 261
    :pswitch_3
    const-string v0, "Resource"

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lgxm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 266
    :pswitch_4
    const-string v0, "Strategy"

    goto :goto_0

    .line 270
    :pswitch_5
    const-string v0, "Strategy"

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lgxm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 282
    :cond_1
    const-string v2, "Resource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->b()V

    goto :goto_1

    .line 284
    :cond_2
    const-string v2, "Strategy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;->c()V

    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
