.class public Landroid/support/v7/internal/view/menu/ActionMenuItemView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lpb;
.implements Lrt;


# instance fields
.field private a:Loo;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Lom;

.field private e:Ltr;

.field private f:Loe;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    sget v1, Landroid/support/v7/appcompat/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->g:Z

    .line 76
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 78
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->i:I

    .line 80
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 83
    const/high16 v1, 0x4200

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    .line 85
    invoke-virtual {p0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->j:I

    .line 89
    return-void
.end method

.method public static synthetic a(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Loe;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->f:Loe;

    return-object v0
.end method

.method public static synthetic b(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Lom;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->d:Lom;

    return-object v0
.end method

.method public static synthetic c(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Loo;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Loo;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 174
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Loo;

    iget v3, v3, Loo;->c:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->g:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->h:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 177
    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void

    :cond_2
    move v0, v2

    .line 173
    goto :goto_0

    :cond_3
    move v3, v2

    .line 174
    goto :goto_1

    .line 177
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final a(Loo;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Loo;

    .line 114
    invoke-virtual {p1}, Loo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {p1, p0}, Loo;->a(Lpb;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p1}, Loo;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 118
    invoke-virtual {p1}, Loo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 119
    invoke-virtual {p1}, Loo;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 120
    invoke-virtual {p1}, Loo;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e:Ltr;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lod;

    invoke-direct {v0, p0}, Lod;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e:Ltr;

    .line 125
    :cond_0
    return-void

    .line 118
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Loo;

    invoke-virtual {v0}, Loo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b()Z

    move-result v0

    return v0
.end method

.method public getItemData()Loo;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Loo;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->d:Lom;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->d:Lom;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Loo;

    invoke-interface {v0, v1}, Lom;->a(Loo;)Z

    .line 141
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 93
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->g:Z

    .line 98
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e()V

    .line 99
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 259
    :goto_0
    return v0

    .line 236
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 237
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 238
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 239
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 241
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 242
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v5

    .line 243
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v6

    .line 244
    aget v7, v0, v2

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    .line 245
    aget v0, v0, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 246
    invoke-static {p1}, Lgs;->h(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_1

    .line 247
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 248
    sub-int v0, v5, v0

    .line 250
    :cond_1
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Loo;

    invoke-virtual {v5}, Loo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 251
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v7, v3, :cond_2

    .line 253
    const v1, 0x800035

    invoke-virtual {v4, v1, v0, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 258
    :goto_1
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 259
    goto :goto_0

    .line 256
    :cond_2
    const/16 v0, 0x51

    invoke-virtual {v4, v0, v1, v6}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 264
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b()Z

    move-result v1

    .line 265
    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->j:I

    if-ltz v0, :cond_0

    .line 266
    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->j:I

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v4

    invoke-super {p0, v0, v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    .line 270
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    .line 272
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 273
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 274
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    .line 275
    const/high16 v4, -0x8000

    if-ne v2, v4, :cond_3

    iget v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->i:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 278
    :goto_0
    if-eq v2, v5, :cond_1

    iget v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->i:I

    if-lez v2, :cond_1

    if-ge v3, v0, :cond_1

    .line 280
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    .line 284
    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 287
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v0

    .line 288
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 289
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    .line 291
    :cond_2
    return-void

    .line 275
    :cond_3
    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->i:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Loo;

    invoke-virtual {v0}, Loo;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e:Ltr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e:Ltr;

    invoke-virtual {v0, p0, p1}, Ltr;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 157
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 161
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->h:Z

    if-eq v0, p1, :cond_0

    .line 165
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->h:Z

    .line 166
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Loo;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Loo;

    iget-object v0, v0, Loo;->b:Lok;

    invoke-virtual {v0}, Lok;->g()V

    .line 170
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 181
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    .line 182
    if-eqz p1, :cond_2

    .line 183
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 184
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 185
    iget v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    if-le v1, v2, :cond_0

    .line 186
    iget v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 187
    iget v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    .line 188
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 190
    :cond_0
    iget v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    if-le v0, v2, :cond_1

    .line 191
    iget v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 192
    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    .line 193
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 195
    :cond_1
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    :cond_2
    invoke-virtual {p0, p1, v3, v3, v3}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e()V

    .line 200
    return-void
.end method

.method public setItemInvoker(Lom;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->d:Lom;

    .line 145
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->j:I

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    .line 105
    return-void
.end method

.method public setPopupCallback(Loe;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->f:Loe;

    .line 149
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    .line 213
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 214
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e()V

    .line 215
    return-void
.end method
