.class public final Lemv;
.super Ljava/lang/Object;
.source "LogDatabaseHelper.java"


# instance fields
.field a:Lems;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lems;

    invoke-direct {v0, p1, p2}, Lems;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lemv;->a:Lems;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 3
    .parameter

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lemv;->a:Lems;

    invoke-virtual {v0}, Lems;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM log_data WHERE _id IN ( SELECT _id FROM log_data ORDER BY _id LIMIT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
