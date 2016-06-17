.class final Latl;
.super Laum;
.source "LocalExifThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laum",
        "<",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/imagepipeline/request/ImageRequest;

.field private synthetic b:Latk;


# direct methods
.method constructor <init>(Latk;Lask;Laug;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Latl;->b:Latk;

    iput-object p6, p0, Latl;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Laum;-><init>(Lask;Laug;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    check-cast p1, Laqx;

    invoke-static {p1}, Laqx;->d(Laqx;)V

    return-void
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 67
    iget-object v0, p0, Latl;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iget-object v3, p0, Latl;->b:Latk;

    iget-object v3, v3, Latk;->a:Larv;

    invoke-virtual {v3, v0}, Larv;->a([B)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v3

    new-instance v0, Larw;

    invoke-direct {v0, v3}, Larw;-><init>(Lcom/facebook/imagepipeline/memory/PooledByteBuffer;)V

    invoke-static {v0}, Ld;->b(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v4

    const-string v0, "Orientation"

    invoke-virtual {v2, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lauz;->a(I)I

    move-result v5

    if-eqz v4, :cond_1

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    :goto_1
    if-eqz v4, :cond_2

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    new-instance v1, Laqx;

    invoke-static {v3}, Lakk;->a(Ljava/io/Closeable;)Lakk;

    move-result-object v3

    invoke-direct {v1, v3}, Laqx;-><init>(Lakk;)V

    sget-object v3, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    iput-object v3, v1, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;

    iput v5, v1, Laqx;->c:I

    iput v2, v1, Laqx;->d:I

    iput v0, v1, Laqx;->e:I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method protected final synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .parameter

    .prologue
    .line 67
    check-cast p1, Laqx;

    const-string v1, "createdThumbnail"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
