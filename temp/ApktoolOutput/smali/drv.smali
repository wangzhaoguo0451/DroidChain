.class final Ldrv;
.super Lhhl;
.source "AppSuggestionItemPresenter.java"


# instance fields
.field private synthetic a:Ldru;


# direct methods
.method constructor <init>(Ldru;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Ldrv;->a:Ldru;

    invoke-direct {p0, p2}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Ldrv;->a:Ldru;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v0, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    .line 37
    sget-object v0, Lham;->f:Lham;

    const-string v2, "navigation"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 41
    sget-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SEARCH:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-virtual {p0, p1, v0, v2, v1}, Ldrv;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/api/proto/Action;)Lhhl;

    .line 45
    const/4 v0, 0x1

    return v0
.end method
