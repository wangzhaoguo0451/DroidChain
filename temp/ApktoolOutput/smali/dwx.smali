.class public final Ldwx;
.super Lhhl;
.source "OperationGuideCardView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/view/OperationGuideCardView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/view/OperationGuideCardView;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Ldwx;->a:Lcom/wandoujia/jupiter/view/OperationGuideCardView;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 8
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Ldwx;->a:Lcom/wandoujia/jupiter/view/OperationGuideCardView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->a(Lcom/wandoujia/jupiter/view/OperationGuideCardView;)Ldwz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Ldwx;->a:Lcom/wandoujia/jupiter/view/OperationGuideCardView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->a(Lcom/wandoujia/jupiter/view/OperationGuideCardView;)Ldwz;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->u()V

    iget-object v0, v0, Ldwz;->a:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->b(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)Lert;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lert;->a(Z)V

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ME_APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->CLOSE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "close_gl_card"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 75
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
