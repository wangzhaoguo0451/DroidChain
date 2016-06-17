.class final Ldhr;
.super Landroid/os/AsyncTask;
.source "AppUpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/appmanager/LocalAppInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 337
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->i()Ljava/util/List;

    move-result-object v1

    sget-object v0, Lham;->f:Lham;

    const-string v2, "app"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v1, :cond_5

    if-nez v0, :cond_2

    move-object v2, v3

    :goto_2
    sget-object v0, Lham;->f:Lham;

    const-string v8, "download"

    invoke-virtual {v0, v8}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v8, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-ne v2, v8, :cond_5

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e041e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Ldxa;->b:I

    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lgds;

    invoke-direct {v3, v0, v1}, Lgds;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    move-object v3, v4

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 337
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_task"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/LocalAppInfo;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->UPGRADE_APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v1, v4}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 342
    return-void
.end method
