.class public final Ldqj;
.super Lhic;
.source "SectionLayoutPresenter.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lhic;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldqj;->a:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldqj;->a:Z

    .line 31
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lhic;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldqj;->a:Z

    .line 33
    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f0c0016

    const v6, 0x7f020313

    const v5, 0x7f0a01a8

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 38
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {p0}, Ldqj;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->b(Landroid/view/View;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 40
    invoke-virtual {p0}, Ldqj;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0}, Ldqj;->f()Leri;

    move-result-object v1

    const v2, 0x7f0c005e

    invoke-virtual {v1, v2}, Leri;->a(I)Leri;

    move-result-object v1

    iget-object v1, v1, Leri;->a:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Ldqj;->f()Leri;

    move-result-object v2

    const v3, 0x7f0c0351

    invoke-virtual {v2, v3}, Leri;->a(I)Leri;

    move-result-object v2

    iget-object v2, v2, Leri;->a:Landroid/view/View;

    .line 44
    iget-boolean v3, p0, Ldqj;->a:Z

    if-nez v3, :cond_d

    .line 45
    const/4 v2, 0x0

    move-object v3, v2

    .line 47
    :goto_0
    if-eqz v3, :cond_1

    .line 48
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 51
    :cond_0
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ldqj;->f()Leri;

    move-result-object v2

    const v4, 0x7f0c0040

    invoke-virtual {v2, v4}, Leri;->a(I)Leri;

    move-result-object v2

    iget-object v2, v2, Leri;->a:Landroid/view/View;

    .line 58
    if-nez v2, :cond_2

    .line 59
    invoke-virtual {p0}, Ldqj;->e()Landroid/view/View;

    move-result-object v2

    .line 62
    :cond_2
    iget-object v4, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 65
    :cond_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    :goto_2
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/api/proto/Image;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 72
    :cond_4
    invoke-virtual {p0}, Ldqj;->f()Leri;

    move-result-object v2

    invoke-virtual {v2, v9}, Leri;->a(I)Leri;

    move-result-object v2

    invoke-virtual {v2, v8}, Leri;->f(I)Leri;

    .line 74
    invoke-virtual {p0}, Ldqj;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00bf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    invoke-virtual {p0}, Ldqj;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00c5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    if-eqz v3, :cond_5

    .line 77
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    :cond_5
    :goto_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_6

    .line 90
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    iget-object v3, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity;->sub_title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 94
    iget-object v3, p1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->GROUP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v3, v4, :cond_a

    .line 95
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    :goto_4
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    :cond_6
    return-void

    .line 53
    :cond_7
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 67
    :cond_8
    const v4, 0x7f02034c

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 80
    :cond_9
    invoke-virtual {p0}, Ldqj;->f()Leri;

    move-result-object v2

    invoke-virtual {v2, v9}, Leri;->a(I)Leri;

    move-result-object v2

    invoke-virtual {v2, v7}, Leri;->f(I)Leri;

    .line 81
    invoke-virtual {p0}, Ldqj;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    invoke-virtual {p0}, Ldqj;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    if-eqz v3, :cond_5

    .line 84
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 98
    :cond_a
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Ldqj;->e()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01f0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    .line 105
    :cond_b
    iget-object v3, p1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->GROUP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v3, v4, :cond_c

    .line 106
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0138

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 108
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 116
    :goto_6
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 111
    :cond_c
    invoke-virtual {p0}, Ldqj;->e()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 113
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_6

    :cond_d
    move-object v3, v2

    goto/16 :goto_0
.end method
