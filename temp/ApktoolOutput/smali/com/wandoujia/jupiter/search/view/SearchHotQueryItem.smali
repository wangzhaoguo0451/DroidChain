.class public Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;
.super Landroid/widget/LinearLayout;
.source "SearchHotQueryItem.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;
    .locals 1
    .parameter

    .prologue
    .line 34
    const v0, 0x7f030246

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 58
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->a:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0c04b1

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->b:Landroid/view/View;

    .line 60
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/high16 v5, -0x8000

    .line 39
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 41
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iget-object v2, p0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->b:Landroid/view/View;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->b:Landroid/view/View;

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

    .line 50
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->a:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 53
    :cond_0
    return-void
.end method
