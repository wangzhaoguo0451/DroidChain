.class final Ldpe;
.super Lhhl;
.source "ListPresenterFactory.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p2, p0, Ldpe;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0, p1}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f0c0342

    .line 216
    iget-object v0, p0, Ldpe;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Ld;->a(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0202fd

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 219
    iget-object v0, p0, Ldpe;->a:Lcom/wandoujia/ripple_framework/model/Model;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 225
    :goto_0
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lddv;

    invoke-direct {v1}, Lddv;-><init>()V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 230
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->WELCOME:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    iget-object v0, p0, Ldpe;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Ld;->a(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SELECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    :goto_1
    iget-object v0, p0, Ldpe;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldpe;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 238
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0202fc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    iget-object v0, p0, Ldpe;->a:Lcom/wandoujia/ripple_framework/model/Model;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_1
    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UNSELECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    goto :goto_1
.end method
