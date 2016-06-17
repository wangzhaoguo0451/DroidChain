.class public final Laqo;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# instance fields
.field public final a:Lant;

.field private final b:Laos;


# direct methods
.method public constructor <init>(Lant;Laos;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Laqo;->a:Lant;

    .line 55
    iput-object p2, p0, Laqo;->b:Laos;

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Laqx;Laps;)Laqv;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-virtual {p1}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 106
    if-nez v1, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    .line 110
    :cond_0
    :try_start_0
    invoke-static {v1}, Lana;->a(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {p1}, Lant;->a(Laqx;)Laqv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 115
    invoke-static {v1}, Lajy;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 113
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Laqo;->a(Laqx;)Laqw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 115
    invoke-static {v1}, Lajy;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lajy;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method public final a(Laqx;)Laqw;
    .locals 4
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Laqo;->b:Laos;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-object v0, v0, Laos;->b:Laom;

    invoke-static {p1}, Laom;->a(Laqx;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-virtual {p1}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Laom;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lakk;

    move-result-object v0

    .line 128
    :goto_0
    :try_start_0
    new-instance v1, Laqw;

    sget-object v2, Laqz;->a:Lara;

    iget v3, p1, Laqx;->c:I

    invoke-direct {v1, v0, v2, v3}, Laqw;-><init>(Lakk;Lara;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v0}, Lakk;->close()V

    return-object v1

    .line 125
    :cond_0
    iget-object v0, v0, Laos;->a:Laon;

    invoke-virtual {v0, p1}, Laon;->a(Laqx;)Lakk;

    move-result-object v0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lakk;->close()V

    throw v1
.end method

.method public final a(Laqx;ILara;)Laqw;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 149
    iget-object v0, p0, Laqo;->b:Laos;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    iget-object v3, v0, Laos;->b:Laom;

    iget-object v0, p1, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;

    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p1}, Laom;->a(Laqx;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-virtual {p1}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Laqx;->b()I

    move-result v1

    if-le v1, p2, :cond_4

    new-instance v1, Lakr;

    invoke-direct {v1, v2, p2}, Lakr;-><init>(Ljava/io/InputStream;I)V

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Laks;

    sget-object v2, Laom;->a:[B

    invoke-direct {v0, v1, v2}, Laks;-><init>(Ljava/io/InputStream;[B)V

    :goto_2
    invoke-virtual {v3, v0, v4}, Laom;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lakk;

    move-result-object v0

    .line 152
    :goto_3
    :try_start_0
    new-instance v1, Laqw;

    iget v2, p1, Laqx;->c:I

    invoke-direct {v1, v0, p3, v2}, Laqw;-><init>(Lakk;Lara;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v0}, Lakk;->close()V

    return-object v1

    .line 149
    :cond_0
    iget-object v0, p1, Laqx;->a:Lakk;

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Laqx;->a:Lakk;

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a(I)B

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a(I)B

    move-result v0

    const/16 v2, -0x27

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Laos;->a:Laon;

    invoke-virtual {v0, p1, p2}, Laon;->a(Laqx;I)Lakk;

    move-result-object v0

    goto :goto_3

    .line 157
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lakk;->close()V

    throw v1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method
