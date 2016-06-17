.class public Lcom/wandoujia/ripple_framework/view/SectionItemContainer;
.super Landroid/view/ViewGroup;
.source "SectionItemContainer.java"


# instance fields
.field private a:I

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->a:I

    .line 24
    iput v1, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->d:I

    .line 25
    iput v1, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->e:I

    .line 26
    iput v1, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    .line 28
    iput-boolean v1, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->h:Z

    .line 29
    new-instance v0, Ldv;

    invoke-direct {v0}, Ldv;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->i:Ljava/util/Map;

    .line 33
    iput v1, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->b:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$dimen;->margin_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->c:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->a:I

    .line 24
    iput v2, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->d:I

    .line 25
    iput v2, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->e:I

    .line 26
    iput v2, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    .line 28
    iput-boolean v2, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->h:Z

    .line 29
    new-instance v0, Ldv;

    invoke-direct {v0}, Ldv;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->i:Ljava/util/Map;

    .line 39
    sget-object v0, Lcom/wandoujia/ripple_framework/R$styleable;->SectionItemContainer:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->SectionItemContainer_lineSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->b:I

    .line 41
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->SectionItemContainer_maxPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->c:I

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getPaddingLeft()I

    move-result v4

    .line 136
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getPaddingTop()I

    move-result v5

    .line 138
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 139
    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 140
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    div-int v7, v1, v0

    .line 141
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->d:I

    if-lt v7, v0, :cond_0

    .line 142
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 145
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    rem-int v2, v1, v0

    .line 147
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->i:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 148
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->e:I

    add-int/2addr v0, v4

    iget v3, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->g:I

    mul-int/2addr v2, v3

    add-int v9, v0, v2

    .line 149
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->b:I

    mul-int/2addr v0, v7

    add-int v2, v5, v0

    .line 150
    const/4 v0, 0x0

    move v3, v2

    move v2, v0

    :goto_2
    if-ge v2, v7, :cond_1

    .line 151
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->i:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v3, v0

    .line 150
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 153
    :cond_1
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->g:I

    add-int/2addr v0, v9

    add-int v2, v3, v8

    invoke-virtual {v6, v9, v3, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 155
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->h:Z

    .line 156
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x4000

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getDefaultSize(II)I

    move-result v4

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {p0, v4, v1}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->setMeasuredDimension(II)V

    .line 131
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 60
    invoke-virtual {p0, v2, p1, p2}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->measureChild(Landroid/view/View;II)V

    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iput v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->g:I

    .line 65
    iget v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->g:I

    div-int v5, v0, v5

    iput v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    .line 66
    const/4 v5, 0x6

    iget v6, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    .line 69
    iget v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->g:I

    iget v6, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    mul-int/2addr v5, v6

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->e:I

    .line 70
    iget v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->c:I

    iget v6, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->e:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->e:I

    .line 73
    iget v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    iget v6, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->g:I

    mul-int/2addr v5, v6

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->e:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    .line 74
    iget v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    div-int/2addr v0, v5

    .line 75
    iget v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->g:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->g:I

    .line 77
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getChildCount()I

    move-result v0

    int-to-double v6, v0

    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->d:I

    .line 78
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->d:I

    iget v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->a:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->d:I

    .line 79
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    if-nez v0, :cond_1

    .line 80
    iput v3, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v0, v1

    .line 85
    :goto_1
    iget v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->d:I

    if-ge v0, v5, :cond_2

    .line 86
    iget-object v5, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->i:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_2
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->g:I

    if-nez v0, :cond_3

    .line 89
    invoke-virtual {p0, v4, v1}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 93
    :goto_2
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 94
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    div-int v5, v2, v0

    .line 95
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->d:I

    if-ge v5, v0, :cond_7

    .line 96
    invoke-virtual {p0, v2}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 99
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->g:I

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v6, v0, p2}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->measureChild(Landroid/view/View;II)V

    .line 101
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->i:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 102
    if-eqz v0, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v7, v8, :cond_5

    .line 103
    :cond_4
    iget-object v7, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->i:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v5, v0, :cond_6

    .line 106
    iput-boolean v3, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->h:Z

    .line 93
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 111
    :cond_7
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->h:Z

    if-eqz v0, :cond_8

    .line 112
    :goto_3
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 113
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->f:I

    div-int v0, v1, v0

    .line 114
    iget v2, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->d:I

    if-ge v0, v2, :cond_8

    .line 115
    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 119
    iget v3, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->g:I

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->i:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->measureChild(Landroid/view/View;II)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 125
    :cond_8
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 128
    goto :goto_4

    .line 129
    :cond_9
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->b:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->d:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 130
    invoke-virtual {p0, v4, v0}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method public setMaxLines(I)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->a:I

    .line 47
    return-void
.end method
