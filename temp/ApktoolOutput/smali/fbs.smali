.class final Lfbs;
.super Ljava/lang/Object;
.source "CampaignUtils.java"

# interfaces
.implements Lagu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagu",
        "<",
        "Lcom/wandoujia/api/proto/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lfbs;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 186
    check-cast p1, Lcom/wandoujia/api/proto/HttpResponse;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v5, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Entity;

    invoke-direct {v5, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-virtual {v5}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Lcom/wandoujia/api/proto/AppDetail;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_task"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iget-object v1, p0, Lfbs;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfbs;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v2, v2, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v2, v2, Lcom/wandoujia/api/proto/DownloadUrl;->url:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    iget-object v3, v3, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v4

    iget-object v4, v4, Lcom/wandoujia/api/proto/AppDetail;->icons:Lcom/wandoujia/api/proto/IconSet;

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v4

    iget-object v4, v4, Lcom/wandoujia/api/proto/AppDetail;->icons:Lcom/wandoujia/api/proto/IconSet;

    iget-object v4, v4, Lcom/wandoujia/api/proto/IconSet;->px256:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v5

    iget-object v5, v5, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v5, v5, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lfbp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
