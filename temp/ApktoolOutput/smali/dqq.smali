.class public final Ldqq;
.super Lhic;
.source "SmallCardLayoutPresenter.java"


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
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0c0060

    const v6, 0x7f0c005e

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 27
    invoke-virtual {p0}, Ldqq;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 29
    invoke-virtual {p0}, Ldqq;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 30
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {p0}, Ldqq;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    invoke-static {v1, v3}, Ld;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 35
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    const/4 v3, -0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :cond_1
    invoke-virtual {p0}, Ldqq;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->f(I)Leri;

    .line 43
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    :goto_0
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->symbol:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p0}, Ldqq;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->f(I)Leri;

    .line 61
    :goto_1
    iget-boolean v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->e:Z

    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {p0}, Ldqq;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Ldqq;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a01a8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 67
    :goto_2
    invoke-virtual {p0}, Ldqq;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void

    .line 48
    :cond_2
    invoke-virtual {p0}, Ldqq;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    .line 49
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0}, Ldqq;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {p0}, Ldqq;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Ldqq;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0163

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method
