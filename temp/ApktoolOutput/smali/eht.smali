.class public final Leht;
.super Ljava/lang/Object;
.source "PhoenixUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    const-string v1, "com.wandoujia.phoenix2"

    invoke-interface {v0, v1}, Leen;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.wandoujia.phoenix2"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lehr;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Leer;

    invoke-direct {v0}, Leer;-><init>()V

    .line 42
    const-string v1, "com.wandoujia.phoenix2"

    iput-object v1, v0, Lees;->c:Ljava/lang/String;

    invoke-static {}, Legx;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lees;->a:Ljava/lang/String;

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    iput-object v1, v0, Lees;->e:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/launcher_base/R$string;->wandoujia:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lees;->b:Ljava/lang/String;

    .line 48
    invoke-static {}, Legx;->f()Leen;

    move-result-object v1

    invoke-virtual {v0}, Lees;->a()Lcom/wandoujia/launcher_base/download/DownloadRequest;

    move-result-object v0

    invoke-interface {v1, v0}, Leen;->b(Lcom/wandoujia/launcher_base/download/DownloadRequest;)V

    goto :goto_0
.end method
