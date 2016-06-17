.class public Lcom/wandoujia/launcher/launcher/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "image"

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadLibrarySafety(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 147
    :goto_0
    return-object p0

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 145
    const v2, 0x3e4ccccd

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 146
    const v3, 0x3df5c28f

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 147
    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v0, v4

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v1, v4

    invoke-static {p0, v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static native functionToBlur(Landroid/graphics/Bitmap;IIII)V
.end method

.method public static native nativeExtractAndOverlay(Landroid/graphics/Bitmap;II)V
.end method
