.class public final Ldfg;
.super Ldcl;
.source "DetailFragment.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lerv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lerv",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lerv;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lerv",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    invoke-direct {p0, p1}, Ldcl;-><init>(Lerv;)V

    .line 723
    iput-object p1, p0, Ldfg;->d:Lerv;

    .line 724
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Ldfg;->a:I

    .line 727
    const/high16 v0, 0x41c0

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lj;->a(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Ldfg;->b:I

    .line 728
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Ldfg;->c:I

    .line 731
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Luv;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 768
    invoke-super {p0, p1, p2, p3, p4}, Ldcl;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Luv;)V

    .line 769
    iget-object v0, p0, Ldfg;->d:Lerv;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v1

    .line 774
    iget-object v0, p0, Ldfg;->d:Lerv;

    instance-of v0, v0, Lern;

    if-eqz v0, :cond_2

    .line 775
    iget-object v0, p0, Ldfg;->d:Lerv;

    check-cast v0, Lern;

    iget-object v0, v0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    sub-int v0, v1, v0

    .line 777
    :goto_1
    if-lez v0, :cond_0

    iget-object v1, p0, Ldfg;->d:Lerv;

    iget-object v1, v1, Lerv;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 778
    iget-object v1, p0, Ldfg;->d:Lerv;

    iget-object v1, v1, Lerv;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 780
    sget-object v1, Ldey;->a:[I

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 782
    :pswitch_0
    iget v0, p0, Ldfg;->b:I

    iget v1, p0, Ldfg;->c:I

    iget v2, p0, Ldfg;->b:I

    iget v3, p0, Ldfg;->c:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 780
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method protected final d(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 737
    iget-object v0, p0, Ldfg;->d:Lerv;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 761
    :goto_0
    return v0

    .line 742
    :cond_0
    iget-object v0, p0, Ldfg;->d:Lerv;

    instance-of v0, v0, Lern;

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Ldfg;->d:Lerv;

    check-cast v0, Lern;

    iget-object v0, v0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    sub-int/2addr p2, v0

    .line 745
    :cond_1
    if-lez p2, :cond_2

    iget-object v0, p0, Ldfg;->d:Lerv;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 746
    iget-object v0, p0, Ldfg;->d:Lerv;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 748
    sget-object v2, Ldey;->a:[I

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 758
    goto :goto_0

    .line 755
    :pswitch_0
    iget v0, p0, Ldfg;->a:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 761
    goto :goto_0

    .line 748
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
