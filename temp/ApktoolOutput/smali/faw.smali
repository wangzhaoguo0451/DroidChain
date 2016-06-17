.class public final Lfaw;
.super Ljava/lang/Object;
.source "SubActionButton.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/button/views/SubActionButton;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/button/views/SubActionButton;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lfaw;->a:Lcom/wandoujia/p4/button/views/SubActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lfaw;->a:Lcom/wandoujia/p4/button/views/SubActionButton;

    invoke-static {v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->b(Lcom/wandoujia/p4/button/views/SubActionButton;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lfaz;

    .line 49
    iget-object v0, v7, Lfaz;->b:Lcom/wandoujia/mvc/Action;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SUB_ACTION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v5, v7, Lfaz;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;)V

    .line 59
    iget-object v0, v7, Lfaz;->b:Lcom/wandoujia/mvc/Action;

    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 61
    :cond_0
    iget-object v0, p0, Lfaw;->a:Lcom/wandoujia/p4/button/views/SubActionButton;

    invoke-static {v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->a(Lcom/wandoujia/p4/button/views/SubActionButton;)Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->a()V

    .line 62
    return-void
.end method
