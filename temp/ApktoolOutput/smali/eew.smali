.class final Leew;
.super Landroid/os/AsyncTask;
.source "DownloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/launcher_base/download/DownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Leey;


# direct methods
.method constructor <init>(Ljava/lang/String;Leey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Leew;->a:Ljava/lang/String;

    iput-object p2, p0, Leew;->b:Leey;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lcom/wandoujia/launcher_base/download/DownloadInfo;
    .locals 3

    .prologue
    .line 237
    invoke-static {}, Leeu;->a()V

    .line 238
    invoke-static {}, Leeu;->c()[B

    move-result-object v1

    monitor-enter v1

    .line 239
    :try_start_0
    invoke-static {}, Leeu;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Leew;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    monitor-exit v1

    return-object v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Leew;->a()Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 234
    check-cast p1, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    iget-object v0, p0, Leew;->b:Leey;

    invoke-interface {v0, p1}, Leey;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    return-void
.end method
