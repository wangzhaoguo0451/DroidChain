.class public final Lehs;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "P2DatabaseHelper.java"


# static fields
.field private static a:Lehs;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    const-string v0, "phoenix2.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lehs;
    .locals 3
    .parameter

    .prologue
    .line 27
    const-class v1, Lehs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lehs;->a:Lehs;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lehs;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lehs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lehs;->a:Lehs;

    .line 30
    :cond_0
    sget-object v0, Lehs;->a:Lehs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    const-string v0, "DROP TABLE IF EXISTS al_app_stat"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    const-string v0, "CREATE TABLE al_app_stat (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_name TEXT NOT NULL,date DATE NOT NULL,duration INTEGER DEFAULT 0,start_count INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    return-void
.end method
