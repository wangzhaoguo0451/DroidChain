.class public Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;
.super Lcom/wandoujia/image/view/AsyncImageView;
.source "LocalThumbnailAsyncImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    invoke-super {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 30
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    invoke-super {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageResource(I)V

    .line 32
    return-void
.end method
