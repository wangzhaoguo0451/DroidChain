.class final Leda;
.super Landroid/os/AsyncTask;
.source "StoryAppInfoCardView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/launcher_base/download/DownloadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 105
    check-cast p1, [Ljava/lang/String;

    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Leen;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    check-cast p1, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    invoke-interface {v0, p1}, Leen;->d(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    return-void
.end method
