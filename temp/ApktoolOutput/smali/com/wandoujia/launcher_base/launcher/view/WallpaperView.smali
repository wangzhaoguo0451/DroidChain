.class public Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;
.super Landroid/widget/ImageView;
.source "WallpaperView.java"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->c:Landroid/os/Handler;

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->setWillNotDraw(Z)V

    .line 35
    sget-object v0, Lcom/wandoujia/launcher_base/R$styleable;->WallpaperView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->WallpaperView_mask_color:I

    const v2, 0xffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->b:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->a:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->a:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 80
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->a:Landroid/graphics/Rect;

    .line 83
    :cond_0
    return-void
.end method

.method public setMaskColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->postInvalidate()V

    .line 53
    return-void
.end method
