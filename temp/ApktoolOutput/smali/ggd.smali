.class public final Lggd;
.super Ljava/lang/Object;
.source "VideoPlayRecordDatabase.java"


# static fields
.field private static c:Lggd;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lggh;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lggd;->a:Ljava/util/Set;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lggd;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 56
    new-instance v0, Lggf;

    invoke-direct {v0, p1}, Lggf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lggd;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 57
    return-void
.end method

.method public static declared-synchronized a()Lggd;
    .locals 3

    .prologue
    .line 65
    const-class v1, Lggd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lggd;->c:Lggd;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lggd;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lggd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lggd;->c:Lggd;

    .line 68
    :cond_0
    sget-object v0, Lggd;->c:Lggd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 94
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 97
    :try_start_0
    iget-object v0, p0, Lggd;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    const-string v1, "play_record"

    const-string v2, "timestamp<?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lgcy;->a()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    const-string v1, "play_record"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 105
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->parse(Landroid/database/Cursor;)Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    move-result-object v1

    .line 107
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_0
    :goto_2
    return-object v10

    .line 112
    :cond_1
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 112
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_2

    .line 113
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 112
    :catchall_1
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_3

    .line 110
    :catch_1
    move-exception v0

    move-object v0, v9

    goto :goto_1
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lggh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-object v2, p0, Lggd;->a:Ljava/util/Set;

    monitor-enter v2

    .line 212
    :try_start_0
    iget-object v0, p0, Lggd;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 214
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lggh;

    .line 216
    if-nez v0, :cond_0

    .line 217
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 219
    :cond_0
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    return-object v1
.end method
