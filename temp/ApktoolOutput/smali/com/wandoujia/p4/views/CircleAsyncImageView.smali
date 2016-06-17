.class public Lcom/wandoujia/p4/views/CircleAsyncImageView;
.super Lcom/wandoujia/image/view/AsyncImageView;
.source "CircleAsyncImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;)V

    .line 19
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
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    invoke-static {p1}, Lcom/wandoujia/base/utils/ImageUtil;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    return-void
.end method
