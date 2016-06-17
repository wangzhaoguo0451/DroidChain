.class final Leah;
.super Ljava/lang/Object;
.source "CasualIconAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leag;


# direct methods
.method constructor <init>(Leag;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Leah;->a:Leag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Leah;->a:Leag;

    iget-object v1, v1, Leag;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Leen;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-ne v1, v2, :cond_0

    .line 56
    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lehr;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    new-instance v0, Leai;

    invoke-direct {v0, p0}, Leai;-><init>(Leah;)V

    invoke-static {v0}, Ledy;->a(Ljava/lang/Runnable;)V

    .line 68
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Leaj;

    invoke-direct {v1, p0}, Leaj;-><init>(Leah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
