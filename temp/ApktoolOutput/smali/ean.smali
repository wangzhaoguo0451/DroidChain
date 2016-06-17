.class final Lean;
.super Landroid/os/AsyncTask;
.source "CasualItemController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Lcom/wandoujia/launcher_base/download/DownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Leam;


# direct methods
.method constructor <init>(Leam;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lean;->a:Leam;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {}, Legx;->f()Leen;

    move-result-object v1

    invoke-interface {v1, v0}, Leen;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 110
    check-cast p1, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Leaq;->a:[I

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lean;->a:Leam;

    iget-object v0, v0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lean;->a:Leam;

    iget-object v0, v0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    invoke-virtual {v0}, Leaz;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lean;->a:Leam;

    iget-object v0, v0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->c(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lean;->a:Leam;

    iget-object v0, v0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->e(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lean;->a:Leam;

    iget-object v0, v0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
