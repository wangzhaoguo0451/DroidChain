.class public Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "DetailAppHistoryFragment.java"


# instance fields
.field private d:Lcom/wandoujia/ripple_framework/model/Model;

.field private e:Lcom/wandoujia/api/proto/ApkDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;Lcom/wandoujia/api/proto/ApkDetail;)Lcom/wandoujia/api/proto/ApkDetail;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->e:Lcom/wandoujia/api/proto/ApkDetail;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    return-object v0
.end method

.method private a(Lcom/wandoujia/api/proto/ApkDetail;)V
    .locals 4
    .parameter

    .prologue
    .line 179
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_3

    const-string v0, "history_version"

    iget-object v2, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 185
    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-ne v0, v2, :cond_2

    .line 186
    sget-object v0, Lham;->f:Lham;

    const-string v2, "install"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lhfr;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 202
    :cond_1
    return-void

    .line 191
    :cond_2
    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0

    .line 195
    :cond_3
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_task"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v1}, Ld;->b(Lcom/wandoujia/ripple_framework/model/Model;)Lhby;

    move-result-object v1

    iget-object v2, p1, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v2, v2, Lcom/wandoujia/api/proto/DownloadUrl;->url:Ljava/lang/String;

    iput-object v2, v1, Lhby;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/wandoujia/api/proto/ApkDetail;->md5:Ljava/lang/String;

    iput-object v2, v1, Lhby;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lhby;->k:I

    iget-object v2, p1, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lhby;->p:J

    const-string v2, "history_version"

    iput-object v2, v1, Lhby;->n:Ljava/lang/String;

    iget-object v2, p1, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->o:Ljava/lang/String;

    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;
    .locals 2
    .parameter

    .prologue
    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v1, "page_api_url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;-><init>()V

    .line 54
    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v1
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Ljava/lang/String;)Leqw;

    move-result-object v0

    .line 90
    new-instance v1, Ldeh;

    invoke-direct {v1}, Ldeh;-><init>()V

    invoke-virtual {v0, v1}, Leqw;->a(Leqx;)V

    .line 120
    return-object v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f03012a

    return v0
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    .line 230
    :cond_0
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wdj://apps/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/history"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 232
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 126
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lhhw;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lhhw;

    invoke-interface {v0, v1}, Lhhw;->findList(Ljava/lang/String;)Leqw;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {v0, v4}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0403

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v3, v3, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    const-string v0, "http://apis.wandoujia.com/five/v2/apps/%s/history?format=proto"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->o:Ljava/lang/String;

    .line 74
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onDetach()V

    .line 133
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 218
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;->b:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->REMOVE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->e:Lcom/wandoujia/api/proto/ApkDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->e:Lcom/wandoujia/api/proto/ApkDetail;

    invoke-direct {p0, v0}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->a(Lcom/wandoujia/api/proto/ApkDetail;)V

    .line 223
    :cond_0
    return-void
.end method

.method public onEventMainThread(Ldds;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 205
    if-eqz p1, :cond_0

    iget-object v0, p1, Ldds;->a:Lcom/wandoujia/api/proto/ApkDetail;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    iget-object v1, p1, Ldds;->a:Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    sget-object v0, Lham;->f:Lham;

    const-string v2, "app"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v2

    iget-object v3, v1, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_2

    sget-object v2, Ldca;->a:Ldca;

    iget-object v2, v2, Lhal;->d:Landroid/content/Context;

    const v3, 0x7f0e012c

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->d:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v6, v6, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v6, v6, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/wandoujia/api/proto/ApkDetail;->version_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lhoq;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lhoq;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e012e

    invoke-virtual {v2, v3}, Lhoq;->a(I)Lhoq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    const v2, 0x7f0e012d

    new-instance v3, Ldej;

    invoke-direct {v3}, Ldej;-><init>()V

    invoke-virtual {v0, v2, v3}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v2, 0x7f0e012f

    new-instance v3, Ldei;

    invoke-direct {v3, p0, v1}, Ldei;-><init>(Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;Lcom/wandoujia/api/proto/ApkDetail;)V

    invoke-virtual {v0, v2, v3}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0, v7}, Lhoq;->a(Z)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->a(Lcom/wandoujia/api/proto/ApkDetail;)V

    goto/16 :goto_0

    .line 211
    :cond_3
    iget-object v0, p1, Ldds;->a:Lcom/wandoujia/api/proto/ApkDetail;

    invoke-direct {p0, v0}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->a(Lcom/wandoujia/api/proto/ApkDetail;)V

    goto/16 :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setSwipeRefreshEnabled(Z)V

    .line 80
    return-void
.end method
