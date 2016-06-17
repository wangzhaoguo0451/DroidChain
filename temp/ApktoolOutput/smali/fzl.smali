.class public final Lfzl;
.super Lfqb;
.source "MultimediaDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 571
    const-string v0, "music_web_cache"

    invoke-direct {p0, v0}, Lfqb;-><init>(Ljava/lang/String;)V

    .line 572
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 576
    const-string v0, "MultimediaDatabaseHelper"

    const-string v1, " music_web_cache "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    const-string v1, "song_id INTEGER PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, "web_url TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, "FOREIGN KEY(song_id) REFERENCES song(song_id) ON DELETE CASCADE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v1, "music_web_cache"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lgdi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
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

    .line 595
    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 598
    :cond_1
    if-ne p2, v1, :cond_2

    if-eq p3, v2, :cond_0

    .line 601
    :cond_2
    if-ne p2, v2, :cond_3

    if-eq p3, v3, :cond_0

    .line 604
    :cond_3
    if-ne p2, v3, :cond_4

    if-eq p3, v4, :cond_0

    .line 607
    :cond_4
    if-ne p2, v4, :cond_5

    const/4 v1, 0x6

    if-ne p3, v1, :cond_5

    .line 608
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    invoke-virtual {p0, p1}, Lfzl;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 611
    :cond_5
    const/4 v1, 0x6

    if-ne p2, v1, :cond_6

    const/4 v1, 0x7

    if-eq p3, v1, :cond_0

    .line 614
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

    .line 619
    const/4 v1, 0x7

    if-ne p2, v1, :cond_1

    const/4 v1, 0x6

    if-ne p3, v1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v0

    .line 622
    :cond_1
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    if-eq p3, v5, :cond_0

    .line 625
    :cond_2
    if-ne p2, v5, :cond_3

    if-eq p3, v4, :cond_0

    .line 628
    :cond_3
    if-ne p2, v4, :cond_4

    if-eq p3, v3, :cond_0

    .line 631
    :cond_4
    if-ne p2, v3, :cond_5

    if-eq p3, v2, :cond_0

    .line 634
    :cond_5
    if-ne p2, v2, :cond_6

    if-eq p3, v0, :cond_0

    .line 637
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lfqb;->b(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    goto :goto_0
.end method
