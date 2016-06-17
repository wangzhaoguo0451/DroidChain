.class public Lfqc;
.super Lfqa;
.source "ExternalDatabaseHelper.java"


# static fields
.field private static final EVENT_FLAG:I = 0x18

.field private static final LOG_TAG:Ljava/lang/String; = "ExternalDatabaseHelper"

.field private static final MODE_EXTERNAL_LOWER:I = 0x1

.field private static final MODE_EXTERNAL_NORMAL:I = 0x2

.field private static final MODE_INTERNAL:I


# instance fields
.field private dbFile:Ljava/io/File;

.field private fileRoot:Ljava/io/File;

.field private lockNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private lockingEnabled:Z

.field private mode:I

.field private observer:Landroid/os/FileObserver;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/io/File;IZLandroid/database/DatabaseErrorHandler;[Lfqb;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 70
    new-instance v1, Lfqf;

    invoke-direct {v1, p1, v6}, Lfqf;-><init>(Landroid/content/Context;B)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lfqa;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/database/DatabaseErrorHandler;[Lfqb;)V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lfqc;->lockNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    invoke-direct {p0, p2, p4}, Lfqc;->init(Ljava/io/File;Z)V

    .line 73
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/io/File;I[Lfqb;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 64
    new-instance v0, Lfqf;

    invoke-direct {v0, p1, v2}, Lfqf;-><init>(Landroid/content/Context;B)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3, p4}, Lfqa;-><init>(Landroid/content/Context;Ljava/lang/String;I[Lfqb;)V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lfqc;->lockNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lfqc;->init(Ljava/io/File;Z)V

    .line 66
    return-void
.end method

.method static synthetic access$100(Lfqc;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lfqc;->unlock()V

    return-void
.end method

.method private static checkMode(Ljava/io/File;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 100
    if-nez p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init(Ljava/io/File;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 76
    iput-object p1, p0, Lfqc;->dbFile:Ljava/io/File;

    .line 77
    iput-boolean p2, p0, Lfqc;->lockingEnabled:Z

    .line 78
    invoke-static {p1}, Lfqc;->checkMode(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lfqc;->mode:I

    .line 82
    iget v0, p0, Lfqc;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 83
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    .line 84
    new-instance v0, Lfqe;

    iget-object v1, p0, Lfqc;->fileRoot:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfqe;-><init>(Lfqc;Ljava/lang/String;)V

    iput-object v0, p0, Lfqc;->observer:Landroid/os/FileObserver;

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object v2, p0, Lfqc;->fileRoot:Ljava/io/File;

    .line 95
    iput-object v2, p0, Lfqc;->observer:Landroid/os/FileObserver;

    goto :goto_0
.end method

.method private declared-synchronized lock()V
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfqc;->lockNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static varargs newExternalDatabaseHelper(Landroid/content/Context;Ljava/io/File;I[Lfqb;)Lfqc;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 50
    new-instance v0, Lfqc;

    const/4 v4, 0x1

    new-instance v5, Lfqd;

    invoke-direct {v5, p1}, Lfqd;-><init>(Ljava/io/File;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lfqc;-><init>(Landroid/content/Context;Ljava/io/File;IZLandroid/database/DatabaseErrorHandler;[Lfqb;)V

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lfqc;

    invoke-direct {v0, p0, p1, p2, p3}, Lfqc;-><init>(Landroid/content/Context;Ljava/io/File;I[Lfqb;)V

    goto :goto_0
.end method

.method private declared-synchronized unlock()V
    .locals 2

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfqc;->lockNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iget v1, p0, Lfqc;->mode:I

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lfqc;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfqc;->observer:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lfqc;->observer:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 268
    :cond_0
    const-string v0, "ExternalDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Close DB:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfqc;->dbFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-super {p0}, Lfqa;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Lfqc;->lock()V

    .line 164
    :try_start_0
    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfqc;->dbFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    const-string v1, "Target file not exist."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lfqc;->unlock()V

    throw v0

    .line 167
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lfqc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 169
    invoke-direct {p0}, Lfqc;->unlock()V

    return v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, Lfqc;->lock()V

    .line 253
    :try_start_0
    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfqc;->dbFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    const-string v1, "Target file not exist."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lfqc;->unlock()V

    throw v0

    .line 256
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lfqc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 257
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    invoke-direct {p0}, Lfqc;->unlock()V

    .line 260
    return-void
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Lfqc;->lock()V

    .line 136
    :try_start_0
    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfqc;->dbFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    const-string v1, "Target file not exist."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lfqc;->unlock()V

    throw v0

    .line 140
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lfqc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 142
    invoke-direct {p0}, Lfqc;->unlock()V

    return-wide v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Lfqa;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    iget-boolean v0, p0, Lfqc;->lockingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 116
    iget-object v0, p0, Lfqc;->observer:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lfqc;->observer:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 119
    :cond_0
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lfqc;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Lfqc;->lock()V

    .line 199
    const/4 v10, 0x0

    .line 200
    const/4 v9, 0x0

    .line 202
    :try_start_0
    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfqc;->dbFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    const-string v1, "Target file not exist."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    const-string v1, "get a exception here, please check the warning log before"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    invoke-direct {p0}, Lfqc;->unlock()V

    throw v0

    .line 205
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lfqc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 206
    if-nez v0, :cond_1

    .line 207
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "getReadableDatabase failed, null db"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 209
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_3

    .line 213
    new-instance v1, Lfqg;

    invoke-direct {v1, p0, v0}, Lfqg;-><init>(Lfqc;Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    const/4 v0, 0x1

    .line 221
    :goto_0
    if-nez v0, :cond_2

    .line 222
    invoke-direct {p0}, Lfqc;->unlock()V

    :cond_2
    return-object v1

    :cond_3
    move v0, v9

    move-object v1, v10

    goto :goto_0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Lfqc;->lock()V

    .line 229
    const/4 v1, 0x0

    .line 230
    const/4 v0, 0x0

    .line 232
    :try_start_0
    iget-object v2, p0, Lfqc;->fileRoot:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfqc;->dbFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lfqc;->fileRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    const-string v1, "Target file not exist."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :catchall_0
    move-exception v0

    .line 245
    invoke-direct {p0}, Lfqc;->unlock()V

    throw v0

    .line 235
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lfqc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 236
    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 238
    if-eqz v2, :cond_1

    .line 239
    new-instance v1, Lfqg;

    invoke-direct {v1, p0, v2}, Lfqg;-><init>(Lfqc;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    const/4 v0, 0x1

    .line 244
    :cond_1
    if-nez v0, :cond_2

    .line 245
    invoke-direct {p0}, Lfqc;->unlock()V

    :cond_2
    return-object v1
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Lfqc;->lock()V

    .line 152
    :try_start_0
    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfqc;->dbFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    const-string v1, "Target file not exist."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lfqc;->unlock()V

    throw v0

    .line 155
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lfqc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 157
    invoke-direct {p0}, Lfqc;->unlock()V

    return-wide v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Lfqc;->lock()V

    .line 178
    :try_start_0
    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfqc;->dbFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfqc;->fileRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    const-string v1, "Target file not exist."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lfqc;->unlock()V

    throw v0

    .line 181
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lfqc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 183
    invoke-direct {p0}, Lfqc;->unlock()V

    return v0
.end method
