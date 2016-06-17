.class public final Laon;
.super Ljava/lang/Object;
.source "DalvikBitmapFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field final a:Larc;

.field private final b:Lakn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakn",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lari;


# direct methods
.method public constructor <init>(Lari;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Laon;->c:Lari;

    .line 51
    invoke-static {}, Lard;->a()Larc;

    move-result-object v0

    iput-object v0, p0, Laon;->a:Larc;

    .line 52
    new-instance v0, Laoo;

    invoke-direct {v0, p0}, Laoo;-><init>(Laon;)V

    iput-object v0, p0, Laon;->b:Lakn;

    .line 62
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Lakk;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    iget-object v0, p0, Laon;->a:Larc;

    invoke-virtual {v0, p1}, Larc;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/TooManyBitmapsException;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/bitmaps/TooManyBitmapsException;-><init>()V

    throw v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    invoke-static {v0}, Ld;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Laon;->b:Lakn;

    invoke-static {p1, v0}, Lakk;->a(Ljava/lang/Object;Lakn;)Lakk;

    move-result-object v0

    return-object v0
.end method

.method private a(Lakk;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakk",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;I",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v8, -0x1

    const/16 v7, -0x27

    const/4 v3, 0x0

    .line 194
    invoke-virtual {p1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    .line 195
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v1

    if-gt p2, v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ld;->a(Z)V

    .line 197
    iget-object v1, p0, Laon;->c:Lari;

    add-int/lit8 v4, p2, 0x2

    invoke-virtual {v1, v4}, Lari;->a(I)Lakk;

    move-result-object v4

    .line 199
    :try_start_0
    invoke-virtual {v4}, Lakk;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 200
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v1, v6, p2}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a(I[BII)V

    .line 201
    const/4 v0, 0x2

    if-lt p2, v0, :cond_2

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, v1, v0

    if-ne v0, v8, :cond_2

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, v1, v0

    if-ne v0, v7, :cond_2

    :goto_1
    if-nez v2, :cond_0

    .line 202
    const/4 v0, -0x1

    aput-byte v0, v1, p2

    add-int/lit8 v0, p2, 0x1

    const/16 v2, -0x27

    aput-byte v2, v1, v0

    .line 203
    add-int/lit8 p2, p2, 0x2

    .line 205
    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v0, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    const-string v1, "BitmapFactory returned null"

    invoke-static {v0, v1}, Ld;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-static {v4}, Lakk;->c(Lakk;)V

    return-object v0

    :cond_1
    move v1, v3

    .line 195
    goto :goto_0

    :cond_2
    move v2, v3

    .line 201
    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    invoke-static {v4}, Lakk;->c(Lakk;)V

    throw v0
.end method

.method private a(Lakk;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakk",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    .line 166
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v2

    .line 167
    iget-object v1, p0, Laon;->c:Lari;

    invoke-virtual {v1, v2}, Lari;->a(I)Lakk;

    move-result-object v3

    .line 169
    :try_start_0
    invoke-virtual {v3}, Lakk;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 170
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v1, v5, v2}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a(I[BII)V

    .line 171
    const/4 v0, 0x0

    invoke-static {v1, v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    const-string v1, "BitmapFactory returned null"

    invoke-static {v0, v1}, Ld;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v3}, Lakk;->c(Lakk;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lakk;->c(Lakk;)V

    throw v0
.end method

.method private static a(I)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 218
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 219
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 220
    sget-object v1, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->a:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 222
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 224
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 226
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 228
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Laqx;)Lakk;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqx;",
            ")",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget v0, p1, Laqx;->f:I

    invoke-static {v0}, Laon;->a(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 102
    iget-object v1, p1, Laqx;->a:Lakk;

    invoke-static {v1}, Lakk;->b(Lakk;)Lakk;

    move-result-object v1

    .line 103
    invoke-static {v1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :try_start_0
    invoke-direct {p0, v1, v0}, Laon;->a(Lakk;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Laon;->a(Landroid/graphics/Bitmap;)Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 108
    invoke-static {v1}, Lakk;->c(Lakk;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lakk;->c(Lakk;)V

    throw v0
.end method

.method public final a(Laqx;I)Lakk;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqx;",
            "I)",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget v0, p1, Laqx;->f:I

    invoke-static {v0}, Laon;->a(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 126
    iget-object v1, p1, Laqx;->a:Lakk;

    invoke-static {v1}, Lakk;->b(Lakk;)Lakk;

    move-result-object v1

    .line 127
    invoke-static {v1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :try_start_0
    invoke-direct {p0, v1, p2, v0}, Laon;->a(Lakk;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Laon;->a(Landroid/graphics/Bitmap;)Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 132
    invoke-static {v1}, Lakk;->c(Lakk;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lakk;->c(Lakk;)V

    throw v0
.end method
