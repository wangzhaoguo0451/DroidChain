.class public final Laom;
.super Ljava/lang/Object;
.source "ArtBitmapFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final a:[B


# instance fields
.field private b:Lare;

.field private c:Lei;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lei",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Laom;->a:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xfft
        0xd9t
    .end array-data
.end method

.method public constructor <init>(Lare;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Laom;->b:Lare;

    .line 61
    new-instance v0, Lei;

    invoke-direct {v0, p2}, Lei;-><init>(I)V

    iput-object v0, p0, Laom;->c:Lei;

    .line 62
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 63
    iget-object v1, p0, Laom;->c:Lei;

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lei;->a(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public static a(Laqx;)Landroid/graphics/BitmapFactory$Options;
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 158
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    iget v1, p0, Laqx;->f:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 161
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 163
    invoke-virtual {p0}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 164
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v1, v4, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v4, :cond_1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 168
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 169
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 170
    sget-object v1, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->a:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 171
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 173
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lakk;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Laom;->b:Lare;

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lare;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 125
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "BitmapPool.get returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 131
    iget-object v1, p0, Laom;->c:Lei;

    invoke-virtual {v1}, Lei;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 132
    if-nez v1, :cond_2

    .line 133
    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v2, v1

    .line 136
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 137
    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 142
    iget-object v3, p0, Laom;->c:Lei;

    invoke-virtual {v3, v2}, Lei;->a(Ljava/lang/Object;)Z

    .line 145
    if-eq v0, v1, :cond_1

    .line 146
    iget-object v2, p0, Laom;->b:Lare;

    invoke-virtual {v2, v0}, Lare;->a(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    :try_start_1
    iget-object v3, p0, Laom;->b:Lare;

    invoke-virtual {v3, v0}, Lare;->a(Ljava/lang/Object;)V

    .line 140
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    iget-object v1, p0, Laom;->c:Lei;

    invoke-virtual {v1, v2}, Lei;->a(Ljava/lang/Object;)Z

    throw v0

    .line 151
    :cond_1
    iget-object v0, p0, Laom;->b:Lare;

    invoke-static {v1, v0}, Lakk;->a(Ljava/lang/Object;Lakn;)Lakk;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method
