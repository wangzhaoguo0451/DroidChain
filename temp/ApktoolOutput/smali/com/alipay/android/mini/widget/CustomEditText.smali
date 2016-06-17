.class public Lcom/alipay/android/mini/widget/CustomEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/ic;


# instance fields
.field a:Z

.field b:Landroid/graphics/drawable/Drawable;

.field c:Lcom/alipay/android/mini/widget/CustomEditText$c;

.field public d:Lcom/alipay/android/mini/widget/CustomEditText$a;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 29
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    .line 30
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->f:I

    .line 31
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->g:I

    .line 32
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->h:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 29
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    .line 30
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->f:I

    .line 31
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->g:I

    .line 32
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->h:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 29
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    .line 30
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->f:I

    .line 31
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->g:I

    .line 32
    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->h:I

    .line 69
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 204
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->i()V

    .line 222
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->getWidth()I

    move-result v0

    .line 210
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->getHeight()I

    move-result v1

    .line 211
    iget-object v2, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 212
    iget-object v3, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 213
    sub-int/2addr v0, v2

    div-int/lit8 v4, v2, 0x4

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    .line 214
    sub-int v0, v1, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->f:I

    .line 215
    iget v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->g:I

    .line 216
    iget v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->h:I

    .line 217
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v5, v0, v5}, Lcom/alipay/android/mini/widget/CustomEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/alipay/android/mini/widget/CustomEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 220
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->getCompoundPaddingTop()I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-super {p0, v0, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 192
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->i()V

    .line 128
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 129
    iput-object p2, p0, Lcom/alipay/android/mini/widget/CustomEditText;->c:Lcom/alipay/android/mini/widget/CustomEditText$c;

    .line 130
    iput-object p1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->b()V

    .line 132
    invoke-super {p0}, Landroid/widget/EditText;->invalidate()V

    .line 133
    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p1, Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p1, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/mini/widget/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mini_icon_clean"

    invoke-static {v1}, Lg;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    invoke-direct {p1}, Lcom/alipay/android/mini/widget/CustomEditText;->b()V

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->d:Lcom/alipay/android/mini/widget/CustomEditText$a;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->d:Lcom/alipay/android/mini/widget/CustomEditText$a;

    invoke-interface {v0, p0, p2}, Lcom/alipay/android/mini/widget/CustomEditText$a;->a(Landroid/view/View;Z)V

    .line 49
    :cond_1
    return-void

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/android/mini/widget/CustomEditText;->a()V

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    iput-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 229
    iput-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->c:Lcom/alipay/android/mini/widget/CustomEditText$c;

    .line 230
    return-void
.end method

.method public onEditorAction(I)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 89
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
    .line 113
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 117
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 74
    iget v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->i:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:I

    if-eq v0, p2, :cond_1

    .line 75
    :cond_0
    iput p1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->i:I

    .line 76
    iput p2, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:I

    .line 77
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->b()V

    .line 79
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 96
    iget v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 100
    iget v3, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/alipay/android/mini/widget/CustomEditText;->g:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->f:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->h:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->c:Lcom/alipay/android/mini/widget/CustomEditText$c;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->c:Lcom/alipay/android/mini/widget/CustomEditText$c;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v2}, Lcom/alipay/android/mini/widget/CustomEditText$c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
