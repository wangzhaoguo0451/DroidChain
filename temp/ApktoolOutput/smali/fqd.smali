.class final Lfqd;
.super Ljava/lang/Object;
.source "ExternalDatabaseHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field private synthetic a:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lfqd;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lfqd;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 55
    return-void
.end method
