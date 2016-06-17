.class public Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Lmv;


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:I

.field private c:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroid/support/v7/widget/LinearLayoutCompat;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Lmm;)Lqo;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Lqo;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lqo;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Lmm;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqo;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lqo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return v4

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 172
    const/4 v0, 0x0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 273
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 277
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 220
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnr;->a(Landroid/content/Context;)Lnr;

    move-result-object v1

    .line 226
    iget-object v0, v1, Lnr;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iget-object v3, v1, Lnr;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lnr;->a()Z

    move-result v4

    if-nez v4, :cond_1

    sget v4, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 227
    iget-object v0, v1, Lnr;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:I

    .line 228
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 282
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 285
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x4000

    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 94
    if-ne v3, v8, :cond_6

    move v0, v1

    .line 95
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 97
    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v4

    .line 98
    if-le v4, v1, :cond_8

    if-eq v3, v8, :cond_0

    const/high16 v5, -0x8000

    if-ne v3, v5, :cond_8

    .line 100
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_7

    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    .line 105
    :goto_1
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    .line 110
    :goto_2
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:I

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 112
    if-nez v0, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Z

    if-eqz v4, :cond_9

    .line 114
    :goto_3
    if-eqz v1, :cond_b

    .line 116
    invoke-virtual {v6, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->measure(II)V

    .line 117
    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-le v1, v4, :cond_a

    .line 118
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v1, :cond_1

    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v1, v4, v5}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;I)V

    new-instance v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v7}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Lmv;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    :cond_1
    invoke-virtual {p0, v6}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v4, Lqn;

    invoke-direct {v4, p0, v2}, Lqn;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;B)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v6, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    :cond_3
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 126
    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    .line 127
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    .line 130
    if-eqz v0, :cond_5

    if-eq v1, v2, :cond_5

    .line 132
    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 134
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 94
    goto/16 :goto_0

    .line 103
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    goto/16 :goto_1

    .line 107
    :cond_8
    iput v7, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 112
    goto/16 :goto_3

    .line 120
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c()Z

    goto :goto_4

    .line 123
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c()Z

    goto :goto_4
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Z

    .line 147
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:I

    .line 196
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 197
    return-void
.end method

.method public setTabSelected(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 179
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:I

    .line 180
    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    move v2, v1

    .line 181
    :goto_0
    if-ge v2, v3, :cond_3

    .line 182
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 183
    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    .line 184
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 185
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v5, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v4, Lqm;

    invoke-direct {v4, p0, v0}, Lqm;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 181
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 183
    goto :goto_1

    .line 189
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    .line 190
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 192
    :cond_4
    return-void
.end method
