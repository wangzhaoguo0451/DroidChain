.class final Leff;
.super Landroid/os/AsyncTask;
.source "StartDownloadAppAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
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
    .line 60
    iput-object p1, p0, Leff;->a:Lefe;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 60
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Leff;->a:Lefe;

    invoke-static {v1}, Lefe;->a(Lefe;)Leiu;

    move-result-object v1

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Leen;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/base/utils/PackageUtils;->getApkPakcageInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/base/utils/PackageUtils$ApkPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/wandoujia/base/utils/PackageUtils$ApkPackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/wandoujia/base/utils/PackageUtils$ApkPackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Leff;->a:Lefe;

    invoke-static {v2}, Lefe;->a(Lefe;)Leiu;

    move-result-object v2

    invoke-interface {v2}, Leiu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leff;->a:Lefe;

    invoke-static {v2}, Lefe;->a(Lefe;)Leiu;

    move-result-object v2

    invoke-interface {v2}, Leiu;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Leff;->a:Lefe;

    invoke-static {v0}, Lefe;->a(Lefe;)Leiu;

    move-result-object v0

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lehr;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Leff;->a:Lefe;

    invoke-static {v0}, Lefe;->b(Lefe;)V

    goto :goto_0
.end method
