.class public final Lfzk;
.super Lfqb;
.source "MultimediaDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 401
    const-string v0, "music_history"

    invoke-direct {p0, v0}, Lfqb;-><init>(Ljava/lang/String;)V

    .line 402
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 406
    const-string v0, "MultimediaDatabaseHelper"

    const-string v1, " music_history "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, "cover TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, "title TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, "time INTEGER NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v1, "type TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, "id INTEGER NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v1, "pid INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, "song_count INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v1, "extra TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v1, "music_history"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lgdi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "music_history"

    const-string v1, "index_type_and_id"

    const-string v2, ","

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "type"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "id"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lgdi;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 424
    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    if-ne p2, v1, :cond_2

    if-eq p3, v2, :cond_0

    .line 430
    :cond_2
    if-ne p2, v2, :cond_3

    if-ne p3, v3, :cond_3

    .line 431
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    invoke-virtual {p0, p1}, Lfzk;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 434
    :cond_3
    if-ne p2, v3, :cond_4

    if-eq p3, v4, :cond_0

    .line 437
    :cond_4
    if-ne p2, v4, :cond_5

    const/4 v1, 0x6

    if-eq p3, v1, :cond_0

    .line 440
    :cond_5
    const/4 v1, 0x6

    if-ne p2, v1, :cond_6

    const/4 v1, 0x7

    if-eq p3, v1, :cond_0

    .line 443
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lfqb;->a(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 448
    const/4 v1, 0x7

    if-ne p2, v1, :cond_1

    const/4 v1, 0x6

    if-ne p3, v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    if-eq p3, v5, :cond_0

    .line 454
    :cond_2
    if-ne p2, v5, :cond_3

    if-eq p3, v4, :cond_0

    .line 457
    :cond_3
    if-ne p2, v4, :cond_4

    if-eq p3, v3, :cond_0

    .line 461
    :cond_4
    if-ne p2, v3, :cond_5

    if-eq p3, v2, :cond_0

    .line 464
    :cond_5
    if-ne p2, v2, :cond_6

    if-eq p3, v0, :cond_0

    .line 467
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lfqb;->b(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    goto :goto_0
.end method
