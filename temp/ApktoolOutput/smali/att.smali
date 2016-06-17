.class final Latt;
.super Laum;
.source "LocalVideoThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laum",
        "<",
        "Lakk",
        "<",
        "Laqv;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/imagepipeline/request/ImageRequest;


# direct methods
.method constructor <init>(Lask;Laug;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p5, p0, Latt;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Laum;-><init>(Lask;Laug;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    check-cast p1, Lakk;

    invoke-static {p1}, Lakk;->c(Lakk;)V

    return-void
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 4

    .prologue
    const/16 v3, 0x60

    .line 59
    iget-object v0, p0, Latt;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Latt;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()I

    move-result v2

    if-gt v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()I

    move-result v0

    if-le v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    new-instance v1, Laqw;

    new-instance v2, Latu;

    invoke-direct {v2}, Latu;-><init>()V

    sget-object v3, Laqz;->a:Lara;

    invoke-direct {v1, v0, v2, v3}, Laqw;-><init>(Landroid/graphics/Bitmap;Lakn;Lara;)V

    invoke-static {v1}, Lakk;->a(Ljava/io/Closeable;)Lakk;

    move-result-object v0

    goto :goto_1
.end method

.method protected final synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .parameter

    .prologue
    .line 59
    check-cast p1, Lakk;

    const-string v1, "createdThumbnail"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
