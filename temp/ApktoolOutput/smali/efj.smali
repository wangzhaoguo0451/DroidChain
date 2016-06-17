.class final Lefj;
.super Landroid/os/AsyncTask;
.source "StartDownloadAppAction.java"


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
.field private synthetic a:Lefe;


# direct methods
.method constructor <init>(Lefe;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lefj;->a:Lefe;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 168
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Lefj;->a:Lefe;

    invoke-static {v1}, Lefe;->a(Lefe;)Leiu;

    move-result-object v1

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Leen;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    check-cast p1, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lehi;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lefj;->a:Lefe;

    invoke-static {v0}, Lefe;->e(Lefe;)V

    goto :goto_0
.end method
