.class public final Ldna;
.super Lhic;
.source "ExpandLinePresenter.java"


# instance fields
.field a:Lhas;


# direct methods
.method public constructor <init>(Lhas;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lhic;-><init>()V

    .line 29
    iput-object p1, p0, Ldna;->a:Lhas;

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 35
    invoke-virtual {p0, p1, v0}, Ldna;->a(Lcom/wandoujia/ripple_framework/model/Model;Z)V

    .line 37
    invoke-virtual {p0}, Ldna;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldnb;

    invoke-direct {v1, p0, p1, p1}, Ldnb;-><init>(Ldna;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method final a(Lcom/wandoujia/ripple_framework/model/Model;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 61
    invoke-virtual {p0}, Ldna;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 62
    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 63
    if-eqz p2, :cond_1

    const v1, 0x7f0200ca

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_0
    if-eqz p2, :cond_2

    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->d:Landroid/content/Context;

    const v2, 0x7f0e0305

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_1
    invoke-virtual {p1, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void

    .line 63
    :cond_1
    const v1, 0x7f0200c9

    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method
