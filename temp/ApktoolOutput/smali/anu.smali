.class public final Lanu;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendImpl.java"

# interfaces
.implements Lani;


# instance fields
.field private final a:Laog;

.field private final b:Lano;

.field private final c:Lanm;

.field private final d:Landroid/graphics/Rect;

.field private final e:[I

.field private final f:[I

.field private final g:I

.field private final h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

.field private i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Laog;Lano;Landroid/graphics/Rect;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lanu;->a:Laog;

    .line 54
    iput-object p2, p0, Lanu;->b:Lano;

    .line 55
    iget-object v0, p2, Lano;->a:Lanm;

    iput-object v0, p0, Lanu;->c:Lanm;

    .line 56
    iget-object v0, p0, Lanu;->c:Lanm;

    invoke-interface {v0}, Lanm;->d()[I

    move-result-object v0

    iput-object v0, p0, Lanu;->e:[I

    .line 57
    iget-object v0, p0, Lanu;->e:[I

    invoke-static {v0}, Laog;->a([I)V

    .line 58
    iget-object v0, p0, Lanu;->e:[I

    invoke-static {v0}, Laog;->b([I)I

    move-result v0

    iput v0, p0, Lanu;->g:I

    .line 59
    iget-object v0, p0, Lanu;->e:[I

    invoke-static {v0}, Laog;->c([I)[I

    move-result-object v0

    iput-object v0, p0, Lanu;->f:[I

    .line 60
    iget-object v0, p0, Lanu;->c:Lanm;

    invoke-static {v0, p3}, Lanu;->a(Lanm;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lanu;->d:Landroid/graphics/Rect;

    .line 61
    iget-object v0, p0, Lanu;->c:Lanm;

    invoke-interface {v0}, Lanm;->c()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    iput-object v0, p0, Lanu;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 62
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lanu;->c:Lanm;

    invoke-interface {v1}, Lanm;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lanu;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    iget-object v2, p0, Lanu;->c:Lanm;

    invoke-interface {v2, v0}, Lanm;->b(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v2

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method private static a(Lanm;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p0}, Lanm;->a()I

    move-result v1

    invoke-interface {p0}, Lanm;->b()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-interface {p0}, Lanm;->a()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-interface {p0}, Lanm;->b()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)Lani;
    .locals 3
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lanu;->c:Lanm;

    invoke-static {v0, p1}, Lanu;->a(Lanm;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lanu;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lanu;

    iget-object v1, p0, Lanu;->a:Laog;

    iget-object v2, p0, Lanu;->b:Lano;

    invoke-direct {v0, v1, v2, p1}, Lanu;-><init>(Laog;Lano;Landroid/graphics/Rect;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final a()Lano;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lanu;->b:Lano;

    return-object v0
.end method

.method public final a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lanu;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(ILandroid/graphics/Canvas;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lanu;->c:Lanm;

    invoke-interface {v0, p1}, Lanm;->a(I)Lann;

    move-result-object v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lanu;->c:Lanm;

    invoke-interface {v0}, Lanm;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lanu;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v2, v0

    iget-object v0, p0, Lanu;->c:Lanm;

    invoke-interface {v0}, Lanm;->a()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    iget-object v0, p0, Lanu;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v4, v0

    iget-object v0, p0, Lanu;->c:Lanm;

    invoke-interface {v0}, Lanm;->b()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-interface {v1}, Lann;->b()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    invoke-interface {v1}, Lann;->c()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v1}, Lann;->d()I

    move-result v7

    int-to-double v8, v7

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-interface {v1}, Lann;->e()I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v4, v8

    double-to-int v3, v4

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lanu;->i:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    iget-object v4, p0, Lanu;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lanu;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lanu;->i:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v4, p0, Lanu;->i:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v4, p0, Lanu;->i:Landroid/graphics/Bitmap;

    invoke-interface {v1, v0, v6, v4}, Lann;->a(IILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lanu;->i:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :goto_0
    invoke-interface {v1}, Lann;->a()V

    .line 188
    return-void

    .line 182
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    :catchall_1
    move-exception v0

    invoke-interface {v1}, Lann;->a()V

    throw v0

    .line 184
    :cond_1
    :try_start_4
    invoke-interface {v1}, Lann;->b()I

    move-result v0

    invoke-interface {v1}, Lann;->c()I

    move-result v2

    invoke-interface {v1}, Lann;->d()I

    move-result v3

    invoke-interface {v1}, Lann;->e()I

    move-result v4

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v5, p0, Lanu;->i:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    iget-object v5, p0, Lanu;->c:Lanm;

    invoke-interface {v5}, Lanm;->a()I

    move-result v5

    iget-object v6, p0, Lanu;->c:Lanm;

    invoke-interface {v6}, Lanm;->b()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lanu;->i:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v5, p0, Lanu;->i:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v5, p0, Lanu;->i:Landroid/graphics/Bitmap;

    invoke-interface {v1, v0, v2, v5}, Lann;->a(IILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lanu;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lanu;->c:Lanm;

    invoke-interface {v2}, Lanm;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lanu;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lanu;->c:Lanm;

    invoke-interface {v5}, Lanm;->b()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    int-to-float v0, v3

    int-to-float v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lanu;->i:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lanu;->g:I

    return v0
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lanu;->f:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lanu;->c:Lanm;

    invoke-interface {v0}, Lanm;->c()I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    iget-object v0, p0, Lanu;->f:[I

    array-length v0, v0

    const-string v1, "index"

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_3

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    if-gez p1, :cond_1

    const-string v0, "%s (%s) must not be negative"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Ld;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-gez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "negative size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v3, "%s (%s) must be less than size (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ld;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lanu;->f:[I

    aget v0, v0, p1

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lanu;->c:Lanm;

    invoke-interface {v0}, Lanm;->a()I

    move-result v0

    return v0
.end method

.method public final d(I)I
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lanu;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lanu;->c:Lanm;

    invoke-interface {v0}, Lanm;->b()I

    move-result v0

    return v0
.end method

.method public final e(I)Lakk;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lanu;->b:Lano;

    invoke-virtual {v0, p1}, Lano;->a(I)Lakk;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lanu;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public final f(I)Z
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lanu;->b:Lano;

    invoke-virtual {v0, p1}, Lano;->b(I)Z

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lanu;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized i()V
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanu;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lanu;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lanu;->i:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
