.class public final Ldoo;
.super Ldpr;
.source "ListPresenterFactory.java"


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 747
    invoke-direct {p0, p1, p2}, Ldpr;-><init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 750
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    invoke-virtual {p0}, Ldoo;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ldoo;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->b(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;)V

    .line 753
    return-void
.end method
