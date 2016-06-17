.class public final Ldqi;
.super Lhic;
.source "SectionHighlightLayoutPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const v3, 0x7f0c0303

    const v4, 0x7f0c0129

    const/4 v1, 0x0

    .line 20
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Ldqi;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->b(I)Leri;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Leri;->f(I)Leri;

    .line 26
    :goto_0
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_HIGHLIGHT:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 27
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 32
    invoke-virtual {p0}, Ldqi;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v3}, Leri;->b(I)Leri;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Leri;->f(I)Leri;

    .line 33
    invoke-virtual {p0}, Ldqi;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v4}, Leri;->b(I)Leri;

    move-result-object v1

    invoke-virtual {v1, v0}, Leri;->a(Landroid/view/ViewGroup$LayoutParams;)Leri;

    .line 34
    invoke-virtual {p0}, Ldqi;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0}, Leri;->c()Leri;

    .line 35
    invoke-virtual {p0}, Ldqi;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Leri;->g(I)Leri;

    .line 48
    :goto_2
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Ldqi;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 26
    goto :goto_1

    .line 37
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 40
    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 41
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 42
    invoke-virtual {p0}, Ldqi;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v4}, Leri;->b(I)Leri;

    move-result-object v1

    invoke-virtual {v1, v0}, Leri;->a(Landroid/view/ViewGroup$LayoutParams;)Leri;

    .line 44
    invoke-virtual {p0}, Ldqi;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0}, Leri;->c()Leri;

    .line 45
    invoke-virtual {p0}, Ldqi;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a01a8

    invoke-virtual {v0, v1}, Leri;->g(I)Leri;

    goto :goto_2
.end method
