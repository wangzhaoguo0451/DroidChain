.class public final Ldno;
.super Lhic;
.source "GridLayoutPresenter.java"


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
    .locals 3
    .parameter

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Ldno;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 27
    new-instance v1, Ldcm;

    invoke-direct {v1}, Ldcm;-><init>()V

    .line 28
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-virtual {v1, v2}, Ldcm;->a(Ljava/util/List;)Z

    .line 29
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 30
    new-instance v2, Ldcq;

    invoke-direct {v2, v1}, Ldcq;-><init>(Ldcm;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    goto :goto_0
.end method
