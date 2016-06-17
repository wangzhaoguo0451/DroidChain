.class final Ldkx;
.super Lhhl;
.source "ActionPresenter.java"


# instance fields
.field final synthetic a:Lcom/wandoujia/api/proto/Action;


# direct methods
.method constructor <init>(Lcom/wandoujia/api/proto/Action;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Ldkx;->a:Lcom/wandoujia/api/proto/Action;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Ldkx;->a:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/wandoujia/ripple_framework/action/ActionType;->CLEAR_DOWNLOAD_COMPLETE_APP:Lcom/wandoujia/ripple_framework/action/ActionType;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/action/ActionType;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    move v0, v7

    :goto_0
    new-instance v2, Ldky;

    invoke-direct {v2, p0}, Ldky;-><init>(Ldkx;)V

    invoke-static {v1, v0, v2}, Ldmo;->a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 152
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->DOWNLOAD:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->CLEAR:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Ldkx;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 158
    return v7

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
