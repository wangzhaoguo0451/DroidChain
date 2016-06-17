.class public Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;
.super Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;
.source "GalleryImageView.java"


# instance fields
.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;[Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0a0044

    .line 37
    invoke-super/range {p0 .. p5}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->onLayout(ZIIII)V

    .line 38
    if-eqz p1, :cond_0

    sub-int v0, p4, p2

    if-lez v0, :cond_0

    sub-int v0, p5, p3

    if-lez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;->h:Ljava/lang/String;

    invoke-static {v0}, Ld;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;->a(Ljava/lang/String;I)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;->h:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;->h:Ljava/lang/String;

    .line 33
    return-void
.end method
