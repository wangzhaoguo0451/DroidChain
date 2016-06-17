.class public final Lfzm;
.super Lfqb;
.source "MultimediaDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 486
    const-string v0, "playlist"

    invoke-direct {p0, v0}, Lfqb;-><init>(Ljava/lang/String;)V

    .line 487
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    const-string v1, "playlist_id INTEGER PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string v1, "title TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v1, "description TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string v1, "recommend TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v1, "providers TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, "cover TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, "subscribe_url TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v1, "updated_date INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v1, "state INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v1, "playlist"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lgdi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 506
    if-ne p2, v8, :cond_0

    if-ne p3, v0, :cond_0

    move v0, v8

    .line 536
    :goto_0
    return v0

    .line 509
    :cond_0
    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    move v0, v8

    .line 510
    goto :goto_0

    .line 512
    :cond_1
    if-ne p2, v1, :cond_2

    if-ne p3, v2, :cond_2

    .line 513
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    invoke-virtual {p0, p1}, Lfzm;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v8

    .line 514
    goto :goto_0

    .line 516
    :cond_2
    if-ne p2, v2, :cond_6

    const/4 v0, 0x5

    if-ne p3, v0, :cond_6

    .line 519
    :try_start_0
    const-string v1, "playlist"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 520
    :try_start_1
    const-string v0, "recommend"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 521
    const-string v0, "ALTER TABLE playlist ADD recommend TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 523
    :cond_3
    if-eqz v1, :cond_4

    .line 526
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_1
    if-eqz v1, :cond_5

    .line 526
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 530
    :cond_6
    const/4 v0, 0x5

    if-ne p2, v0, :cond_7

    const/4 v0, 0x6

    if-ne p3, v0, :cond_7

    move v0, v8

    .line 531
    goto :goto_0

    .line 533
    :cond_7
    const/4 v0, 0x6

    if-ne p2, v0, :cond_8

    const/4 v0, 0x7

    if-ne p3, v0, :cond_8

    move v0, v8

    .line 534
    goto :goto_0

    .line 536
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lfqb;->a(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    goto :goto_0

    .line 525
    :catchall_1
    move-exception v0

    goto :goto_1
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

    .line 541
    const/4 v1, 0x7

    if-ne p2, v1, :cond_1

    const/4 v1, 0x6

    if-ne p3, v1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v0

    .line 544
    :cond_1
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    if-eq p3, v5, :cond_0

    .line 547
    :cond_2
    if-ne p2, v5, :cond_3

    if-eq p3, v4, :cond_0

    .line 551
    :cond_3
    if-ne p2, v4, :cond_4

    if-eq p3, v3, :cond_0

    .line 555
    :cond_4
    if-ne p2, v3, :cond_5

    if-eq p3, v2, :cond_0

    .line 558
    :cond_5
    if-ne p2, v2, :cond_6

    if-eq p3, v0, :cond_0

    .line 561
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lfqb;->b(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    goto :goto_0
.end method
