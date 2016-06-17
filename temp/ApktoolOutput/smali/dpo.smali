.class public final Ldpo;
.super Lhic;
.source "RecyclerListPresenter.java"


# instance fields
.field private a:I

.field private b:Ldpq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lhic;-><init>()V

    .line 25
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Ldpo;->a:I

    .line 65
    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 32
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ldpo;->e()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Ldpo;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 38
    sget-object v1, Ldpp;->a:[I

    iget-object v3, p1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Luh;

    move-result-object v0

    check-cast v0, Lhaw;

    .line 62
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lhaw;->a(Ljava/util/List;)Z

    goto :goto_0

    .line 40
    :pswitch_0
    new-instance v1, Ldcp;

    invoke-virtual {p0}, Ldpo;->e()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-direct {v1}, Ldcp;-><init>()V

    .line 43
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Luo;)V

    .line 45
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SCREENSHOT:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v1, v3, :cond_3

    .line 48
    iget-object v1, p0, Ldpo;->b:Ldpq;

    if-nez v1, :cond_2

    .line 49
    new-instance v1, Ldpq;

    iget v3, p0, Ldpo;->a:I

    invoke-direct {v1, v3, v2}, Ldpq;-><init>(IB)V

    iput-object v1, p0, Ldpo;->b:Ldpq;

    .line 50
    iget-object v1, p0, Ldpo;->b:Ldpq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Lum;)V

    goto :goto_1

    .line 53
    :cond_3
    iget-object v1, p0, Ldpo;->b:Ldpq;

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Ldpo;->b:Ldpq;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    const-string v4, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v3, v4}, Luo;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lgs;->a(Landroid/view/View;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->i()V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Ldpo;->b:Ldpq;

    goto :goto_1

    :cond_6
    move v1, v2

    .line 54
    goto :goto_2

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
