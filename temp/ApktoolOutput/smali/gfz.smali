.class public final Lgfz;
.super Ljava/lang/Object;
.source "VideoDefaultSourceDatabase.java"


# static fields
.field private static b:Lgfz;


# instance fields
.field public a:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lggc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgfz;->c:Ljava/util/Set;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lgfz;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 40
    new-instance v0, Lggb;

    invoke-direct {v0, p1}, Lggb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgfz;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 41
    return-void
.end method

.method public static declared-synchronized a()Lgfz;
    .locals 3

    .prologue
    .line 49
    const-class v1, Lgfz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgfz;->b:Lgfz;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lgfz;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lgfz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgfz;->b:Lgfz;

    .line 52
    :cond_0
    sget-object v0, Lgfz;->b:Lgfz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(J)Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 80
    .line 82
    :try_start_0
    iget-object v0, p0, Lgfz;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    const-string v3, "video_id=?"

    .line 84
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 85
    const-string v1, "video_default_selected_source"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-static {v1}, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->parse(Landroid/database/Cursor;)Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    if-eqz v1, :cond_2

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v8

    .line 96
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_2
    if-eqz v0, :cond_2

    .line 93
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_3

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 92
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    .line 90
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public final a(Lggc;)V
    .locals 3
    .parameter

    .prologue
    .line 127
    iget-object v1, p0, Lgfz;->c:Ljava/util/Set;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lgfz;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 129
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    monitor-exit v1

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lgfz;->c:Ljava/util/Set;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lggc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v2, p0, Lgfz;->c:Ljava/util/Set;

    monitor-enter v2

    .line 182
    :try_start_0
    iget-object v0, p0, Lgfz;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 184
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lggc;

    .line 186
    if-nez v0, :cond_0

    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 189
    :cond_0
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    return-object v1
.end method
