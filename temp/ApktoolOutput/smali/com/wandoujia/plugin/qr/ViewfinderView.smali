.class public final Lcom/wandoujia/plugin/qr/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final c:[I


# instance fields
.field a:Landroid/graphics/Bitmap;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbns;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lgzk;

.field private final e:Landroid/graphics/Paint;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbns;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wandoujia/plugin/qr/ViewfinderView;->c:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p0}, Lcom/wandoujia/plugin/qr/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    sget v1, Lcom/wandoujia/plugin/qr/R$color;->viewfinder_mask:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->f:I

    .line 65
    sget v1, Lcom/wandoujia/plugin/qr/R$color;->result_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 66
    sget v1, Lcom/wandoujia/plugin/qr/R$color;->viewfinder_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->g:I

    .line 67
    sget v1, Lcom/wandoujia/plugin/qr/R$color;->viewfinder_laser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->h:I

    .line 68
    sget v1, Lcom/wandoujia/plugin/qr/R$color;->possible_result_points:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->i:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->j:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->b:Ljava/util/List;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->k:Ljava/util/List;

    .line 72
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->d:Lgzk;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->d:Lgzk;

    invoke-virtual {v0}, Lgzk;->d()Landroid/graphics/Rect;

    move-result-object v8

    .line 84
    if-eqz v8, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 91
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->f:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    int-to-float v3, v9

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, v9

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 95
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    sget-object v1, Lcom/wandoujia/plugin/qr/ViewfinderView;->c:[I

    iget v2, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->j:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->j:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->j:I

    .line 114
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 115
    iget v1, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 117
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->d:Lgzk;

    invoke-virtual {v0}, Lgzk;->e()Landroid/graphics/Rect;

    move-result-object v0

    .line 118
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 119
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 121
    iget-object v3, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->b:Ljava/util/List;

    .line 122
    iget-object v4, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->k:Ljava/util/List;

    .line 123
    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 124
    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 125
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->k:Ljava/util/List;

    .line 140
    :goto_1
    if-eqz v4, :cond_5

    .line 141
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    const/16 v3, 0x50

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 142
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    iget v3, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->i:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    monitor-enter v4

    .line 144
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbns;

    .line 146
    iget v7, v0, Lbns;->a:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    add-int/2addr v7, v5

    int-to-float v7, v7

    iget v0, v0, Lbns;->b:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v6

    int-to-float v0, v0

    const/high16 v9, 0x4040

    iget-object v10, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 128
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->b:Ljava/util/List;

    .line 129
    iput-object v3, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->k:Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    const/16 v7, 0xa0

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    iget v7, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->i:I

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    monitor-enter v3

    .line 133
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbns;

    .line 134
    iget v9, v0, Lbns;->a:F

    mul-float/2addr v9, v1

    float-to-int v9, v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    iget v0, v0, Lbns;->b:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v6

    int-to-float v0, v0

    const/high16 v10, 0x40c0

    iget-object v11, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 138
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 150
    :cond_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :cond_5
    const-wide/16 v2, 0x50

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v0, -0x6

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v0, -0x6

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v0, 0x6

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v0, 0x6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/wandoujia/plugin/qr/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method

.method public final setCameraManager(Lgzk;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wandoujia/plugin/qr/ViewfinderView;->d:Lgzk;

    .line 76
    return-void
.end method
