.class public final Lfzi;
.super Lfqb;
.source "MultimediaDatabaseHelper.java"

# interfaces
.implements Lgkn;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 726
    const-string v0, "local_video_album"

    invoke-direct {p0, v0}, Lfqb;-><init>(Ljava/lang/String;)V

    .line 727
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 731
    const-string v0, "MultimediaDatabaseHelper"

    const-string v1, " local_video_album "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    const-string v1, "video_id INTEGER PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    const-string v1, "video_meta_model TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    const-string v1, "is_downloaded TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v1, "is_read TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    const-string v1, "size INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    const-string v1, "created_time INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const-string v1, "played_time INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const-string v1, "last_modify_time INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v1, "local_video_album"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lgdi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
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

    .line 746
    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    .line 764
    :cond_0
    :goto_0
    return v0

    .line 749
    :cond_1
    if-ne p2, v1, :cond_2

    if-eq p3, v2, :cond_0

    .line 752
    :cond_2
    if-ne p2, v2, :cond_3

    if-eq p3, v3, :cond_0

    .line 755
    :cond_3
    if-ne p2, v3, :cond_4

    if-eq p3, v4, :cond_0

    .line 758
    :cond_4
    if-ne p2, v4, :cond_5

    const/4 v1, 0x6

    if-eq p3, v1, :cond_0

    .line 761
    :cond_5
    const/4 v0, 0x6

    if-ne p2, v0, :cond_6

    const/4 v0, 0x7

    if-ne p3, v0, :cond_6

    .line 762
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    invoke-virtual {p0, p1}, Lfzi;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 764
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

    .line 769
    const/4 v1, 0x7

    if-ne p2, v1, :cond_1

    const/4 v1, 0x6

    if-ne p3, v1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v0

    .line 772
    :cond_1
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    if-eq p3, v5, :cond_0

    .line 775
    :cond_2
    if-ne p2, v5, :cond_3

    if-eq p3, v4, :cond_0

    .line 778
    :cond_3
    if-ne p2, v4, :cond_4

    if-eq p3, v3, :cond_0

    .line 781
    :cond_4
    if-ne p2, v3, :cond_5

    if-eq p3, v2, :cond_0

    .line 784
    :cond_5
    if-ne p2, v2, :cond_6

    if-eq p3, v0, :cond_0

    .line 787
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lfqb;->b(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    goto :goto_0
.end method
