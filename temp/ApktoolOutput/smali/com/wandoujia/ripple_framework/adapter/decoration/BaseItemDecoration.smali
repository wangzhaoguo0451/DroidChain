.class public Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;
.super Lum;
.source "BaseItemDecoration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lum;-><init>()V

    .line 114
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    .line 20
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 22
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    .line 23
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    .line 24
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 25
    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

    .line 27
    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Luh;

    move-result-object v1

    invoke-virtual {v1}, Luh;->a()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 28
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Luh;

    move-result-object v1

    invoke-virtual {v1, v0}, Luh;->a(I)I

    move-result v1

    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;->a(II)Z

    move-result v7

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;->b(II)Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    move-result-object v8

    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;->d(II)I

    move-result v9

    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 40
    if-eqz v7, :cond_0

    if-lez v9, :cond_0

    if-eqz v10, :cond_0

    .line 42
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 45
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    .line 46
    sget-object v7, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->BOTTOM:Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    if-ne v8, v7, :cond_2

    .line 47
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 49
    :goto_1
    add-int v1, v0, v9

    .line 50
    invoke-virtual {v10, v3, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 54
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Luv;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

    .line 60
    if-ltz v0, :cond_0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Luh;

    move-result-object v1

    invoke-virtual {v1}, Luh;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Luh;

    move-result-object v1

    invoke-virtual {v1, v0}, Luh;->a(I)I

    move-result v1

    .line 65
    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;->a(II)Z

    move-result v2

    .line 66
    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;->b(II)Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    move-result-object v3

    .line 67
    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;->d(II)I

    move-result v0

    .line 69
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 70
    sget-object v1, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->TOP:Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    if-ne v3, v1, :cond_2

    .line 71
    invoke-virtual {p1, v4, v0, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 72
    :cond_2
    sget-object v1, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->BOTTOM:Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    if-ne v3, v1, :cond_0

    .line 73
    invoke-virtual {p1, v4, v4, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public b(II)Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->BOTTOM:Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    return-object v0
.end method

.method public c(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method
