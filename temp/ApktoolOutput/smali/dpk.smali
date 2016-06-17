.class public final Ldpk;
.super Lhic;
.source "LoginButtonPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Ldpk;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :goto_0
    new-instance v1, Ldpl;

    invoke-direct {v1}, Ldpl;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void

    .line 32
    :cond_0
    const v1, 0x7f0e003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
