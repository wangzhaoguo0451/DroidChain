.class public final Ldqe;
.super Lhic;
.source "SearchItemCardLayoutPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0c0023

    const/16 v7, 0x8

    const v6, 0x7f0c0345

    const v5, 0x7f0c0078

    const/4 v4, 0x0

    .line 22
    invoke-virtual {p0}, Ldqe;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    .line 23
    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld;->w(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42f0

    invoke-static {v2, v3}, Ld;->c(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->width:I

    .line 24
    invoke-virtual {p0}, Ldqe;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->f(I)Leri;

    .line 28
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->a(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Leri;->i(I)Leri;

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v8}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->f(I)Leri;

    .line 40
    :goto_1
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c005f

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->f(I)Leri;

    .line 46
    :goto_2
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v5}, Leri;->a(I)Leri;

    move-result-object v1

    iget-object v1, v1, Leri;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :goto_3
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    .line 31
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->a(I)Leri;

    move-result-object v0

    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Leri;->i(I)Leri;

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v8}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c005f

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 55
    invoke-virtual {p0}, Ldqe;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v5}, Leri;->a(I)Leri;

    move-result-object v1

    iget-object v1, v1, Leri;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method
