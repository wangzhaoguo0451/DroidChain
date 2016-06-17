.class public Lcom/wandoujia/ripple_framework/view/ForegroundImageView;
.super Lcom/wandoujia/image/view/AsyncImageView;
.source "ForegroundImageView.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    sget-object v0, Lcom/wandoujia/ripple_framework/R$styleable;->ForegroundImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->ForegroundImageView_android_foreground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->draw(Landroid/graphics/Canvas;)V

    .line 102
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 105
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/wandoujia/image/view/AsyncImageView;->drawableStateChanged()V

    .line 78
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 81
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/wandoujia/image/view/AsyncImageView;->jumpDrawablesToCurrentState()V

    .line 73
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 74
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/wandoujia/image/view/AsyncImageView;->onMeasure(II)V

    .line 85
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->invalidate()V

    .line 89
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Lcom/wandoujia/image/view/AsyncImageView;->onSizeChanged(IIII)V

    .line 93
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->invalidate()V

    .line 97
    :cond_0
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 52
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_1
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    .line 57
    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->requestLayout()V

    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->invalidate()V

    goto :goto_0
.end method

.method public setForegroundResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ForegroundImageView;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
