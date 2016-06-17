.class final Ldle;
.super Ljava/lang/Object;
.source "CardShowPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldld;


# direct methods
.method constructor <init>(Ldld;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Ldle;->a:Ldld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Ldle;->a:Ldld;

    invoke-virtual {v0}, Ldld;->e()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 39
    if-eqz v0, :cond_0

    iget-object v1, p0, Ldle;->a:Ldld;

    invoke-virtual {v1, v0}, Ldld;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :cond_0
    return-void

    .line 42
    :cond_1
    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    iget-object v2, p0, Ldle;->a:Ldld;

    invoke-virtual {v2}, Ldld;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger;->b(Landroid/view/View;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v2, p0, Ldle;->a:Ldld;

    invoke-virtual {v2}, Ldld;->e()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Ldld;->a(Landroid/view/View;Ljava/util/List;)V

    .line 45
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    iget-object v2, p0, Ldle;->a:Ldld;

    invoke-virtual {v2, v0}, Ldld;->c(Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 47
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 48
    sget-object v2, Lham;->f:Lham;

    iget-object v2, v2, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/log/Logger;->a:Leny;

    invoke-virtual {v2, v0}, Leny;->a(Landroid/view/View;)V

    goto :goto_0
.end method
