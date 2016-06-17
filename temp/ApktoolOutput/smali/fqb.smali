.class public abstract Lfqb;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfqb;->a:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfqb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
