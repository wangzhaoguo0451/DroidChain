.class final Ldnl;
.super Ldpr;
.source "GrandCardPresenter.java"


# direct methods
.method constructor <init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ldpr;-><init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Ldpr;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 108
    invoke-virtual {p0}, Ldnl;->e()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020340

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    return-void
.end method
