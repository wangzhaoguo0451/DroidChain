.class public final Lahs;
.super Lcom/android/volley/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/Object;


# instance fields
.field private final l:Lagu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lagu",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/graphics/Bitmap$Config;

.field private final n:I

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lahs;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lagu;IILandroid/graphics/Bitmap$Config;Lagt;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lagu",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p6}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lagt;)V

    .line 73
    new-instance v0, Lagw;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x4000

    invoke-direct {v0, v1, v2, v3}, Lagw;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/volley/Request;->j:Lagw;

    .line 75
    iput-object p2, p0, Lahs;->l:Lagu;

    .line 76
    iput-object p5, p0, Lahs;->m:Landroid/graphics/Bitmap$Config;

    .line 77
    iput p3, p0, Lahs;->n:I

    .line 78
    iput p4, p0, Lahs;->o:I

    .line 79
    return-void
.end method

.method private static a(IIII)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move p0, p2

    .line 119
    :cond_0
    :goto_0
    return p0

    .line 105
    :cond_1
    if-nez p0, :cond_2

    .line 106
    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 107
    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0

    .line 110
    :cond_2
    if-eqz p1, :cond_0

    .line 114
    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 116
    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 117
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_0
.end method

.method private static b(IIII)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 205
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 206
    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 207
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 208
    const/high16 v0, 0x3f80

    .line 209
    :goto_0
    mul-float v1, v0, v6

    float-to-double v4, v1

    cmpg-double v1, v4, v2

    if-gtz v1, :cond_0

    .line 210
    mul-float/2addr v0, v6

    goto :goto_0

    .line 213
    :cond_0
    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected final a(Lagp;)Lags;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagp;",
            ")",
            "Lags",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v2, Lahs;->p:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v0, p1, Lagp;->a:[B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v3, p0, Lahs;->m:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget v3, p0, Lahs;->n:I

    if-nez v3, :cond_0

    iget v3, p0, Lahs;->o:I

    if-nez v3, :cond_0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0}, Lcom/android/volley/ParseError;-><init>()V

    invoke-static {v0}, Lags;->a(Lcom/android/volley/VolleyError;)Lags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :goto_2
    return-object v0

    .line 127
    :cond_0
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, p0, Lahs;->n:I

    iget v6, p0, Lahs;->o:I

    invoke-static {v5, v6, v3, v4}, Lahs;->a(IIII)I

    move-result v5

    iget v6, p0, Lahs;->o:I

    iget v7, p0, Lahs;->n:I

    invoke-static {v6, v7, v4, v3}, Lahs;->a(IIII)I

    move-result v6

    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v3, v4, v5, v6}, Lahs;->b(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v0, v3, :cond_2

    if-eqz v1, :cond_2

    if-lez v5, :cond_2

    if-lez v6, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v5, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v6, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-static {v1, v5, v6, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :try_start_3
    const-string v1, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lagp;->a:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/volley/Request;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lagx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lags;->a(Lcom/android/volley/VolleyError;)Lags;

    move-result-object v0

    monitor-exit v2

    goto :goto_2

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    .line 127
    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static {p1}, Ld;->a(Lagp;)Lagi;

    move-result-object v1

    invoke-static {v0, v1}, Lags;->a(Ljava/lang/Object;Lagi;)Lags;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lahs;->l:Lagu;

    invoke-interface {v0, p1}, Lagu;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public final i()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method
