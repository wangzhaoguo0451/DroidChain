.class public Lcom/wandoujia/ripple_framework/view/BlockLayout;
.super Landroid/view/ViewGroup;
.source "BlockLayout.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lhlz;

    invoke-direct {v0}, Lhlz;-><init>()V

    new-instance v1, Lhlx;

    invoke-direct {v1}, Lhlx;-><init>()V

    invoke-virtual {v0, v1}, Lhlz;->a(Lhlx;)Lhlz;

    .line 266
    new-instance v0, Lhlz;

    invoke-direct {v0}, Lhlz;-><init>()V

    new-instance v1, Lhlx;

    invoke-direct {v1}, Lhlx;-><init>()V

    invoke-virtual {v0, v1}, Lhlz;->a(Lhlx;)Lhlz;

    .line 273
    new-instance v0, Lhlz;

    invoke-direct {v0}, Lhlz;-><init>()V

    new-instance v1, Lhlx;

    invoke-direct {v1}, Lhlx;-><init>()V

    invoke-virtual {v0, v1}, Lhlz;->a(Lhlx;)Lhlz;

    move-result-object v0

    new-instance v1, Lhlx;

    invoke-direct {v1}, Lhlx;-><init>()V

    invoke-virtual {v0, v1}, Lhlz;->a(Lhlx;)Lhlz;

    .line 277
    new-instance v0, Lhlz;

    invoke-direct {v0}, Lhlz;-><init>()V

    new-instance v1, Lhlx;

    invoke-direct {v1}, Lhlx;-><init>()V

    invoke-virtual {v0, v1}, Lhlz;->a(Lhlx;)Lhlz;

    .line 280
    new-instance v0, Lhlz;

    invoke-direct {v0}, Lhlz;-><init>()V

    new-instance v1, Lhlx;

    invoke-direct {v1}, Lhlx;-><init>()V

    invoke-virtual {v0, v1}, Lhlz;->a(Lhlx;)Lhlz;

    move-result-object v0

    new-instance v1, Lhlx;

    invoke-direct {v1}, Lhlx;-><init>()V

    invoke-virtual {v0, v1}, Lhlz;->a(Lhlx;)Lhlz;

    move-result-object v0

    new-instance v1, Lhlx;

    invoke-direct {v1}, Lhlx;-><init>()V

    invoke-virtual {v0, v1}, Lhlz;->a(Lhlx;)Lhlz;

    .line 285
    new-instance v0, Lhlz;

    invoke-direct {v0}, Lhlz;-><init>()V

    new-instance v1, Lhlx;

    invoke-direct {v1}, Lhlx;-><init>()V

    invoke-virtual {v0, v1}, Lhlz;->a(Lhlx;)Lhlz;

    move-result-object v0

    new-instance v1, Lhlx;

    invoke-direct {v1}, Lhlx;-><init>()V

    invoke-virtual {v0, v1}, Lhlz;->a(Lhlx;)Lhlz;

    return-void
.end method

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
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v0, Lcom/wandoujia/ripple_framework/R$styleable;->BlockLayout:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->BlockLayout_spacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    instance-of v0, p1, Lhly;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lhly;

    invoke-direct {v0}, Lhly;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 83
    new-instance v0, Lhly;

    invoke-direct {v0}, Lhly;-><init>()V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 78
    new-instance v0, Lhly;

    invoke-direct {v0}, Lhly;-><init>()V

    return-object v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 92
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 95
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/BlockLayout;->getChildCount()I

    .line 100
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 52
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/BlockLayout;->getChildCount()I

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/ripple_framework/view/BlockLayout;->setMeasuredDimension(II)V

    .line 54
    return-void
.end method
