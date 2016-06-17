.class public Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;
.super Landroid/view/ViewGroup;
.source "LauncherGridView.java"


# instance fields
.field private a:Legh;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 46
    sget-object v0, Lcom/wandoujia/launcher_base/R$styleable;->LauncherGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->LauncherGridView_row_head:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->b:I

    .line 49
    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->LauncherGridView_row_height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->c:I

    .line 50
    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->LauncherGridView_row_foot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->d:I

    .line 51
    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->LauncherGridView_col_margin:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->e:I

    .line 52
    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->LauncherGridView_col_width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->f:I

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$dimen;->launcher_grid_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->g:I

    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->removeAllViews()V

    .line 61
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->a:Legh;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->a:Legh;

    invoke-virtual {v0}, Legh;->a()I

    move-result v1

    .line 65
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 66
    iget-object v2, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->a:Legh;

    invoke-virtual {v2, v0}, Legh;->a(I)Legg;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    iget-object v3, v2, Legg;->f:Landroid/view/View;

    invoke-virtual {v2, v3, p0}, Legg;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Legg;->f:Landroid/view/View;

    iget-object v3, v2, Legg;->f:Landroid/view/View;

    .line 69
    if-eqz v3, :cond_2

    .line 70
    invoke-virtual {v2}, Legg;->c()V

    iget-object v3, v2, Legg;->f:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, v2, Legg;->f:Landroid/view/View;

    sget v4, Legg;->b:I

    invoke-virtual {v3, v4, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->a:Legh;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->a:Legh;

    iget v5, v0, Legh;->a:I

    .line 92
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->a:Legh;

    iget v6, v0, Legh;->b:I

    .line 93
    sub-int v0, p5, p3

    iget v1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->c:I

    mul-int/2addr v1, v6

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->d:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, v6, -0x1

    div-int v7, v0, v1

    .line 94
    sub-int v0, p4, p2

    iget v1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->e:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->f:I

    mul-int/2addr v1, v5

    sub-int/2addr v0, v1

    add-int/lit8 v1, v5, -0x1

    div-int v8, v0, v1

    .line 95
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->getChildCount()I

    move-result v9

    .line 96
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v9, :cond_0

    .line 97
    invoke-virtual {p0, v4}, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 98
    if-eqz v10, :cond_2

    .line 99
    invoke-static {v10}, Legg;->c(Landroid/view/View;)Legg;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    iget-object v2, v0, Legg;->d:Landroid/graphics/Point;

    .line 108
    iget-object v3, v0, Legg;->e:Lehw;

    .line 109
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 110
    iget v0, v3, Lehw;->a:I

    if-ne v0, v5, :cond_3

    iget v0, v3, Lehw;->b:I

    if-ne v0, v6, :cond_3

    .line 116
    const/4 v1, 0x0

    .line 117
    const/4 v2, 0x0

    .line 118
    sub-int v0, p4, p2

    .line 119
    sub-int v3, p5, p3

    .line 126
    :goto_1
    const/high16 v11, 0x4000

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, 0x4000

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->measure(II)V

    .line 128
    add-int/2addr v0, v1

    add-int/2addr v3, v2

    invoke-virtual {v10, v1, v2, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 96
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 121
    :cond_3
    iget v0, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->e:I

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v11, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->f:I

    add-int/2addr v11, v8

    mul-int/2addr v1, v11

    add-int/2addr v1, v0

    .line 122
    iget v0, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->b:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v11, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->c:I

    add-int/2addr v11, v7

    mul-int/2addr v2, v11

    add-int/2addr v2, v0

    .line 123
    iget v0, v3, Lehw;->a:I

    add-int/lit8 v0, v0, -0x1

    iget v11, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->f:I

    add-int/2addr v11, v8

    mul-int/2addr v0, v11

    iget v11, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->f:I

    add-int/2addr v0, v11

    .line 124
    iget v3, v3, Lehw;->b:I

    add-int/lit8 v3, v3, -0x1

    iget v11, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->c:I

    add-int/2addr v11, v7

    mul-int/2addr v3, v11

    iget v11, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->c:I

    add-int/2addr v3, v11

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 79
    iget v1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->g:I

    if-le v0, v1, :cond_0

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 81
    iget v1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->g:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 83
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 84
    return-void
.end method

.method public setAdapter(Legh;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->a:Legh;

    .line 137
    return-void
.end method
