.class public Lcom/wandoujia/p4/game/view/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lftx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/p4/game/view/LayoutConfiguration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    .line 36
    new-instance v0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    invoke-direct {v0, p1, p2}, Lcom/wandoujia/p4/game/view/LayoutConfiguration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    invoke-direct {v0, p1, p2}, Lcom/wandoujia/p4/game/view/LayoutConfiguration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    .line 42
    return-void
.end method

.method private a(Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;)F
    .locals 2
    .parameter

    .prologue
    .line 284
    iget v0, p1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->c:F

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v0, v0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->c:F

    goto :goto_1
.end method

.method private static a(III)I
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    sparse-switch p0, :sswitch_data_0

    .line 149
    :goto_0
    :sswitch_0
    return p2

    .line 140
    :sswitch_1
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :sswitch_2
    move p2, p1

    .line 144
    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(I)Landroid/graphics/Paint;
    .locals 2
    .parameter

    .prologue
    .line 381
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 382
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 383
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 385
    return-object v0
.end method

.method private a(Lftx;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x4000

    .line 172
    iget-object v3, p1, Lftx;->a:Ljava/util/List;

    .line 173
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 174
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 175
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    .line 177
    iget-object v5, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v5, v5, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    if-nez v5, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingLeft()I

    move-result v5

    iget v6, p1, Lftx;->i:I

    add-int/2addr v5, v6

    iget v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->f:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingTop()I

    move-result v6

    iget v7, p1, Lftx;->h:I

    add-int/2addr v6, v7

    iget v7, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->i:I

    add-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->a(II)V

    .line 181
    iget v5, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->g:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v1, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->h:I

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->measure(II)V

    .line 174
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingLeft()I

    move-result v5

    iget v6, p1, Lftx;->h:I

    add-int/2addr v5, v6

    iget v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->i:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingTop()I

    move-result v6

    iget v7, p1, Lftx;->i:I

    add-int/2addr v6, v7

    iget v7, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->f:I

    add-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->a(II)V

    .line 189
    iget v5, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->h:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v1, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->g:I

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 195
    :cond_1
    return-void
.end method

.method private b(Lftx;)V
    .locals 14
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v6, p1, Lftx;->a:Ljava/util/List;

    .line 235
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 236
    if-gtz v7, :cond_1

    .line 277
    :cond_0
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    move v1, v2

    move v5, v0

    .line 241
    :goto_0
    if-ge v1, v7, :cond_2

    .line 242
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    .line 244
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/game/view/FlowLayout;->a(Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;)F

    move-result v0

    add-float v3, v5, v0

    .line 241
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v5, v3

    goto :goto_0

    .line 247
    :cond_2
    add-int/lit8 v0, v7, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    .line 249
    iget v1, p1, Lftx;->d:I

    iget v3, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->g:I

    iget v0, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->f:I

    add-int/2addr v0, v3

    sub-int v8, v1, v0

    move v3, v2

    move v4, v2

    .line 251
    :goto_1
    if-ge v3, v7, :cond_0

    .line 252
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    .line 255
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/game/view/FlowLayout;->a(Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;)F

    move-result v9

    .line 256
    iget v1, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->b:I

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_4

    iget v1, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->b:I

    .line 257
    :goto_3
    int-to-float v10, v8

    mul-float/2addr v9, v10

    div-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 259
    iget v10, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->g:I

    iget v11, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->d:I

    add-int/2addr v10, v11

    .line 260
    iget v11, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->h:I

    iget v12, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->e:I

    add-int/2addr v11, v12

    .line 262
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 263
    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 264
    iput v4, v12, Landroid/graphics/Rect;->left:I

    .line 265
    add-int v13, v10, v9

    add-int/2addr v13, v4

    iput v13, v12, Landroid/graphics/Rect;->right:I

    .line 266
    iget v13, p1, Lftx;->g:I

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    .line 268
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 269
    invoke-static {v1, v10, v11, v12, v13}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 271
    add-int v1, v4, v9

    .line 272
    iget v4, v13, Landroid/graphics/Rect;->left:I

    iget v9, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->f:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->f:I

    .line 273
    iget v4, v13, Landroid/graphics/Rect;->top:I

    iput v4, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->i:I

    .line 274
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v9, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->d:I

    sub-int/2addr v4, v9

    iput v4, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->g:I

    .line 275
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v9, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->e:I

    sub-int/2addr v4, v9

    iput v4, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->h:I

    .line 251
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 256
    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v1, v1, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->d:I

    goto :goto_3
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 307
    instance-of v0, p1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v13

    .line 301
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget-boolean v0, v0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->b:Z

    if-eqz v0, :cond_4

    const/16 v0, -0x100

    invoke-static {v0}, Lcom/wandoujia/p4/game/view/FlowLayout;->a(I)Landroid/graphics/Paint;

    move-result-object v5

    const/high16 v0, -0x1

    invoke-static {v0}, Lcom/wandoujia/p4/game/view/FlowLayout;->a(I)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->rightMargin:I

    if-lez v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float v3, v1, v0

    move-object/from16 v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x4080

    sub-float v7, v0, v3

    const/high16 v0, 0x4080

    sub-float v8, v2, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x4080

    sub-float v7, v0, v3

    const/high16 v0, 0x4080

    add-float v8, v2, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->leftMargin:I

    if-lez v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v3, v1, v0

    move-object/from16 v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    const/high16 v3, 0x4080

    add-float v7, v0, v3

    const/high16 v0, 0x4080

    sub-float v8, v2, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    const/high16 v3, 0x4080

    add-float v7, v0, v3

    const/high16 v0, 0x4080

    add-float v8, v2, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->bottomMargin:I

    if-lez v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float v4, v2, v0

    move-object/from16 v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x4080

    sub-float v7, v1, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x4080

    sub-float v8, v0, v3

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x4080

    add-float v7, v1, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x4080

    sub-float v8, v0, v3

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->topMargin:I

    if-lez v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    sub-float v4, v2, v0

    move-object/from16 v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x4080

    sub-float v7, v1, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    const/high16 v3, 0x4080

    add-float v8, v0, v3

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    sub-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x4080

    add-float v7, v1, v0

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    const/high16 v3, 0x4080

    add-float v8, v0, v3

    iget v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    sub-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget-boolean v0, v12, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v0, v0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    if-nez v0, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    const/high16 v2, 0x40c0

    sub-float v2, v0, v2

    const/high16 v3, 0x40c0

    add-float v4, v0, v3

    move-object/from16 v0, p1

    move v3, v1

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 302
    :cond_4
    :goto_0
    return v13

    .line 301
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v2, v1

    const/high16 v1, 0x40c0

    sub-float v1, v0, v1

    const/high16 v3, 0x40c0

    add-float/2addr v3, v0

    move-object/from16 v0, p1

    move v4, v2

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v0, v0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->d:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x0

    .line 430
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v0, v0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->e:I

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v0, v0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    return v0
.end method

.method public getWeightDefault()F
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v0, v0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->c:F

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
    .line 289
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getChildCount()I

    move-result v2

    .line 290
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 291
    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/game/view/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 292
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    .line 293
    invoke-static {v0}, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->a(Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;)I

    move-result v4

    iget v5, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    invoke-static {v0}, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->b(Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;)I

    move-result v5

    iget v6, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    invoke-static {v0}, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->a(Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;)I

    move-result v6

    iget v7, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->b(Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;)I

    move-result v7

    iget v0, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 290
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 47
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingBottom()I

    move-result v3

    sub-int v3, v2, v3

    .line 48
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 49
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v2, v2, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    if-nez v2, :cond_1

    move v2, v1

    .line 51
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v6, v6, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    if-nez v6, :cond_2

    .line 52
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v1, v1, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    if-nez v1, :cond_3

    .line 53
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 56
    new-instance v7, Lftx;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    invoke-direct {v7, v2, v1}, Lftx;-><init>(ILcom/wandoujia/p4/game/view/LayoutConfiguration;)V

    .line 57
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getChildCount()I

    move-result v9

    .line 60
    const/4 v1, 0x0

    move v8, v1

    :goto_3
    if-ge v8, v9, :cond_b

    .line 61
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/wandoujia/p4/game/view/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 62
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_14

    .line 63
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingRight()I

    move-result v11

    add-int/2addr v6, v11

    iget v11, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v6, v11}, Lcom/wandoujia/p4/game/view/FlowLayout;->getChildMeasureSpec(III)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v11, v12}, Lcom/wandoujia/p4/game/view/FlowLayout;->getChildMeasureSpec(III)I

    move-result v11

    invoke-virtual {v10, v6, v11}, Landroid/view/View;->measure(II)V

    .line 73
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v6, v6, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    if-nez v6, :cond_4

    iget v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->leftMargin:I

    iget v11, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v11

    iput v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->d:I

    iget v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->topMargin:I

    iget v11, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v11

    iput v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->e:I

    .line 74
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v6, v6, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    if-nez v6, :cond_5

    .line 75
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->g:I

    .line 76
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->h:I

    .line 82
    :goto_5
    iget-boolean v1, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->a:Z

    if-nez v1, :cond_0

    if-eqz v4, :cond_8

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    const/4 v6, 0x0

    if-eqz v1, :cond_13

    iget v1, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->d:I

    :goto_6
    iget-object v6, v7, Lftx;->b:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v6, v6, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    if-nez v6, :cond_6

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v1, v6

    :goto_7
    iget v6, v7, Lftx;->f:I

    add-int/2addr v1, v6

    iget v6, v7, Lftx;->c:I

    if-gt v1, v6, :cond_7

    const/4 v1, 0x1

    :goto_8
    if-nez v1, :cond_8

    :cond_0
    const/4 v1, 0x1

    .line 83
    :goto_9
    if-eqz v1, :cond_12

    .line 84
    new-instance v1, Lftx;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    invoke-direct {v1, v2, v6}, Lftx;-><init>(ILcom/wandoujia/p4/game/view/LayoutConfiguration;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v6, v6, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v6, v6, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->e:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 86
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 92
    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v6, v6, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    if-nez v6, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v6, v6, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->e:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    .line 93
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v10}, Lftx;->a(ILandroid/view/View;)V

    .line 60
    :goto_b
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-object v7, v1

    goto/16 :goto_3

    :cond_1
    move v2, v3

    .line 50
    goto/16 :goto_0

    :cond_2
    move v3, v1

    .line 51
    goto/16 :goto_1

    :cond_3
    move v4, v5

    .line 52
    goto/16 :goto_2

    .line 73
    :cond_4
    iget v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->topMargin:I

    iget v11, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v11

    iput v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->d:I

    iget v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->leftMargin:I

    iget v11, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v11

    iput v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->e:I

    goto/16 :goto_4

    .line 78
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->g:I

    .line 79
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->h:I

    goto/16 :goto_5

    .line 82
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v1, v6

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 88
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 95
    :cond_a
    iget-object v6, v1, Lftx;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6, v10}, Lftx;->a(ILandroid/view/View;)V

    goto :goto_b

    .line 99
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v1, 0x0

    move v8, v6

    move v6, v1

    :goto_c
    if-ge v6, v12, :cond_d

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftx;

    invoke-virtual {v1, v8}, Lftx;->a(I)V

    iget v9, v1, Lftx;->g:I

    add-int/2addr v8, v9

    const/4 v9, 0x0

    iget-object v13, v1, Lftx;->a:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v1, 0x0

    move v10, v9

    move v9, v1

    :goto_d
    if-ge v9, v14, :cond_c

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    iput v10, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->f:I

    iget v15, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->g:I

    iget v1, v1, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->d:I

    add-int/2addr v1, v15

    add-int/2addr v10, v1

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_d

    :cond_c
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_c

    .line 101
    :cond_d
    const/4 v6, 0x0

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 103
    const/4 v1, 0x0

    move v8, v6

    move v6, v1

    :goto_e
    if-ge v6, v9, :cond_e

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftx;

    .line 105
    iget v1, v1, Lftx;->d:I

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 103
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_e

    .line 107
    :cond_e
    iget v1, v7, Lftx;->h:I

    iget v6, v7, Lftx;->g:I

    add-int/2addr v6, v1

    .line 109
    invoke-static {v4, v2, v8}, Lcom/wandoujia/p4/game/view/FlowLayout;->a(III)I

    move-result v4

    .line 110
    invoke-static {v5, v3, v6}, Lcom/wandoujia/p4/game/view/FlowLayout;->a(III)I

    move-result v2

    .line 112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_f

    add-int/lit8 v1, v7, -0x1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftx;

    iget v3, v1, Lftx;->g:I

    iget v1, v1, Lftx;->h:I

    add-int/2addr v1, v3

    sub-int v10, v2, v1

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_f
    if-ge v2, v7, :cond_f

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftx;

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getGravity()I

    move-result v11

    mul-int/lit8 v12, v10, 0x1

    div-int/2addr v12, v7

    int-to-float v12, v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget v13, v1, Lftx;->d:I

    iget v14, v1, Lftx;->g:I

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    iput v3, v15, Landroid/graphics/Rect;->top:I

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->left:I

    iput v4, v15, Landroid/graphics/Rect;->right:I

    add-int v16, v14, v12

    add-int v16, v16, v3

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v16

    invoke-static {v11, v13, v14, v15, v0}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    add-int/2addr v3, v12

    move-object/from16 v0, v16

    iget v11, v0, Landroid/graphics/Rect;->left:I

    iget v12, v1, Lftx;->i:I

    add-int/2addr v11, v12

    iput v11, v1, Lftx;->i:I

    move-object/from16 v0, v16

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v11}, Lftx;->a(I)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget v12, v1, Lftx;->f:I

    iget v13, v1, Lftx;->d:I

    sub-int/2addr v12, v13

    iput v11, v1, Lftx;->d:I

    add-int/2addr v11, v12

    iput v11, v1, Lftx;->f:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, v1, Lftx;->g:I

    iget v13, v1, Lftx;->e:I

    sub-int/2addr v12, v13

    iput v11, v1, Lftx;->g:I

    sub-int/2addr v11, v12

    iput v11, v1, Lftx;->e:I

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f

    .line 114
    :cond_f
    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v9, :cond_10

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftx;

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/game/view/FlowLayout;->b(Lftx;)V

    .line 117
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/game/view/FlowLayout;->a(Lftx;)V

    .line 114
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_10

    .line 121
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v2

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iget v2, v2, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    if-nez v2, :cond_11

    .line 124
    add-int v2, v1, v8

    .line 125
    add-int v1, v3, v6

    .line 130
    :goto_11
    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/wandoujia/p4/game/view/FlowLayout;->resolveSize(II)I

    move-result v2

    move/from16 v0, p2

    invoke-static {v1, v0}, Lcom/wandoujia/p4/game/view/FlowLayout;->resolveSize(II)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/p4/game/view/FlowLayout;->setMeasuredDimension(II)V

    .line 131
    return-void

    .line 127
    :cond_11
    add-int v2, v1, v6

    .line 128
    add-int v1, v3, v8

    goto :goto_11

    :cond_12
    move-object v1, v7

    goto/16 :goto_a

    :cond_13
    move v1, v6

    goto/16 :goto_6

    :cond_14
    move-object v1, v7

    goto/16 :goto_b
.end method

.method public setDebugDraw(Z)V
    .locals 1
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    iput-boolean p1, v0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->b:Z

    .line 403
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->invalidate()V

    .line 404
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->b(I)V

    .line 421
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->requestLayout()V

    .line 422
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->c(I)V

    .line 435
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->requestLayout()V

    .line 436
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a(I)V

    .line 394
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->requestLayout()V

    .line 395
    return-void
.end method

.method public setWeightDefault(F)V
    .locals 1
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout;->a:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a(F)V

    .line 412
    invoke-virtual {p0}, Lcom/wandoujia/p4/game/view/FlowLayout;->requestLayout()V

    .line 413
    return-void
.end method
