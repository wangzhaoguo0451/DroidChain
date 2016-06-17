.class public final Laam;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DeviceContentProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    const-string v0, "device.db"

    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const-string v0, "CREATE TABLE devices(_idINTEGER PRIMARY KEY,AH1TEXT,AH2TEXT,AH3TEXT,AH4TEXT,AH5TEXT,AH6TEXT,AH7TEXT,AH8TEXT,AH9TEXT,AH10TEXT,AS1TEXT,AS2TEXT,AS3TEXT,AS4TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    const-string v0, "DROP TABLE IF EXISTSdevices"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Laam;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 60
    return-void
.end method
