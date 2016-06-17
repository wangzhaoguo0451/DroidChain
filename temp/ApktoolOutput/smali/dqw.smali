.class public final Ldqw;
.super Lhic;
.source "TopicFooterItemLayoutPresenter.java"


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
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c01ae

    const v4, 0x7f0c0078

    const v3, 0x7f0c005e

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 23
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Ldqw;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    .line 29
    :goto_0
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Ldqw;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    .line 35
    :goto_1
    invoke-virtual {p0}, Ldqw;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0248

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 45
    :goto_2
    invoke-virtual {p0}, Ldqw;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v4}, Leri;->a(I)Leri;

    move-result-object v1

    iget-object v1, v1, Leri;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Ldqw;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->f(I)Leri;

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Ldqw;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->f(I)Leri;

    goto :goto_1

    .line 43
    :cond_2
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2
.end method
