.class public final Ldsb;
.super Lhic;
.source "HotQueryItemPresenter.java"


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
    .locals 5
    .parameter

    .prologue
    const v3, 0x7f0c0078

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0}, Ldsb;->e()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p0}, Ldsb;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 28
    invoke-virtual {p0}, Ldsb;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    new-instance v2, Ldsc;

    invoke-direct {v2, p0, p1, p1}, Ldsc;-><init>(Ldsb;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :goto_0
    invoke-virtual {p0}, Ldsb;->e()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Ldsb;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;

    .line 67
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "new"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, v0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->b:Landroid/view/View;

    if-eqz v2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Ldsb;->e()Landroid/view/View;

    move-result-object v0

    new-instance v2, Ldsd;

    invoke-direct {v2, p0, p1, p1}, Ldsd;-><init>(Ldsb;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Ldsb;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 67
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method
