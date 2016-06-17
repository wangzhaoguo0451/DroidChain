.class public Landroid/support/v7/widget/AppCompatButton;
.super Landroid/widget/Button;
.source "AppCompatButton.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lra;

.field private c:Lra;

.field private d:Lrb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatButton;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    sget v0, Landroid/support/v7/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x1010038

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-boolean v0, Lrb;->a:Z

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/AppCompatButton;->a:[I

    invoke-static {v0, p2, v1, p3}, Lrd;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lrd;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Lrd;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Lrd;->a()Lrb;

    move-result-object v1

    invoke-virtual {v0, v3, v4}, Lrd;->e(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lrb;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatButton;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 74
    :cond_0
    invoke-virtual {v0}, Lrd;->a()Lrb;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatButton;->d:Lrb;

    .line 75
    iget-object v0, v0, Lrd;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    :cond_1
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_android_textAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    if-eq v1, v4, :cond_3

    .line 86
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatButton;->setAllCaps(Z)V

    .line 90
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    :cond_3
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_textAllCaps:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatButton;->setAllCaps(Z)V

    .line 98
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_5

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_6

    .line 109
    invoke-static {p1, v5}, Lqx;->c(Landroid/content/Context;I)I

    move-result v0

    .line 119
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1, v0}, Lqx;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    :cond_5
    return-void

    .line 115
    :cond_6
    invoke-static {p1, v5}, Lqx;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    invoke-static {p0, v0}, Lrb;->a(Landroid/view/View;Lra;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lra;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lra;

    invoke-static {p0, v0}, Lrb;->a(Landroid/view/View;Lra;)V

    goto :goto_0
.end method

.method private setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    if-eqz p1, :cond_1

    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lra;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lra;

    .line 218
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lra;

    iput-object p1, v0, Lra;->a:Landroid/content/res/ColorStateList;

    .line 219
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lra;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lra;->d:Z

    .line 223
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatButton;->a()V

    .line 224
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lra;

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 200
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatButton;->a()V

    .line 201
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    iget-object v0, v0, Lra;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    iget-object v0, v0, Lra;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 229
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 235
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 2
    .parameter

    .prologue
    .line 239
    if-eqz p1, :cond_0

    new-instance v0, Lnq;

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnq;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatButton;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 240
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatButton;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 136
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->d:Lrb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->d:Lrb;

    invoke-virtual {v0, p1}, Lrb;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatButton;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 129
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    .line 150
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    iput-object p1, v0, Lra;->a:Landroid/content/res/ColorStateList;

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lra;->d:Z

    .line 153
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatButton;->a()V

    .line 154
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    iput-object p1, v0, Lra;->b:Landroid/graphics/PorterDuff$Mode;

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lra;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lra;->c:Z

    .line 182
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatButton;->a()V

    .line 183
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 246
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 247
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatButton;->setAllCaps(Z)V

    .line 250
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    return-void
.end method
