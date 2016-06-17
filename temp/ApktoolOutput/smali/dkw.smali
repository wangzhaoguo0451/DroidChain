.class final Ldkw;
.super Lhhl;
.source "ActionPresenter.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/api/proto/Action;


# direct methods
.method constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/api/proto/Action;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p2, p0, Ldkw;->a:Lcom/wandoujia/api/proto/Action;

    invoke-direct {p0, p1}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 113
    sget-object v0, Lham;->f:Lham;

    const-string v2, "navigation"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ldkw;->a:Lcom/wandoujia/api/proto/Action;

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 116
    iget-object v0, p0, Ldkw;->a:Lcom/wandoujia/api/proto/Action;

    if-nez v0, :cond_0

    move v0, v1

    .line 129
    :goto_0
    return v0

    .line 119
    :cond_0
    iget-object v0, p0, Ldkw;->a:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/wandoujia/ripple_framework/action/ActionType;->REDIRECT:Lcom/wandoujia/ripple_framework/action/ActionType;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/action/ActionType;->ordinal()I

    move-result v0

    iget-object v2, p0, Ldkw;->a:Lcom/wandoujia/api/proto/Action;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 121
    :cond_1
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v0, p0, Ldkw;->a:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldkw;->a:Lcom/wandoujia/api/proto/Action;

    iget-object v5, v0, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldkw;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Ldkw;->a:Lcom/wandoujia/api/proto/Action;

    iget-object v5, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v0, v1

    .line 129
    goto :goto_0
.end method
