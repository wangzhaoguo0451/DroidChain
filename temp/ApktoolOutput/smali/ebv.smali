.class public final Lebv;
.super Landroid/os/AsyncTask;
.source "GameFolderUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/entities/app/AppLiteInfo;

.field private synthetic b:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

.field private synthetic c:Z

.field private synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/app/AppLiteInfo;Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lebv;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    iput-object p2, p0, Lebv;->b:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lebv;->c:Z

    iput-object p3, p0, Lebv;->d:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v3, p0, Lebv;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v3}, Lcom/wandoujia/entities/app/AppLiteInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Leen;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v3, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->FAILED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lebv;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteSize()I

    move-result v0

    int-to-long v4, v0

    invoke-static {}, Lcom/wandoujia/launcher/Config;->a()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/wandoujia/launcher_base/download/DownloadRequest;->a()Leer;

    move-result-object v3

    iget-object v4, p0, Lebv;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteDownloadUrl()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    iput-object v5, v3, Lees;->e:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    iget-object v5, p0, Lebv;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v5}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLitePackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lees;->c:Ljava/lang/String;

    iget-object v5, p0, Lebv;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v5}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIcon()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lees;->h:Ljava/lang/String;

    iget-object v5, p0, Lebv;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v5}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lees;->b:Ljava/lang/String;

    iput-boolean v0, v3, Lees;->f:Z

    iget-object v0, p0, Lebv;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteSize()I

    move-result v0

    int-to-long v6, v0

    iput-wide v6, v3, Lees;->g:J

    iget-object v0, p0, Lebv;->b:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->getSource()Ljava/lang/String;

    iget-object v0, p0, Lebv;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteSize()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ld;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lees;->j:Ljava/lang/String;

    iget-object v0, p0, Lebv;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteVersionCode()I

    move-result v0

    invoke-virtual {v3, v0}, Leer;->a(I)Lees;

    move-result-object v0

    iput-object v4, v0, Lees;->a:Ljava/lang/String;

    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    invoke-virtual {v3}, Leer;->a()Lcom/wandoujia/launcher_base/download/DownloadRequest;

    move-result-object v3

    invoke-interface {v0, v3}, Leen;->a(Lcom/wandoujia/launcher_base/download/DownloadRequest;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v3, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-eq v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 140
    return-void
.end method
