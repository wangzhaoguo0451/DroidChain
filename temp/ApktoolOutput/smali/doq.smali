.class public final Ldoq;
.super Lhic;
.source "ListPresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 809
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    .line 812
    invoke-virtual {p0}, Ldoq;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e05b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 813
    invoke-virtual {p0}, Ldoq;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Ldoq;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 814
    invoke-virtual {p0}, Ldoq;->e()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020342

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 815
    invoke-virtual {p0}, Ldoq;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldor;

    invoke-direct {v1}, Ldor;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 824
    invoke-virtual {p0}, Ldoq;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldos;

    invoke-direct {v1, p1, p1}, Ldos;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 856
    return-void
.end method
