.class public Lcom/wandoujia/phoenix2/av/view/AutoRotateAsyncImageView;
.super Lcom/wandoujia/image/view/AsyncImageView;
.source "AutoRotateAsyncImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/AutoRotateAsyncImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/AutoRotateAsyncImageView;->getHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/wandoujia/base/utils/ImageUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method
