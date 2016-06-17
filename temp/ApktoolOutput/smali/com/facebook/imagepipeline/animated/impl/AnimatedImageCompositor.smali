.class public final Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;
.super Ljava/lang/Object;
.source "AnimatedImageCompositor.java"


# instance fields
.field public final a:Lani;

.field public final b:Laoe;

.field private final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lani;Laoe;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a:Lani;

    .line 70
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->b:Laoe;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->c:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    return-void
.end method


# virtual methods
.method public final a(ILandroid/graphics/Canvas;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 145
    move v1, p1

    :goto_0
    if-ltz v1, :cond_7

    .line 146
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a:Lani;

    invoke-interface {v0, v1}, Lani;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v0

    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->f:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v3, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v2, v3, :cond_1

    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->REQUIRED:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;

    .line 147
    :goto_1
    sget-object v2, Laod;->a:[I

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 146
    :cond_1
    sget-object v3, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v2, v3, :cond_3

    iget v2, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->a:I

    if-nez v2, :cond_2

    iget v2, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->b:I

    if-nez v2, :cond_2

    iget v2, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->c:I

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a:Lani;

    invoke-interface {v3}, Lani;->f()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v0, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->d:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a:Lani;

    invoke-interface {v2}, Lani;->g()I

    move-result v2

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->NOT_REQUIRED:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->REQUIRED:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v2, v0, :cond_4

    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->SKIP:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->ABORT:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;

    goto :goto_1

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a:Lani;

    invoke-interface {v0, v1}, Lani;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v2

    .line 150
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->b:Laoe;

    invoke-interface {v0, v1}, Laoe;->b(I)Lakk;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_6

    .line 153
    :try_start_0
    invoke-virtual {v3}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    iget-object v0, v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->f:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v0, v4, :cond_5

    .line 155
    invoke-virtual {p0, p2, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .line 159
    invoke-virtual {v3}, Lakk;->close()V

    .line 178
    :goto_2
    return v0

    .line 159
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lakk;->close()V

    throw v0

    .line 162
    :cond_6
    iget-boolean v0, v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->e:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 163
    goto :goto_2

    .line 170
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :pswitch_2
    move v0, v1

    .line 172
    goto :goto_2

    .line 178
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 182
    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->a:I

    int-to-float v1, v0

    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->b:I

    int-to-float v2, v0

    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->a:I

    iget v3, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->c:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->b:I

    iget v4, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->d:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 188
    return-void
.end method
