.class final Lefg;
.super Landroid/os/AsyncTask;
.source "StartDownloadAppAction.java"


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
.field private a:Lcom/wandoujia/launcher_base/download/DownloadRequest;

.field private synthetic b:Lefe;


# direct methods
.method constructor <init>(Lefe;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lefg;->b:Lefe;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lefg;->b:Lefe;

    invoke-static {v0}, Lefe;->a(Lefe;)Leiu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leeu;->a(Leiu;Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadRequest;

    move-result-object v0

    iput-object v0, p0, Lefg;->a:Lcom/wandoujia/launcher_base/download/DownloadRequest;

    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Lefg;->a:Lcom/wandoujia/launcher_base/download/DownloadRequest;

    invoke-interface {v0, v1}, Leen;->a(Lcom/wandoujia/launcher_base/download/DownloadRequest;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Legx;->f()Leen;

    :cond_0
    return-void
.end method
