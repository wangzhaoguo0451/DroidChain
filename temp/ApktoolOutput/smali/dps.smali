.class final Ldps;
.super Lhhl;
.source "RedirectActionPresenter.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic b:Ldpr;


# direct methods
.method constructor <init>(Ldpr;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Ldps;->b:Ldpr;

    iput-object p3, p0, Ldps;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0, p2}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Ldps;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Ldps;->b:Ldpr;

    iget-object v1, p0, Ldps;->b:Ldpr;

    invoke-virtual {v1}, Ldpr;->e()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ldps;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0, v1, v2}, Ldpr;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 37
    iget-object v0, p0, Ldps;->b:Ldpr;

    iget-object v0, v0, Ldpr;->a:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    iget-object v1, p0, Ldps;->b:Ldpr;

    iget-object v1, v1, Ldpr;->b:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    iget-object v2, p0, Ldps;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    invoke-virtual {p0, p1, v0, v1, v2}, Ldps;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/api/proto/Action;)Lhhl;

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
