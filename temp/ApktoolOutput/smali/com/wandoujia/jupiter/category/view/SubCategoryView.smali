.class public Lcom/wandoujia/jupiter/category/view/SubCategoryView;
.super Landroid/widget/LinearLayout;
.source "SubCategoryView.java"


# instance fields
.field private a:Lddi;

.field private b:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lddr;

    invoke-direct {v0, p0}, Lddr;-><init>(Lcom/wandoujia/jupiter/category/view/SubCategoryView;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->b:Landroid/database/DataSetObserver;

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->setOrientation(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lddr;

    invoke-direct {v0, p0}, Lddr;-><init>(Lcom/wandoujia/jupiter/category/view/SubCategoryView;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->b:Landroid/database/DataSetObserver;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->setOrientation(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lddr;

    invoke-direct {v0, p0}, Lddr;-><init>(Lcom/wandoujia/jupiter/category/view/SubCategoryView;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->b:Landroid/database/DataSetObserver;

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->setOrientation(I)V

    .line 36
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/category/view/SubCategoryView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 16
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->a:Lddi;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->removeAllViews()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->a:Lddi;

    invoke-virtual {v0}, Lddi;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->a:Lddi;

    iget-object v0, v0, Lddi;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    const v0, 0x7f030103

    invoke-static {p0, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->a:Lddi;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0}, Lddi;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->addView(Landroid/view/View;)V

    :cond_1
    const v0, 0x7f030102

    invoke-static {p0, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public setAdapter(Lddi;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->a:Lddi;

    .line 41
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->a:Lddi;

    iget-object v1, p0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->b:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lddi;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 43
    :cond_0
    return-void
.end method
