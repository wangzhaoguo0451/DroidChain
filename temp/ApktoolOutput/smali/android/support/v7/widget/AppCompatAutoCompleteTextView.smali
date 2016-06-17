.class public Landroid/support/v7/widget/AppCompatAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "AppCompatAutoCompleteTextView.java"


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
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd4t 0x0t 0x1t 0x1t
        0x76t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    sget v0, Landroid/support/v7/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
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

    .line 60
    invoke-static {p1}, Lqy;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    sget-boolean v0, Lrb;->a:Z

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->a:[I

    invoke-static {v0, p2, v1, p3}, Lrd;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lrd;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lrd;->a()Lrb;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->d:Lrb;

    .line 67
    invoke-virtual {v0, v3}, Lrd;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Lrd;->a()Lrb;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Lrd;->e(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lrb;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 73
    :cond_0
    invoke-virtual {v0, v4}, Lrd;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v0, v4}, Lrd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_1
    iget-object v0, v0, Lrd;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    :cond_2
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    invoke-static {p0, v0}, Lrb;->a(Landroid/view/View;Lra;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->b:Lra;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->b:Lra;

    invoke-static {p0, v0}, Lrb;->a(Landroid/view/View;Lra;)V

    goto :goto_0
.end method

.method private setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    if-eqz p1, :cond_1

    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->b:Lra;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->b:Lra;

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->b:Lra;

    iput-object p1, v0, Lra;->a:Landroid/content/res/ColorStateList;

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->b:Lra;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lra;->d:Z

    .line 184
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->a()V

    .line 185
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->b:Lra;

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    .line 161
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->a()V

    .line 162
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

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
    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

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
    .line 89
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 92
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->d:Lrb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->d:Lrb;

    invoke-virtual {v0, p1}, Lrb;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->d:Lrb;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lrb;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    iput-object p1, v0, Lra;->a:Landroid/content/res/ColorStateList;

    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lra;->d:Z

    .line 114
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->a()V

    .line 115
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    iput-object p1, v0, Lra;->b:Landroid/graphics/PorterDuff$Mode;

    .line 141
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lra;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lra;->c:Z

    .line 143
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->a()V

    .line 144
    return-void
.end method
