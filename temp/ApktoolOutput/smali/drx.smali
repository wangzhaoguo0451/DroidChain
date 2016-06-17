.class final Ldrx;
.super Lhhl;
.source "ClearQueryHistoryPresenter.java"


# instance fields
.field private synthetic a:Ldrw;


# direct methods
.method constructor <init>(Ldrw;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Ldrx;->a:Ldrw;

    invoke-direct {p0, p2}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 29
    new-instance v0, Lhoq;

    iget-object v1, p0, Ldrx;->a:Ldrw;

    invoke-virtual {v1}, Ldrw;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lhoq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0598

    invoke-virtual {v0, v1}, Lhoq;->a(I)Lhoq;

    move-result-object v0

    iget-object v1, p0, Ldrx;->a:Ldrw;

    invoke-virtual {v1}, Ldrw;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e048e

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e023a

    new-instance v2, Ldry;

    invoke-direct {v2}, Ldry;-><init>()V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0162

    invoke-virtual {v0, v1, v5}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    .line 45
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SEARCH:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->CLEAR_SEARCH_HISTORY:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Ldrx;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 51
    return v7
.end method
