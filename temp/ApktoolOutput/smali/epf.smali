.class final Lepf;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lepb;


# direct methods
.method constructor <init>(Lepb;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lepf;->b:Lepb;

    iput-object p2, p0, Lepf;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 162
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lepf;->a:Ljava/lang/String;

    invoke-static {v1}, Ld;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 164
    iget-object v0, p0, Lepf;->b:Lepb;

    iget-object v0, v0, Lepb;->c:Leqp;

    iget-object v1, p0, Lepf;->a:Ljava/lang/String;

    iget-object v0, v0, Leqp;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "infos"

    const-string v3, "path = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 165
    return-void
.end method
