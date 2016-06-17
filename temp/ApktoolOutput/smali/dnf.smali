.class public final Ldnf;
.super Lhic;
.source "FavoritePresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    .line 16
    invoke-virtual {p0}, Ldnf;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c01cd

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    .line 17
    invoke-virtual {p0}, Ldnf;->f()Leri;

    move-result-object v1

    const v2, 0x7f0c046a

    invoke-virtual {v1, v2}, Leri;->b(I)Leri;

    move-result-object v1

    iget-object v1, v1, Leri;->a:Landroid/view/View;

    .line 18
    invoke-virtual {p0}, Ldnf;->f()Leri;

    move-result-object v2

    const v3, 0x7f0c046b

    invoke-virtual {v2, v3}, Leri;->b(I)Leri;

    move-result-object v2

    iget-object v2, v2, Leri;->a:Landroid/view/View;

    .line 19
    invoke-virtual {p0}, Ldnf;->f()Leri;

    move-result-object v3

    const v4, 0x7f0c007b

    invoke-virtual {v3, v4}, Leri;->b(I)Leri;

    move-result-object v3

    iget-object v3, v3, Leri;->a:Landroid/view/View;

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :cond_0
    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :cond_1
    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_2
    if-eqz v3, :cond_3

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 31
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p0}, Ldnf;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    :cond_3
    return-void
.end method
