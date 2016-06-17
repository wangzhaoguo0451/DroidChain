.class public Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;
.super Landroid/widget/LinearLayout;
.source "CardTitleGroupView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 39
    sget v0, Lcom/wandoujia/launcher_search/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->a:Landroid/view/View;

    .line 40
    sget v0, Lcom/wandoujia/launcher_search/R$id;->ad_label:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->b:Landroid/view/View;

    .line 41
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 48
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->b:Landroid/view/View;

    invoke-virtual {v1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    invoke-virtual {p0}, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v0, v2, v0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->a:Landroid/view/View;

    const/high16 v2, -0x8000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 62
    :cond_1
    return-void
.end method

.method public setAdsViewVisible(Z)V
    .locals 2
    .parameter

    .prologue
    .line 65
    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/view/CardTitleGroupView;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    return-void

    .line 65
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
