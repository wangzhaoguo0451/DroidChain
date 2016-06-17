.class public final Lcom/alipay/squareup/picasso/Picasso;
.super Ljava/lang/Object;
.source "Picasso.java"


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Lcom/alipay/squareup/picasso/Picasso;


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/content/Context;

.field public final c:Lcom/alipay/squareup/picasso/Cache;

.field public final d:Labh;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/alipay/squareup/picasso/Request;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/alipay/squareup/picasso/Loader;

.field private i:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/squareup/picasso/Picasso;->f:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/squareup/picasso/Picasso;->g:Lcom/alipay/squareup/picasso/Picasso;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alipay/squareup/picasso/Loader;Ljava/util/concurrent/ExecutorService;Lcom/alipay/squareup/picasso/Cache;Labh;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Labb;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Labb;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    .line 101
    iput-object p1, p0, Lcom/alipay/squareup/picasso/Picasso;->b:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/alipay/squareup/picasso/Picasso;->h:Lcom/alipay/squareup/picasso/Loader;

    .line 103
    iput-object p3, p0, Lcom/alipay/squareup/picasso/Picasso;->i:Ljava/util/concurrent/ExecutorService;

    .line 104
    iput-object p4, p0, Lcom/alipay/squareup/picasso/Picasso;->c:Lcom/alipay/squareup/picasso/Cache;

    .line 105
    iput-object p5, p0, Lcom/alipay/squareup/picasso/Picasso;->d:Labh;

    .line 107
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/squareup/picasso/Picasso;->e:Ljava/util/Map;

    .line 108
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 414
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 415
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 417
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 424
    if-eqz p1, :cond_0

    .line 475
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 478
    :cond_0
    sget-object v7, Lcom/alipay/squareup/picasso/Picasso;->f:Ljava/lang/Object;

    monitor-enter v7

    .line 479
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    if-eq v0, p0, :cond_1

    .line 482
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 485
    :cond_1
    monitor-exit v7

    .line 487
    return-object p0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/net/Uri;Labd;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lcom/alipay/squareup/picasso/Picasso;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    if-eqz p2, :cond_0

    iget-boolean v1, p2, Labd;->inJustDecodeBounds:Z

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 295
    invoke-static {p2}, Labm;->a(Labd;)V

    .line 297
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Labd;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 283
    if-nez p0, :cond_0

    .line 288
    :goto_0
    return-object v0

    .line 284
    :cond_0
    if-eqz p1, :cond_1

    .line 286
    const/4 v1, 0x0

    iput-boolean v1, p1, Labd;->inJustDecodeBounds:Z

    .line 288
    :cond_1
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/squareup/picasso/Picasso;
    .locals 6
    .parameter

    .prologue
    .line 541
    sget-object v0, Lcom/alipay/squareup/picasso/Picasso;->g:Lcom/alipay/squareup/picasso/Picasso;

    if-nez v0, :cond_3

    .line 542
    new-instance v4, Labc;

    invoke-direct {v4, p0}, Labc;-><init>(Landroid/content/Context;)V

    iget-object v1, v4, Labc;->a:Landroid/content/Context;

    iget-object v0, v4, Labc;->b:Lcom/alipay/squareup/picasso/Loader;

    if-nez v0, :cond_0

    invoke-static {v1}, Labm;->a(Landroid/content/Context;)Lcom/alipay/squareup/picasso/Loader;

    move-result-object v0

    iput-object v0, v4, Labc;->b:Lcom/alipay/squareup/picasso/Loader;

    :cond_0
    iget-object v0, v4, Labc;->d:Lcom/alipay/squareup/picasso/Cache;

    if-nez v0, :cond_1

    new-instance v0, Laaz;

    invoke-direct {v0, v1}, Laaz;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Labc;->d:Lcom/alipay/squareup/picasso/Cache;

    :cond_1
    iget-object v0, v4, Labc;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    const/4 v0, 0x3

    new-instance v2, Labo;

    invoke-direct {v2}, Labo;-><init>()V

    invoke-static {v0, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v4, Labc;->c:Ljava/util/concurrent/ExecutorService;

    :cond_2
    new-instance v5, Labh;

    invoke-direct {v5}, Labh;-><init>()V

    new-instance v0, Lcom/alipay/squareup/picasso/Picasso;

    iget-object v2, v4, Labc;->b:Lcom/alipay/squareup/picasso/Loader;

    iget-object v3, v4, Labc;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v4, v4, Labc;->d:Lcom/alipay/squareup/picasso/Cache;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/squareup/picasso/Picasso;-><init>(Landroid/content/Context;Lcom/alipay/squareup/picasso/Loader;Ljava/util/concurrent/ExecutorService;Lcom/alipay/squareup/picasso/Cache;Labh;)V

    sput-object v0, Lcom/alipay/squareup/picasso/Picasso;->g:Lcom/alipay/squareup/picasso/Picasso;

    .line 544
    :cond_3
    sget-object v0, Lcom/alipay/squareup/picasso/Picasso;->g:Lcom/alipay/squareup/picasso/Picasso;

    return-object v0
.end method

.method private c(Lcom/alipay/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 330
    .line 333
    iget-object v4, p1, Lcom/alipay/squareup/picasso/Request;->b:Landroid/net/Uri;

    .line 336
    iget v0, p1, Lcom/alipay/squareup/picasso/Request;->c:I

    .line 338
    if-eqz v0, :cond_1

    .line 339
    iget-object v1, p0, Lcom/alipay/squareup/picasso/Picasso;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    sget-object v1, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->DISK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    iput-object v1, p1, Lcom/alipay/squareup/picasso/Request;->j:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    move v1, v2

    .line 381
    :goto_0
    if-nez v0, :cond_c

    move-object v0, v3

    .line 404
    :cond_0
    :goto_1
    return-object v0

    .line 342
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 343
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 344
    iget-object v0, p0, Lcom/alipay/squareup/picasso/Picasso;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 345
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const-string v5, "photo"

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 347
    invoke-static {v0, v4}, Labm;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 348
    invoke-static {v0, v3}, Lcom/alipay/squareup/picasso/Picasso;->a(Ljava/io/InputStream;Labd;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v1, v2

    .line 353
    :goto_2
    sget-object v4, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->DISK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    iput-object v4, p1, Lcom/alipay/squareup/picasso/Request;->j:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    goto :goto_0

    .line 350
    :cond_2
    invoke-static {v0, v4}, Labm;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v1

    .line 351
    invoke-direct {p0, v4, v3}, Lcom/alipay/squareup/picasso/Picasso;->a(Landroid/net/Uri;Labd;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 354
    :cond_3
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labm;->a(Ljava/lang/String;)I

    move-result v1

    .line 356
    invoke-direct {p0, v4, v3}, Lcom/alipay/squareup/picasso/Picasso;->a(Landroid/net/Uri;Labd;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    sget-object v4, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->DISK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    iput-object v4, p1, Lcom/alipay/squareup/picasso/Request;->j:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    goto :goto_0

    .line 358
    :cond_4
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    invoke-direct {p0, v4, v3}, Lcom/alipay/squareup/picasso/Picasso;->a(Landroid/net/Uri;Labd;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    sget-object v1, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->DISK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    iput-object v1, p1, Lcom/alipay/squareup/picasso/Request;->j:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    move v1, v2

    goto :goto_0

    .line 364
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/alipay/squareup/picasso/Picasso;->h:Lcom/alipay/squareup/picasso/Loader;

    iget v0, p1, Lcom/alipay/squareup/picasso/Request;->k:I

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-interface {v1, v4, v0}, Lcom/alipay/squareup/picasso/Loader;->load(Landroid/net/Uri;Z)Laay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 365
    if-nez v1, :cond_8

    .line 366
    if-eqz v1, :cond_6

    iget-object v0, v1, Laay;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 372
    :try_start_1
    iget-object v0, v1, Laay;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    :goto_4
    move-object v0, v3

    .line 374
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 364
    goto :goto_3

    .line 368
    :cond_8
    :try_start_2
    iget-object v0, v1, Laay;->a:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/alipay/squareup/picasso/Picasso;->a(Ljava/io/InputStream;Labd;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 370
    if-eqz v1, :cond_9

    iget-object v0, v1, Laay;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 372
    :try_start_3
    iget-object v0, v1, Laay;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 377
    :cond_9
    :goto_5
    iget-boolean v0, v1, Laay;->b:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->DISK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    :goto_6
    iput-object v0, p1, Lcom/alipay/squareup/picasso/Request;->j:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    move-object v0, v4

    move v1, v2

    goto/16 :goto_0

    .line 370
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v3, :cond_a

    iget-object v1, v3, Laay;->a:Ljava/io/InputStream;

    if-eqz v1, :cond_a

    .line 372
    :try_start_4
    iget-object v1, v3, Laay;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 374
    :cond_a
    :goto_8
    throw v0

    .line 377
    :cond_b
    sget-object v0, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->NETWORK:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    goto :goto_6

    .line 385
    :cond_c
    iget-object v3, p0, Lcom/alipay/squareup/picasso/Picasso;->d:Labh;

    const/4 v4, 0x3

    invoke-static {v0}, Labm;->a(Landroid/graphics/Bitmap;)I

    move-result v5

    iget-object v6, v3, Labh;->a:Landroid/os/Handler;

    iget-object v3, v3, Labh;->a:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    if-eqz v1, :cond_0

    .line 401
    invoke-static {v0, v1}, Lcom/alipay/squareup/picasso/Picasso;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto :goto_8

    .line 370
    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_7

    .line 374
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Labg;
    .locals 1
    .parameter

    .prologue
    .line 131
    new-instance v0, Labg;

    invoke-direct {v0, p0, p1}, Labg;-><init>(Lcom/alipay/squareup/picasso/Picasso;Landroid/net/Uri;)V

    return-object v0
.end method

.method public final a(Lcom/alipay/squareup/picasso/Request;)V
    .locals 2
    .parameter

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/alipay/squareup/picasso/Request;->a()Ljava/lang/Object;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p1, Lcom/alipay/squareup/picasso/Request;->b:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/squareup/picasso/Picasso;->a(Ljava/lang/Object;Landroid/net/Uri;)V

    .line 212
    iget-object v1, p0, Lcom/alipay/squareup/picasso/Picasso;->e:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/alipay/squareup/picasso/Picasso;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/squareup/picasso/Request;->h:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 309
    iget-object v0, p0, Lcom/alipay/squareup/picasso/Picasso;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/squareup/picasso/Request;

    .line 310
    if-eqz v0, :cond_0

    .line 311
    iget-object v1, v0, Lcom/alipay/squareup/picasso/Request;->h:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    iget-object v0, v0, Lcom/alipay/squareup/picasso/Request;->h:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, v0, Lcom/alipay/squareup/picasso/Request;->b:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    :cond_2
    iput-boolean v2, v0, Lcom/alipay/squareup/picasso/Request;->l:Z

    goto :goto_0
.end method

.method final b(Lcom/alipay/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alipay/squareup/picasso/Picasso;->c:Lcom/alipay/squareup/picasso/Cache;

    iget-object v1, p1, Lcom/alipay/squareup/picasso/Request;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/squareup/picasso/Request$LoadedFrom;->MEMORY:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    iput-object v1, p1, Lcom/alipay/squareup/picasso/Request;->j:Lcom/alipay/squareup/picasso/Request$LoadedFrom;

    .line 237
    :cond_0
    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/alipay/squareup/picasso/Picasso;->d:Labh;

    iget-object v0, v0, Labh;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/squareup/picasso/Picasso;->c(Lcom/alipay/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    if-eqz v0, :cond_1

    .line 246
    iget-object v1, p0, Lcom/alipay/squareup/picasso/Picasso;->c:Lcom/alipay/squareup/picasso/Cache;

    iget-object v2, p1, Lcom/alipay/squareup/picasso/Request;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/squareup/picasso/Cache;->set(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 251
    :cond_1
    :goto_0
    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to decode request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/alipay/squareup/picasso/Picasso;->d:Labh;

    invoke-virtual {v1}, Labh;->a()V

    goto :goto_0
.end method
