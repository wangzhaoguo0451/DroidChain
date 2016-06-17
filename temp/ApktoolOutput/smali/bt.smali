.class public abstract Lbt;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# static fields
.field static b:I


# instance fields
.field a:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/high16 v0, 0x10

    sput v0, Lbt;->b:I

    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/high16 v4, 0x3f80

    .line 195
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 196
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 197
    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 200
    :cond_1
    sget v2, Lbt;->b:I

    int-to-float v2, v2

    mul-int v3, v0, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 201
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    cmpl-float v3, v2, v4

    if-nez v3, :cond_2

    .line 203
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v3, v0

    .line 206
    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v1, v0

    .line 207
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 209
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 210
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 211
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 212
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 213
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 214
    invoke-virtual {p0, v8, v8, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 216
    invoke-virtual {p0, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 238
    .line 239
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 240
    check-cast p1, Landroid/os/Bundle;

    .line 241
    const-string v0, "sharedElement:snapshot:bitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 242
    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-object v1

    .line 245
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 247
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    const-string v0, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 250
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v2, :cond_1

    .line 251
    const-string v0, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 252
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 253
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 254
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 261
    goto :goto_0

    .line 256
    :cond_2
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 257
    check-cast p1, Landroid/graphics/Bitmap;

    .line 258
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
