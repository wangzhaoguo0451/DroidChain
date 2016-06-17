.class public Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AppCompatMultiAutoCompleteTextView.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lra;

.field private c:Lra;

.field private d:Lrb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd4t 0x0t 0x1t 0x1t
        0x76t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    sget v0, Landroid/support/v7/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-static {p1}, Lqy;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    sget-boolean v0, Lrb;->a:Z

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->a:[I

    invoke-static {v0, p2, v1, p3}, Lrd;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lrd;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lrd;->a()Lrb;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->d:Lrb;

    .line 68
    invoke-virtual {v0, v3}, Lrd;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Lrd;->a()Lrb;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Lrd;->e(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lrb;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 74
    :cond_0
    invoke-virtual {v0, v4}, Lrd;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v0, v4}, Lrd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_1
    iget-object v0, v0, Lrd;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    :cond_2
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    invoke-static {p0, v0}, Lrb;->a(Landroid/view/View;Lra;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->b:Lra;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->b:Lra;

    invoke-static {p0, v0}, Lrb;->a(Landroid/view/View;Lra;)V

    goto :goto_0
.end method

.method private setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter

    .prologue
    .line 180
    if-eqz p1, :cond_1

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->b:Lra;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->b:Lra;

    .line 184
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->b:Lra;

    iput-object p1, v0, Lra;->a:Landroid/content/res/ColorStateList;

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->b:Lra;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lra;->d:Z

    .line 189
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->a()V

    .line 190
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->b:Lra;

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 166
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->a()V

    .line 167
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

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
    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    iget-object v0, v0, Lra;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 93
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    .line 85
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->d:Lrb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->d:Lrb;

    invoke-virtual {v0, p1}, Lrb;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->d:Lrb;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->d:Lrb;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lrb;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setDropDownBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    .line 116
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    iput-object p1, v0, Lra;->a:Landroid/content/res/ColorStateList;

    .line 117
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lra;->d:Z

    .line 119
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->a()V

    .line 120
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    iput-object p1, v0, Lra;->b:Landroid/graphics/PorterDuff$Mode;

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->c:Lra;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lra;->c:Z

    .line 148
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->a()V

    .line 149
    return-void
.end method
