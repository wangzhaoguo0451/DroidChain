.class public final Ldru;
.super Lhic;
.source "AppSuggestionItemPresenter.java"


# instance fields
.field private a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lhic;->a()V

    .line 56
    iget-object v0, p0, Ldru;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Ldru;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    .line 58
    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    iget-object v1, p0, Ldru;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->b(Landroid/view/View$OnClickListener;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Ldru;->a:Landroid/view/View$OnClickListener;

    .line 61
    :cond_0
    return-void
.end method

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Lcom/wandoujia/api/proto/AppDetail;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Ldru;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    .line 32
    iget-object v1, p0, Ldru;->a:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Ldrv;

    invoke-direct {v1, p0, p1}, Ldrv;-><init>(Ldru;Lcom/wandoujia/ripple_framework/model/Model;)V

    iput-object v1, p0, Ldru;->a:Landroid/view/View$OnClickListener;

    .line 48
    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    iget-object v1, p0, Ldru;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
