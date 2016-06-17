.class final Lejz;
.super Landroid/os/AsyncTask;
.source "StatefulCtrl.java"


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
.field private synthetic a:Lejy;


# direct methods
.method constructor <init>(Lejy;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lejz;->a:Lejy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Lejz;->a:Lejy;

    iget-object v1, v1, Lejy;->b:Leiu;

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Leen;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    check-cast p1, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    if-eqz p1, :cond_0

    new-instance v0, Lefb;

    invoke-direct {v0, p1}, Lefb;-><init>(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    invoke-virtual {v0}, Lefb;->execute()V

    :cond_0
    return-void
.end method
