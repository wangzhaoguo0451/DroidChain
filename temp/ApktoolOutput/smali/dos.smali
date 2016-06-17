.class final Ldos;
.super Lhhl;
.source "ListPresenterFactory.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 824
    iput-object p2, p0, Ldos;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0, p1}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 827
    iget-object v0, p0, Ldos;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v5, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    .line 828
    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v0

    invoke-virtual {v0}, Lhpa;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    new-instance v0, Lhoq;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lhoq;-><init>(Landroid/content/Context;)V

    .line 831
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e05b8

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v7, p0, Ldos;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v7, v7, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v7, v7, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    aput-object v7, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    .line 833
    const v1, 0x7f0e05b7

    new-instance v2, Ldot;

    invoke-direct {v2, v5}, Ldot;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 841
    const v1, 0x7f0e0162

    invoke-virtual {v0, v1, v6}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 842
    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    .line 847
    :goto_0
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UNINSTALL:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldos;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 853
    return v8

    .line 844
    :cond_0
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_task"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    invoke-virtual {v0, v5}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
