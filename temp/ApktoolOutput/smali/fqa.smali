.class public Lfqa;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "P2DatabaseHelper"


# instance fields
.field private final builders:[Lfqb;

.field private final context:Landroid/content/Context;

.field private final dbVersion:I


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/database/DatabaseErrorHandler;[Lfqb;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 76
    iput-object p1, p0, Lfqa;->context:Landroid/content/Context;

    .line 78
    iput p3, p0, Lfqa;->dbVersion:I

    .line 79
    iput-object p5, p0, Lfqa;->builders:[Lfqb;

    .line 80
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;I[Lfqb;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 67
    iput-object p1, p0, Lfqa;->context:Landroid/content/Context;

    .line 69
    iput p3, p0, Lfqa;->dbVersion:I

    .line 70
    iput-object p4, p0, Lfqa;->builders:[Lfqb;

    .line 71
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lfqa;->builders:[Lfqb;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lfqa;->builders:[Lfqb;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 88
    invoke-virtual {v3, p1}, Lfqb;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    .line 134
    iget v0, p0, Lfqa;->dbVersion:I

    if-le p2, v0, :cond_4

    .line 135
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 139
    :try_start_0
    iget-object v5, p0, Lfqa;->builders:[Lfqb;

    array-length v6, v5

    move v4, v2

    move v3, v1

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v5, v4

    .line 140
    add-int/lit8 v0, p2, -0x1

    move v8, v0

    move v0, v3

    move v3, v8

    :goto_1
    if-lt v3, p3, :cond_1

    .line 141
    if-eqz v0, :cond_0

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v7, p1, v0, v3}, Lfqb;->b(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 140
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 141
    goto :goto_2

    .line 139
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 144
    :cond_2
    if-eqz v3, :cond_3

    .line 145
    iget p2, p0, Lfqa;->dbVersion:I

    .line 147
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 156
    :cond_4
    :goto_3
    iget v0, p0, Lfqa;->dbVersion:I

    if-eq p2, v0, :cond_6

    iget-object v0, p0, Lfqa;->builders:[Lfqb;

    if-eqz v0, :cond_6

    .line 157
    const-string v0, "P2DatabaseHelper"

    const-string v1, "Destroying all old data."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lfqa;->builders:[Lfqb;

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 159
    invoke-virtual {v3, p1}, Lfqb;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 148
    :catch_0
    move-exception v0

    .line 150
    :try_start_1
    const-string v1, "P2DatabaseHelper"

    const-string v3, "Update DB failed."

    invoke-static {v1, v3, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 161
    :cond_5
    invoke-virtual {p0, p1}, Lfqa;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    :cond_6
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    .line 96
    iget v0, p0, Lfqa;->dbVersion:I

    if-ge p2, v0, :cond_4

    .line 97
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 101
    :try_start_0
    iget-object v5, p0, Lfqa;->builders:[Lfqb;

    array-length v6, v5

    move v4, v2

    move v3, v1

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v5, v4

    .line 103
    add-int/lit8 v0, p2, 0x1

    move v8, v0

    move v0, v3

    move v3, v8

    :goto_1
    if-gt v3, p3, :cond_1

    .line 104
    if-eqz v0, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v7, p1, v0, v3}, Lfqb;->a(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 103
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 104
    goto :goto_2

    .line 101
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 107
    :cond_2
    if-eqz v3, :cond_3

    .line 108
    iget p2, p0, Lfqa;->dbVersion:I

    .line 110
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    :cond_4
    :goto_3
    iget v0, p0, Lfqa;->dbVersion:I

    if-eq p2, v0, :cond_6

    iget-object v0, p0, Lfqa;->builders:[Lfqb;

    if-eqz v0, :cond_6

    .line 122
    const-string v0, "P2DatabaseHelper"

    const-string v1, "Destroying all old data."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lfqa;->builders:[Lfqb;

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 124
    invoke-virtual {v3, p1}, Lfqb;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 111
    :catch_0
    move-exception v0

    .line 113
    :try_start_1
    const-string v1, "P2DatabaseHelper"

    const-string v3, "Update DB failed."

    invoke-static {v1, v3, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 114
    :catch_1
    move-exception v0

    .line 115
    :try_start_2
    const-string v1, "P2DatabaseHelper"

    const-string v3, "Update DB failed."

    invoke-static {v1, v3, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 126
    :cond_5
    invoke-virtual {p0, p1}, Lfqa;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    :cond_6
    return-void
.end method
