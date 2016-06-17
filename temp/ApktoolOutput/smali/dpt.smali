.class public final Ldpt;
.super Lhic;
.source "RippleLayoutConvertPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0}, Ldpt;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0129

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    .line 22
    if-eqz v0, :cond_1

    .line 23
    const/high16 v1, 0x4180

    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lj;->a(FLandroid/content/Context;)I

    move-result v1

    .line 24
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->APP_ATTACH:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->VIDEO_ATTACH:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v2, v3, :cond_2

    .line 26
    :cond_0
    const/high16 v2, 0x41f0

    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lj;->a(FLandroid/content/Context;)I

    move-result v2

    .line 27
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 32
    :cond_1
    :goto_0
    return-void

    .line 29
    :cond_2
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
