.class public final Ldqp;
.super Lhic;
.source "SingleVideoLayoutPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 18
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->FEED:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v1, :cond_1

    .line 19
    invoke-virtual {p0}, Ldqp;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    invoke-virtual {p0}, Ldqp;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 21
    const/high16 v1, 0x4370

    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lj;->a(FLandroid/content/Context;)I

    move-result v1

    .line 22
    if-nez v0, :cond_0

    .line 23
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 27
    :goto_0
    invoke-virtual {p0}, Ldqp;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    :goto_1
    return-void

    .line 25
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 30
    invoke-virtual {p0}, Ldqp;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    invoke-virtual {p0}, Ldqp;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 32
    const/high16 v1, 0x4334

    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lj;->a(FLandroid/content/Context;)I

    move-result v1

    .line 33
    if-nez v0, :cond_2

    .line 34
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 38
    :goto_2
    invoke-virtual {p0}, Ldqp;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 36
    :cond_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method
