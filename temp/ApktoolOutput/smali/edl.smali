.class final Ledl;
.super Ljava/lang/Object;
.source "BlurManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Ledk;


# direct methods
.method constructor <init>(Ledk;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Ledl;->b:Ledk;

    iput-object p2, p0, Ledl;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 57
    iget-object v0, p0, Ledl;->b:Ledk;

    iget-object v0, v0, Ledk;->a:Ledm;

    iget-object v1, p0, Ledl;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v2, v0, Ledm;->a:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v2}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->c(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/utils/ImageUtils;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget v4, v2, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->a:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    iget v4, v2, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->b:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iget v5, v2, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->a:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, v2, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->b:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v6, v1

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v1, v2, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->postInvalidate()V

    :cond_2
    iget-object v1, v0, Ledm;->a:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->c(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;

    move-result-object v1

    iget-object v0, v0, Ledm;->a:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/wandoujia/game_launcher/lib/R$color;->pure_white_translucent_60:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->setBackgroundMaskColor(I)V

    .line 58
    :cond_3
    return-void
.end method
