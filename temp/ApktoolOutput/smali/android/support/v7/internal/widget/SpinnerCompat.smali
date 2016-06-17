.class public final Landroid/support/v7/internal/widget/SpinnerCompat;
.super Landroid/support/v7/internal/widget/AbsSpinnerCompat;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private A:Z

.field private B:Landroid/graphics/Rect;

.field private w:Ltr;

.field private x:Lqw;

.field private y:Lqs;

.field private z:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;IB)V

    .line 142
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IB)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;I)V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->B:Landroid/graphics/Rect;

    .line 163
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    invoke-static {p1, v5, v0, p2}, Lrd;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lrd;

    move-result-object v0

    .line 167
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_background:I

    invoke-virtual {v0, v1}, Lrd;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_background:I

    invoke-virtual {v0, v1}, Lrd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Spinner_spinnerMode:I

    invoke-virtual {v0, v1, v4}, Lrd;->a(II)I

    move-result v1

    .line 175
    packed-switch v1, :pswitch_data_0

    .line 205
    :goto_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_gravity:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lrd;->a(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->z:I

    .line 211
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->Spinner_prompt:I

    iget-object v3, v0, Lrd;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lqw;->a(Ljava/lang/CharSequence;)V

    .line 213
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Spinner_disableChildrenWhenDisabled:I

    invoke-virtual {v0, v1, v4}, Lrd;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->A:Z

    .line 216
    iget-object v1, v0, Lrd;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->y:Lqs;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->y:Lqs;

    invoke-interface {v1, v2}, Lqw;->a(Landroid/widget/ListAdapter;)V

    .line 222
    iput-object v5, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->y:Lqs;

    .line 226
    :cond_1
    invoke-virtual {v0}, Lrd;->a()Lrb;

    .line 227
    return-void

    .line 177
    :pswitch_0
    new-instance v1, Lqr;

    invoke-direct {v1, p0, v4}, Lqr;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;B)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    goto :goto_0

    .line 182
    :pswitch_1
    new-instance v1, Lqt;

    invoke-direct {v1, p0, p1, p2}, Lqt;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;I)V

    .line 184
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Lrd;->d(II)I

    .line 187
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_popupBackground:I

    invoke-virtual {v0, v2}, Lrd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lqt;->a(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    .line 191
    new-instance v2, Lqp;

    invoke-direct {v2, p0, p0, v1}, Lqp;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Lqt;)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->w:Ltr;

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(IZ)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 529
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->m:Z

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->e:Lph;

    invoke-virtual {v0, p1}, Lph;->a(I)Landroid/view/View;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_0

    .line 533
    invoke-direct {p0, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;Z)V

    .line 545
    :goto_0
    return-object v0

    .line 540
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 543
    invoke-direct {p0, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public static synthetic a(Landroid/support/v7/internal/widget/SpinnerCompat;)Lqw;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    return-object v0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 559
    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 563
    :cond_0
    if-eqz p2, :cond_1

    .line 564
    invoke-virtual {p0, p1, v5, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 567
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 568
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->A:Z

    if-eqz v1, :cond_2

    .line 569
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 573
    :cond_2
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->b:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 575
    iget v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->c:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 579
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 585
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 591
    add-int/lit8 v2, v2, 0x0

    .line 594
    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 595
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/SpinnerAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    .line 364
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->e:Lph;

    invoke-virtual {v0}, Lph;->a()V

    .line 366
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 367
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spinner adapter view type count must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    new-instance v1, Lqs;

    invoke-direct {v1, p1}, Lqs;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Lqw;->a(Landroid/widget/ListAdapter;)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_1
    new-instance v0, Lqs;

    invoke-direct {v0, p1}, Lqs;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->y:Lqs;

    goto :goto_0
.end method

.method final a(Lmv;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setOnItemClickListener$7d68f791(Lmv;)V

    .line 419
    return-void
.end method

.method public final getBaseline()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 380
    const/4 v1, 0x0

    .line 382
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 383
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 389
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 391
    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    .line 393
    :cond_1
    return v0

    .line 384
    :cond_2
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 385
    invoke-direct {p0, v3, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(IZ)Landroid/view/View;

    move-result-object v1

    .line 386
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->e:Lph;

    invoke-virtual {v2, v3, v1}, Lph;->a(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 613
    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 614
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 615
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onDetachedFromWindow()V

    .line 401
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    invoke-interface {v0}, Lqw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    invoke-interface {v0}, Lqw;->a()V

    .line 404
    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 449
    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onLayout(ZIIII)V

    .line 450
    iput-boolean v9, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->k:Z

    .line 451
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v1, v3

    iget-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->c()V

    :cond_0
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->r:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a()V

    .line 452
    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->k:Z

    .line 453
    return-void

    .line 451
    :cond_1
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->n:I

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->n:I

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelectedPositionInt(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->e:Lph;

    iget v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->f:I

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v8, v6, v1

    invoke-virtual {v5, v8, v7}, Lph;->a(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->removeAllViewsInLayout()V

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->p:I

    iput v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->f:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->p:I

    invoke-direct {p0, v1, v9}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {p0}, Lgs;->h(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->z:I

    invoke-static {v6, v5}, Lew;->a(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    sparse-switch v5, :sswitch_data_0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->e:Lph;

    invoke-virtual {v0}, Lph;->a()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->invalidate()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->d()V

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->m:Z

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->i:Z

    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->p:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :sswitch_0
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v0, v3

    goto :goto_2

    :sswitch_1
    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onMeasure(II)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v12, -0x2

    const/4 v0, 0x0

    .line 432
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onMeasure(II)V

    .line 433
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredWidth()I

    move-result v6

    .line 435
    iget-object v7, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v7, :cond_1

    :goto_0
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setMeasuredDimension(II)V

    .line 440
    :cond_0
    return-void

    .line 435
    :cond_1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v7}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v1, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v3, v11, v1

    rsub-int/lit8 v3, v3, 0xf

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    move-object v3, v2

    move v4, v0

    move v1, v0

    :goto_1
    if-ge v5, v11, :cond_3

    invoke-interface {v7, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v1, :cond_5

    move-object v1, v2

    :goto_2
    invoke-interface {v7, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v3, v9, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->B:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->B:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 693
    check-cast p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    .line 695
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 697
    iget-boolean v0, p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->c:Z

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 699
    if-eqz v0, :cond_0

    .line 700
    new-instance v1, Lqq;

    invoke-direct {v1, p0}, Lqq;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V

    .line 713
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 716
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 686
    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 687
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    invoke-interface {v0}, Lqw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->c:Z

    .line 688
    return-object v1

    .line 687
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->w:Ltr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->w:Ltr;

    invoke-virtual {v0, p0, p1}, Ltr;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x1

    .line 427
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final performClick()Z
    .locals 2

    .prologue
    .line 599
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->performClick()Z

    move-result v0

    .line 601
    if-nez v0, :cond_0

    .line 602
    const/4 v0, 0x1

    .line 604
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    invoke-interface {v1}, Lqw;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Lqw;

    invoke-interface {v1}, Lqw;->c()V

    .line 609
    :cond_0
    return v0
.end method

.method public final synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 3
    .parameter

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setEnabled(Z)V

    .line 336
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->A:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v1

    .line 338
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 339
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method public final setOnItemClickListener$7d68f791(Lmv;)V
    .locals 2
    .parameter

    .prologue
    .line 414
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
