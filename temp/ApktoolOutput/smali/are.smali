.class public final Lare;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source "BitmapPool.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lmv;Lart;Lmv;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lmv;Lart;Lmv;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final synthetic b(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x1

    sget-object v1, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->a:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method protected final c(I)I
    .locals 0
    .parameter

    .prologue
    .line 75
    return p1
.end method

.method protected final synthetic c(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected final d(I)I
    .locals 1
    .parameter

    .prologue
    .line 101
    mul-int/lit8 v0, p1, 0x4

    return v0
.end method

.method protected final synthetic d(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 30
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->a:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
