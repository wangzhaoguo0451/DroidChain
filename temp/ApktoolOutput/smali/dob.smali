.class final Ldob;
.super Lhhl;
.source "HistoryVersionButtonPresenter.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p2, p0, Ldob;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0, p1}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Ldob;->a:Lcom/wandoujia/ripple_framework/model/Model;

    const v2, 0x7f0c0057

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 32
    iget-object v2, p0, Ldob;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    .line 33
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 34
    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 35
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 38
    :goto_0
    sget-object v0, Lham;->f:Lham;

    const-string v3, "event_bus"

    invoke-virtual {v0, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v3, Ldds;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/ApkDetail;

    invoke-direct {v3, v1}, Ldds;-><init>(Lcom/wandoujia/api/proto/ApkDetail;)V

    invoke-virtual {v0, v3}, Lhrx;->d(Ljava/lang/Object;)V

    .line 41
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v0, p0, Ldob;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v5, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldob;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
