.class public Lcom/wandoujia/launcher/launcher/views/QuotationTextView;
.super Landroid/widget/TextView;
.source "QuotationTextView.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/text/Layout;

.field private d:Landroid/graphics/Rect;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-virtual {p0, v3}, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->setWillNotDraw(Z)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->d:Landroid/graphics/Rect;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$drawable;->icon_quotation_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->a:Landroid/graphics/drawable/Drawable;

    .line 48
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$drawable;->icon_quotation_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->b:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->c:Landroid/text/Layout;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$dimen;->margin_xsmall:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->f:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$dimen;->margin_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->g:I

    .line 56
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const/4 v3, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->c:Landroid/text/Layout;

    .line 69
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->c:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->c:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v1}, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 72
    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->e:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->g:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, v4

    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->f:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 82
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/QuotationTextView;->e:I

    .line 62
    return-void
.end method
