.class public final Ldpm;
.super Lhic;
.source "MiniCardLayoutPresenter.java"


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
    const v8, 0x7f0c0063

    const v7, 0x7f0c0060

    const v6, 0x7f0c0002

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 21
    invoke-virtual {p0}, Ldpm;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0301

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0}, Leri;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0301

    .line 23
    :goto_0
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->tagline:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Ldpm;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v0}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v1, v0, Leri;->a:Landroid/view/View;

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 31
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p0}, Ldpm;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    .line 34
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 38
    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0}, Ldpm;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->f(I)Leri;

    .line 58
    :goto_1
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p0}, Ldpm;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v8}, Leri;->b(I)Leri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    .line 63
    :goto_2
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->symbol:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {p0}, Ldpm;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->f(I)Leri;

    .line 68
    :goto_3
    return-void

    .line 21
    :cond_0
    const v0, 0x7f0c0078

    goto/16 :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Ldpm;->f()Leri;

    move-result-object v1

    const v2, 0x7f0c01ae

    invoke-virtual {v1, v2}, Leri;->b(I)Leri;

    move-result-object v1

    invoke-virtual {v1, v4}, Leri;->f(I)Leri;

    .line 44
    invoke-virtual {p0}, Ldpm;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v0}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v1, v0, Leri;->a:Landroid/view/View;

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 49
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p0}, Ldpm;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    .line 52
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 54
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 56
    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 61
    :cond_2
    invoke-virtual {p0}, Ldpm;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v8}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {p0}, Ldpm;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    goto :goto_3
.end method
