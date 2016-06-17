.class public Landroid/support/v7/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Z

.field public e:Z

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lpk;

    invoke-direct {v0, p0}, Lpk;-><init>(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    .line 61
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    .line 66
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundStacked:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    .line 68
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->j:I

    .line 70
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    sget v4, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_0

    .line 71
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    .line 72
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundSplit:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 78
    return-void

    :cond_1
    move v0, v2

    .line 58
    goto :goto_0

    :cond_2
    new-instance v0, Lpj;

    invoke-direct {v0, p0}, Lpj;-><init>(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 76
    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private static a(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 241
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 164
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 167
    :cond_2
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 171
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 172
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 178
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 182
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 83
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    .line 84
    sget v0, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:Landroid/view/View;

    .line 85
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 283
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    .line 284
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_2

    move v3, v1

    .line 286
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v5

    .line 288
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 289
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 290
    sub-int v6, v5, v6

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v5, v0

    invoke-virtual {v4, p2, v6, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 295
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 297
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 322
    :goto_1
    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 325
    :cond_1
    return-void

    :cond_2
    move v3, v2

    .line 284
    goto :goto_0

    .line 301
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 302
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 303
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    move v0, v1

    .line 314
    :goto_3
    iput-boolean v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Z

    .line 315
    if-eqz v3, :cond_6

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 316
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 305
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 307
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 310
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_6
    move v1, v0

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v1, v2

    goto/16 :goto_1
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, -0x8000

    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->j:I

    if-ltz v0, :cond_0

    .line 253
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->j:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 256
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 258
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    if-nez v0, :cond_2

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 261
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/high16 v0, 0x4000

    if-eq v2, v0, :cond_1

    .line 264
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 265
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->b(Landroid/view/View;)I

    move-result v0

    move v1, v0

    .line 271
    :goto_1
    if-ne v2, v3, :cond_5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 273
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->b(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 267
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->b(Landroid/view/View;)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 269
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 271
    :cond_5
    const v0, 0x7fffffff

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 90
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    .line 93
    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 95
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 102
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 103
    return-void

    :cond_3
    move v0, v1

    .line 100
    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 126
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 129
    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 131
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 138
    return-void

    :cond_3
    move v0, v1

    .line 135
    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 108
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    .line 111
    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 113
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 120
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 121
    return-void

    :cond_3
    move v0, v1

    .line 118
    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 214
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    .line 215
    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 217
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 218
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 219
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 222
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .parameter

    .prologue
    .line 192
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Z

    .line 193
    if-eqz p1, :cond_0

    const/high16 v0, 0x6

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 195
    return-void

    .line 193
    :cond_0
    const/high16 v0, 0x4

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 143
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 144
    :goto_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 145
    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 146
    :cond_1
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 147
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 143
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
