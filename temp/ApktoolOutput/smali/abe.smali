.class public final Labe;
.super Landroid/graphics/drawable/Drawable;
.source "PicassoDrawable.java"


# static fields
.field private static final a:Landroid/graphics/Paint;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Z

.field private final d:F

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/BitmapDrawable;

.field private g:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

.field private h:I

.field private i:J

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Labe;->a:Landroid/graphics/Paint;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/alipay/squareup/picasso/Request$LoadedFrom;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Labe;->b:Landroid/content/Context;

    .line 118
    iput-object p3, p0, Labe;->g:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    .line 119
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Labe;->d:F

    .line 122
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Labe;->c:Z

    .line 126
    sget-object v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->MEMORY:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    if-eq p3, v0, :cond_0

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labe;->i:J

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Labe;->j:Z

    .line 130
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter

    .prologue
    .line 252
    invoke-virtual {p0}, Labe;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 255
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 256
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 258
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 259
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 260
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 262
    cmpg-float v3, v6, v3

    if-gez v3, :cond_0

    .line 263
    int-to-float v2, v2

    int-to-float v3, v5

    div-float/2addr v2, v3

    .line 264
    int-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 265
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    .line 266
    add-int/2addr v2, v1

    .line 267
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_0
    int-to-float v1, v1

    int-to-float v3, v4

    div-float/2addr v1, v3

    .line 270
    int-to-float v3, v5

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 271
    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    .line 272
    add-int/2addr v1, v2

    .line 273
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/alipay/squareup/picasso/Request$LoadedFrom;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Labe;

    if-eqz v2, :cond_1

    check-cast v0, Labe;

    move-object v2, v0

    .line 33
    :goto_0
    if-eqz v2, :cond_3

    .line 34
    sget-object v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->MEMORY:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    if-eq p3, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v1, v2, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v2, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, v2, Labe;->e:Landroid/graphics/drawable/Drawable;

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, v2, Labe;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, v2, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, v2, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Labe;->a(Landroid/graphics/drawable/Drawable;)V

    iput-object p3, v2, Labe;->g:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Labe;->i:J

    iput-boolean v0, v2, Labe;->j:Z

    invoke-virtual {v2}, Labe;->invalidateSelf()V

    .line 38
    :goto_2
    return-void

    .line 32
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 34
    goto :goto_1

    .line 36
    :cond_3
    new-instance v0, Labe;

    invoke-direct {v0, p1, p2, p3, v1}, Labe;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/alipay/squareup/picasso/Request$LoadedFrom;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x3f80

    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_0

    .line 135
    iget-object v0, p0, Labe;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-boolean v2, p0, Labe;->j:Z

    if-eqz v2, :cond_1

    .line 142
    iget-wide v2, p0, Labe;->i:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Labe;->i:J

    .line 145
    iput v1, p0, Labe;->h:I

    move v0, v1

    .line 154
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Labe;->i:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x4348

    div-float/2addr v2, v3

    .line 148
    cmpl-float v3, v2, v6

    if-ltz v3, :cond_3

    .line 149
    :goto_2
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 150
    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Labe;->h:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 148
    goto :goto_2

    .line 157
    :cond_4
    iget-object v0, p0, Labe;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 158
    iget-object v0, p0, Labe;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    :cond_5
    iget v0, p0, Labe;->h:I

    if-lez v0, :cond_6

    .line 161
    iget-object v0, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Labe;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 162
    iget-object v0, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    iget-object v0, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 165
    :cond_6
    invoke-virtual {p0}, Labe;->invalidateSelf()V

    goto :goto_0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, -0x1

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 201
    iget-object v0, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Labe;->f:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v0}, Labe;->a(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_0
    iget-object v0, p0, Labe;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Labe;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Labe;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 207
    :cond_1
    return-void
.end method

.method public final setAlpha(I)V
    .locals 0
    .parameter

    .prologue
    .line 189
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    return-void
.end method
