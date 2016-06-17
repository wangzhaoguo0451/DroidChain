.class public Lcom/wandoujia/p4/views/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 24
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->a:I

    .line 25
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->b:I

    .line 26
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->c:I

    .line 28
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->d:I

    .line 29
    iput-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->e:Z

    .line 34
    iput-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->f:Z

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->g:I

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/p4/views/FlowLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->a:I

    .line 25
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->b:I

    .line 26
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->c:I

    .line 28
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->d:I

    .line 29
    iput-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->e:Z

    .line 34
    iput-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->f:Z

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->g:I

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/views/FlowLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->a:I

    .line 25
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->b:I

    .line 26
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->c:I

    .line 28
    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->d:I

    .line 29
    iput-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->e:Z

    .line 34
    iput-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->f:Z

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->g:I

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/views/FlowLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method private static a(I)Landroid/graphics/Paint;
    .locals 2
    .parameter

    .prologue
    .line 373
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 374
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 375
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 377
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 300
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 302
    const/4 v0, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->a:I

    .line 303
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->b:I

    .line 304
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->c:I

    .line 305
    const/4 v0, 0x7

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->d:I

    .line 306
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 281
    instance-of v0, p1, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 4
    .parameter

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/FlowLayout;->getChildCount()I

    move-result v1

    .line 231
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 232
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 236
    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setPressed(Z)V

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v17

    .line 275
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->e:Z

    if-eqz v1, :cond_2

    const/16 v1, -0x100

    invoke-static {v1}, Lcom/wandoujia/p4/views/FlowLayout;->a(I)Landroid/graphics/Paint;

    move-result-object v6

    const v1, -0xff0100

    invoke-static {v1}, Lcom/wandoujia/p4/views/FlowLayout;->a(I)Landroid/graphics/Paint;

    move-result-object v15

    const/high16 v1, -0x1

    invoke-static {v1}, Lcom/wandoujia/p4/views/FlowLayout;->a(I)Landroid/graphics/Paint;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;

    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->d(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->d(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v2, v1

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->d(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    const/high16 v4, 0x4080

    sub-float v8, v1, v4

    const/high16 v1, 0x4080

    sub-float v9, v3, v1

    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->d(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v10, v2, v1

    move-object/from16 v7, p1

    move v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->d(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    const/high16 v4, 0x4080

    sub-float v8, v1, v4

    const/high16 v1, 0x4080

    add-float v9, v3, v1

    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->d(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v10, v2, v1

    move-object/from16 v7, p1

    move v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v3, v1

    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v5, v3, v1

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x4080

    sub-float v8, v2, v1

    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    const/high16 v4, 0x4080

    sub-float v9, v1, v4

    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v11, v3, v1

    move-object/from16 v7, p1

    move v10, v2

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x4080

    add-float v8, v2, v1

    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    const/high16 v4, 0x4080

    sub-float v9, v1, v4

    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v11, v3, v1

    move-object/from16 v7, p1

    move v10, v2

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    invoke-static/range {v16 .. v16}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->c:I

    if-nez v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    const/high16 v3, 0x40c0

    sub-float v3, v1, v3

    const/high16 v4, 0x40c0

    add-float v5, v1, v4

    move-object/from16 v1, p1

    move v4, v2

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 276
    :cond_2
    :goto_2
    return v17

    .line 275
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->a:I

    if-lez v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v9, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->a:I

    int-to-float v1, v1

    add-float v10, v8, v1

    move-object/from16 v7, p1

    move v11, v9

    move-object v12, v15

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->a:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    const/high16 v2, 0x4080

    sub-float v11, v1, v2

    const/high16 v1, 0x4080

    sub-float v12, v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->a:I

    int-to-float v1, v1

    add-float v13, v8, v1

    move-object/from16 v10, p1

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->a:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    const/high16 v2, 0x4080

    sub-float v11, v1, v2

    const/high16 v1, 0x4080

    add-float v12, v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->a:I

    int-to-float v1, v1

    add-float v13, v8, v1

    move-object/from16 v10, p1

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->b:I

    if-lez v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v11, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->b:I

    int-to-float v1, v1

    add-float v14, v12, v1

    move-object/from16 v10, p1

    move v13, v11

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x4080

    sub-float v2, v11, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    const/high16 v3, 0x4080

    sub-float v3, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->b:I

    int-to-float v1, v1

    add-float v5, v12, v1

    move-object/from16 v1, p1

    move v4, v11

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x4080

    add-float v9, v11, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    const/high16 v2, 0x4080

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/wandoujia/p4/views/FlowLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v12, v1

    move-object/from16 v8, p1

    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    const/high16 v2, 0x40c0

    sub-float v2, v1, v2

    const/high16 v4, 0x40c0

    add-float/2addr v4, v1

    move-object/from16 v1, p1

    move v5, v3

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->g:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/FlowLayout;->getChildCount()I

    move-result v2

    .line 265
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 266
    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/views/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 267
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;

    .line 268
    invoke-static {v0}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->e(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v4

    invoke-static {v0}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->b(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v5

    invoke-static {v0}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->e(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->b(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 265
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 270
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 29
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/wandoujia/p4/views/FlowLayout;->g:I

    .line 75
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/views/FlowLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/views/FlowLayout;->getPaddingLeft()I

    move-result v3

    sub-int v7, v2, v3

    .line 77
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/views/FlowLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/views/FlowLayout;->getPaddingBottom()I

    move-result v3

    sub-int v8, v2, v3

    .line 80
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 81
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 86
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wandoujia/p4/views/FlowLayout;->c:I

    if-nez v2, :cond_3

    move v3, v4

    move v6, v7

    .line 94
    :goto_0
    const/16 v21, 0x0

    .line 95
    const/16 v20, 0x0

    .line 96
    const/16 v19, 0x0

    .line 99
    const/16 v18, 0x0

    .line 101
    const/16 v17, 0x0

    .line 102
    const/16 v16, 0x0

    .line 104
    const/4 v15, 0x0

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/views/FlowLayout;->getChildCount()I

    move-result v25

    .line 108
    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v25

    if-ge v14, v0, :cond_11

    .line 109
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/wandoujia/p4/views/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 110
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v9, 0x8

    if-eq v2, v9, :cond_18

    .line 111
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;

    .line 116
    const/high16 v9, 0x4000

    if-ne v4, v9, :cond_4

    const/high16 v9, -0x8000

    :goto_2
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 119
    const/high16 v9, 0x4000

    if-ne v5, v9, :cond_5

    const/high16 v9, -0x8000

    :goto_3
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 123
    iget v9, v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->width:I

    const/4 v13, -0x1

    if-eq v9, v13, :cond_17

    iget v9, v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->width:I

    const/4 v13, -0x2

    if-eq v9, v13, :cond_17

    .line 124
    iget v9, v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->width:I

    const/high16 v10, 0x4000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 127
    :goto_4
    iget v10, v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->height:I

    const/4 v13, -0x1

    if-eq v10, v13, :cond_16

    iget v10, v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->height:I

    const/4 v13, -0x2

    if-eq v10, v13, :cond_16

    .line 128
    iget v10, v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->height:I

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 131
    :goto_5
    invoke-virtual {v12, v9, v10}, Landroid/view/View;->measure(II)V

    .line 133
    iget v9, v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->b:I

    sget v10, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a:I

    if-eq v9, v10, :cond_6

    const/4 v9, 0x1

    :goto_6
    if-eqz v9, :cond_7

    invoke-static {v2}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->d(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v9

    .line 134
    :goto_7
    iget v10, v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c:I

    sget v11, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a:I

    if-eq v10, v11, :cond_8

    const/4 v10, 0x1

    :goto_8
    if-eqz v10, :cond_9

    invoke-static {v2}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v10

    .line 136
    :goto_9
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 137
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 144
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wandoujia/p4/views/FlowLayout;->c:I

    if-nez v13, :cond_a

    move v13, v10

    move v10, v11

    move v11, v12

    .line 153
    :goto_a
    add-int v22, v19, v10

    .line 157
    add-int v23, v22, v9

    .line 159
    invoke-static {v2}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)Z

    move-result v19

    if-nez v19, :cond_0

    if-eqz v3, :cond_b

    move/from16 v0, v22

    if-le v0, v6, :cond_b

    :cond_0
    const/16 v19, 0x1

    move/from16 v24, v19

    .line 161
    :goto_b
    const/16 v19, 0x0

    .line 162
    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wandoujia/p4/views/FlowLayout;->d:I

    move/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wandoujia/p4/views/FlowLayout;->g:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wandoujia/p4/views/FlowLayout;->d:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 163
    :cond_1
    add-int v18, v18, v21

    .line 167
    add-int v21, v11, v13

    .line 168
    add-int/2addr v9, v10

    .line 169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wandoujia/p4/views/FlowLayout;->g:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wandoujia/p4/views/FlowLayout;->g:I

    move/from16 v22, v10

    move/from16 v20, v21

    move/from16 v21, v19

    move/from16 v19, v9

    move v9, v11

    .line 176
    :goto_c
    if-nez v21, :cond_14

    .line 177
    add-int/2addr v13, v11

    move/from16 v0, v20

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 179
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 183
    move-object/from16 v0, p0

    iget v9, v0, Lcom/wandoujia/p4/views/FlowLayout;->c:I

    if-nez v9, :cond_d

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/views/FlowLayout;->getPaddingLeft()I

    move-result v9

    add-int v9, v9, v22

    sub-int v10, v9, v10

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/views/FlowLayout;->getPaddingTop()I

    move-result v9

    add-int v9, v9, v18

    .line 190
    :goto_d
    invoke-virtual {v2, v10, v9}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a(II)V

    .line 192
    move/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 193
    add-int v10, v18, v13

    move v12, v13

    move/from16 v13, v16

    .line 196
    :goto_e
    if-eqz v24, :cond_e

    add-int/lit8 v2, v14, -0x1

    move v9, v2

    .line 198
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/wandoujia/p4/views/FlowLayout;->f:Z

    if-eqz v2, :cond_10

    if-nez v24, :cond_2

    add-int/lit8 v2, v25, -0x1

    if-ne v9, v2, :cond_10

    .line 199
    :cond_2
    sub-int v2, v9, v15

    add-int/lit8 v17, v2, 0x1

    .line 200
    const/4 v2, 0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_10

    .line 201
    const/4 v2, 0x0

    move/from16 v16, v15

    .line 202
    :goto_10
    move/from16 v0, v16

    if-gt v0, v9, :cond_f

    .line 203
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v2, v2, v20

    .line 202
    add-int/lit8 v16, v16, 0x1

    goto :goto_10

    :cond_3
    move v3, v5

    move v6, v8

    .line 91
    goto/16 :goto_0

    :cond_4
    move v9, v4

    .line 116
    goto/16 :goto_2

    :cond_5
    move v9, v5

    .line 119
    goto/16 :goto_3

    .line 133
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/wandoujia/p4/views/FlowLayout;->a:I

    goto/16 :goto_7

    .line 134
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_9
    move-object/from16 v0, p0

    iget v10, v0, Lcom/wandoujia/p4/views/FlowLayout;->b:I

    goto/16 :goto_9

    :cond_a
    move v13, v9

    move v9, v10

    move v10, v12

    .line 151
    goto/16 :goto_a

    .line 159
    :cond_b
    const/16 v19, 0x0

    move/from16 v24, v19

    goto/16 :goto_b

    .line 170
    :cond_c
    if-eqz v24, :cond_15

    .line 173
    const v9, 0x7fffffff

    const v19, 0x7fffffff

    move/from16 v0, v19

    invoke-virtual {v2, v9, v0}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a(II)V

    .line 174
    const/4 v9, 0x1

    move/from16 v19, v23

    move/from16 v28, v9

    move/from16 v9, v20

    move/from16 v20, v21

    move/from16 v21, v28

    goto/16 :goto_c

    .line 187
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/views/FlowLayout;->getPaddingLeft()I

    move-result v9

    add-int v10, v9, v18

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/views/FlowLayout;->getPaddingTop()I

    move-result v9

    add-int v9, v9, v22

    sub-int/2addr v9, v12

    goto/16 :goto_d

    :cond_e
    move v9, v14

    .line 196
    goto :goto_f

    .line 205
    :cond_f
    sub-int v2, v6, v2

    add-int/lit8 v16, v17, -0x1

    div-int v20, v2, v16

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/views/FlowLayout;->getPaddingLeft()I

    move-result v2

    move/from16 v16, v15

    move/from16 v17, v2

    .line 207
    :goto_11
    move/from16 v0, v16

    if-gt v0, v9, :cond_10

    .line 208
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;

    .line 209
    invoke-static {v2}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->b(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a(II)V

    .line 210
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, v17

    add-int v17, v2, v20

    .line 207
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_11

    .line 214
    :cond_10
    if-eqz v24, :cond_13

    move v2, v14

    move v9, v10

    move v15, v13

    move v13, v12

    move v10, v11

    move/from16 v11, v18

    move/from16 v12, v19

    .line 108
    :goto_12
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v15

    move v15, v2

    goto/16 :goto_1

    .line 219
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/wandoujia/p4/views/FlowLayout;->c:I

    if-nez v2, :cond_12

    .line 220
    move/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/views/FlowLayout;->resolveSize(II)I

    move-result v2

    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/wandoujia/p4/views/FlowLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/views/FlowLayout;->setMeasuredDimension(II)V

    .line 226
    :goto_13
    return-void

    .line 223
    :cond_12
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/views/FlowLayout;->resolveSize(II)I

    move-result v2

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/wandoujia/p4/views/FlowLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/views/FlowLayout;->setMeasuredDimension(II)V

    goto :goto_13

    :cond_13
    move v2, v15

    move v9, v10

    move v10, v11

    move v15, v13

    move v13, v12

    move/from16 v11, v18

    move/from16 v12, v19

    goto :goto_12

    :cond_14
    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v9

    move/from16 v13, v20

    goto/16 :goto_e

    :cond_15
    move/from16 v9, v20

    move/from16 v20, v21

    move/from16 v21, v19

    move/from16 v19, v23

    goto/16 :goto_c

    :cond_16
    move v10, v11

    goto/16 :goto_5

    :cond_17
    move v9, v10

    goto/16 :goto_4

    :cond_18
    move v2, v15

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v15, v21

    goto :goto_12
.end method

.method public setMaxLines(I)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->d:I

    if-eq v0, p1, :cond_0

    .line 58
    iput p1, p0, Lcom/wandoujia/p4/views/FlowLayout;->d:I

    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/FlowLayout;->requestLayout()V

    .line 61
    :cond_0
    return-void
.end method

.method public setSpaceSharing(Z)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout;->f:Z

    if-eq v0, p1, :cond_0

    .line 65
    iput-boolean p1, p0, Lcom/wandoujia/p4/views/FlowLayout;->f:Z

    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/FlowLayout;->requestLayout()V

    .line 68
    :cond_0
    return-void
.end method
