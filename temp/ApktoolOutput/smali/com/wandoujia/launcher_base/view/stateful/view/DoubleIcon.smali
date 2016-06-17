.class public Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;
.super Landroid/widget/RelativeLayout;
.source "DoubleIcon.java"


# instance fields
.field public a:Lcom/wandoujia/image/view/AsyncImageView;

.field public b:Lcom/wandoujia/image/view/AsyncImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    sget-object v0, Lcom/wandoujia/launcher_base/R$styleable;->DoubleIconStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->DoubleIconStyle_size_big:I

    const/high16 v2, 0x4270

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Ld;->a(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    sget v2, Lcom/wandoujia/launcher_base/R$styleable;->DoubleIconStyle_size_small:I

    const/high16 v3, 0x41a0

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Ld;->a(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    sget v3, Lcom/wandoujia/launcher_base/R$styleable;->DoubleIconStyle_size_offset:I

    const/high16 v4, 0x4080

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Ld;->a(FLandroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/wandoujia/launcher_base/R$drawable;->bg_icon_mask:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0, v4}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/wandoujia/image/view/AsyncImageView;

    invoke-direct {v4, p1}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->a:Lcom/wandoujia/image/view/AsyncImageView;

    new-instance v4, Lcom/wandoujia/image/view/AsyncImageView;

    invoke-direct {v4, p1}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->b:Lcom/wandoujia/image/view/AsyncImageView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->a:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sub-int v4, v1, v2

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->b:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->a:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, p1, p2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public getIconBig()Lcom/wandoujia/image/view/AsyncImageView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->a:Lcom/wandoujia/image/view/AsyncImageView;

    return-object v0
.end method

.method public setIconBigByResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->a:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageResource(I)V

    .line 92
    return-void
.end method

.method public setIconSmallByResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->b:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageResource(I)V

    .line 121
    return-void
.end method

.method public setIconSmallVisible(Z)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->b:Lcom/wandoujia/image/view/AsyncImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    .line 83
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
