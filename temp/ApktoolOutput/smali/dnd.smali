.class final Ldnd;
.super Lhhl;
.source "FavoritableButtonPresenter.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic b:Ldnc;


# direct methods
.method constructor <init>(Ldnc;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Ldnd;->b:Ldnc;

    iput-object p2, p0, Ldnd;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    iget-object v0, p0, Ldnd;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Ldux;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v0

    iget-object v1, p0, Ldnd;->b:Ldnc;

    iget-object v1, v1, Ldnc;->a:Landroid/content/Context;

    iget-object v2, p0, Ldnd;->b:Ldnc;

    iget-object v2, v2, Ldnc;->b:Lgcd;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->d(Landroid/content/Context;Lgcd;)V

    move v4, v7

    .line 70
    :goto_0
    iget-object v0, p0, Ldnd;->b:Ldnc;

    invoke-virtual {v0}, Ldnc;->e()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Ldnd;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v5, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->MARK_FAVORITE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    :goto_1
    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 71
    iget-object v0, p0, Ldnd;->b:Ldnc;

    invoke-virtual {v0}, Ldnc;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    return v8

    .line 66
    :cond_0
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v0

    iget-object v1, p0, Ldnd;->b:Ldnc;

    iget-object v1, v1, Ldnc;->a:Landroid/content/Context;

    iget-object v2, p0, Ldnd;->b:Ldnc;

    iget-object v2, v2, Ldnc;->b:Lgcd;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->c(Landroid/content/Context;Lgcd;)V

    move v4, v8

    .line 67
    goto :goto_0

    .line 70
    :cond_1
    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UNMARK_FAVORITE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    goto :goto_1
.end method
