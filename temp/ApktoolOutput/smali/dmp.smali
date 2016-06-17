.class final Ldmp;
.super Lhhl;
.source "DownloadCancelPresenter.java"


# instance fields
.field private synthetic a:Ldmo;


# direct methods
.method constructor <init>(Ldmo;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Ldmp;->a:Ldmo;

    invoke-direct {p0, p2}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 34
    iget-object v0, p0, Ldmp;->a:Ldmo;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 37
    :cond_0
    iget-object v0, p0, Ldmp;->a:Ldmo;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 38
    if-eqz v0, :cond_1

    sget-object v1, Lham;->f:Lham;

    const-string v2, "install"

    invoke-virtual {v1, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhfr;

    iget-object v1, v1, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v7

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Ldmp;->a:Ldmo;

    invoke-virtual {v1}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ld;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v2

    new-instance v3, Ldmq;

    invoke-direct {v3, v0}, Ldmq;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    invoke-static {v1, v2, v3}, Ldmo;->a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 57
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->DOWNLOAD:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REMOVE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldmp;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    move v0, v7

    .line 63
    goto :goto_0
.end method
