.class public Lcom/wandoujia/jupiter/view/JupiterCardTitleView;
.super Landroid/widget/LinearLayout;
.source "JupiterCardTitleView.java"


# instance fields
.field private a:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

.field private b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->a:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 43
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 44
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 51
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v1, v0, p2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->measure(II)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 57
    iget-object v1, p0, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->a:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v3}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getMeasuredWidth()I

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

    .line 62
    iget-object v1, p0, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->a:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const/high16 v2, -0x8000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v0, p2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->measure(II)V

    .line 65
    :cond_1
    return-void
.end method

.method public setAdsViewVisible(Z)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-object v1, p0, Lcom/wandoujia/jupiter/view/JupiterCardTitleView;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setVisibility(I)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
