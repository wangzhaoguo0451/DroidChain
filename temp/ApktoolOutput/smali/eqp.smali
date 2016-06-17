.class public final Leqp;
.super Ljava/lang/Object;
.source "DBOperator.java"


# static fields
.field private static b:Leqp;


# instance fields
.field public a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Leqo;

    invoke-direct {v0, p1}, Leqo;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0}, Leqo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Leqp;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Leqp;
    .locals 2
    .parameter

    .prologue
    .line 20
    const-class v1, Leqp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Leqp;->b:Leqp;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Leqp;

    invoke-direct {v0, p0}, Leqp;-><init>(Landroid/content/Context;)V

    sput-object v0, Leqp;->b:Leqp;

    .line 23
    :cond_0
    sget-object v0, Leqp;->b:Leqp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Leqq;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Leqp;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT * FROM infos WHERE path = ? AND url = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 69
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Leqq;

    invoke-direct {v0}, Leqq;-><init>()V

    .line 71
    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Leqq;->a:J

    .line 72
    const-string v2, "received"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Leqq;->b:J

    .line 73
    const-string v2, "content_length"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Leqq;->c:J

    .line 74
    const-string v2, "url"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Leqq;->d:Ljava/lang/String;

    .line 75
    const-string v2, "path"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Leqq;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 81
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 81
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 6
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Leqp;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "infos"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    return-void
.end method
