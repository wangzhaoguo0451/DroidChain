.class public final Ldnp;
.super Lhic;
.source "GuessCardPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lhic;->a()V

    .line 80
    invoke-virtual {p0}, Ldnp;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Lcom/wandoujia/ripple_framework/view/LoadingView;

    .line 81
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    invoke-virtual {v0}, Lhmj;->stop()V

    .line 82
    return-void
.end method

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c032a

    const/4 v4, 0x0

    .line 25
    invoke-virtual {p0}, Ldnp;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c01ac

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v1, v0, Leri;->a:Landroid/view/View;

    .line 26
    new-instance v0, Ldnq;

    invoke-direct {v0, p0, v1, p1}, Ldnq;-><init>(Ldnp;Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Ldnp;->e()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c0023

    invoke-virtual {p0}, Ldnp;->f()Leri;

    move-result-object v3

    invoke-virtual {v3, v5}, Leri;->a(I)Leri;

    move-result-object v3

    iget-object v3, v3, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Ldnp;->f()Leri;

    move-result-object v0

    const v2, 0x7f0c001f

    invoke-virtual {v0, v2}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Lcom/wandoujia/ripple_framework/view/LoadingView;

    .line 48
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/LoadingView;->a()V

    .line 53
    :goto_0
    invoke-virtual {p0}, Ldnp;->b()Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    .line 54
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_HEADER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v0, v2, :cond_0

    .line 55
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-virtual {p0}, Ldnp;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0303

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v1, v0, Leri;->a:Landroid/view/View;

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 60
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p0}, Ldnp;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v1, v0, Leri;->a:Landroid/view/View;

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0151

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 69
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_0
    return-void

    .line 51
    :cond_1
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    invoke-virtual {v0}, Lhmj;->stop()V

    goto :goto_0
.end method

.method final b()Lcom/wandoujia/ripple_framework/model/Model;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    return-object v0
.end method
