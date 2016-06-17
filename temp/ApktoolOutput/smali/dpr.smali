.class public Ldpr;
.super Lhic;
.source "RedirectActionPresenter.java"


# instance fields
.field a:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field b:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lhic;-><init>()V

    .line 26
    iput-object p1, p0, Ldpr;->a:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 27
    iput-object p2, p0, Ldpr;->b:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Ldpr;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method protected a(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ldpr;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;)V

    .line 60
    return-void
.end method

.method protected a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Ldpr;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldps;

    invoke-direct {v1, p0, p1, p1}, Ldps;-><init>(Ldpr;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
