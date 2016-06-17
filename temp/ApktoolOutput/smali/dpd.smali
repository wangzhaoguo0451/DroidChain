.class public final Ldpd;
.super Lhic;
.source "ListPresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 7
    .parameter

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Ldpe;

    invoke-direct {v0, p1, p1}, Ldpe;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 241
    invoke-virtual {p0}, Ldpd;->e()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->WELCOME:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-static {p1}, Ld;->a(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SELECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    :goto_1
    iget-object v5, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lhhl;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 249
    invoke-virtual {p0}, Ldpd;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 241
    :cond_1
    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UNSELECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    goto :goto_1
.end method
