.class public final Ldaa;
.super Ljava/lang/Object;
.source "ImageManager.java"


# instance fields
.field public final a:Ldbj;

.field final b:Ldbb;

.field final c:Lahk;

.field final d:Ldbn;

.field final e:Landroid/os/Handler;

.field final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldap;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lagr;

.field final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldap;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldap;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lczz;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldaa;-><init>(Landroid/content/Context;Lczz;B)V

    .line 113
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lczz;B)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldaa;->e:Landroid/os/Handler;

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ldaa;->f:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldaa;->h:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldaa;->i:Ljava/util/HashMap;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldaa;->j:Z

    .line 105
    iput-boolean v3, p0, Ldaa;->k:Z

    .line 116
    new-instance v1, Lahb;

    const/high16 v0, 0x2

    invoke-direct {v1, v0}, Lahb;-><init>(I)V

    .line 119
    new-instance v0, Ldbb;

    invoke-direct {v0}, Ldbb;-><init>()V

    iput-object v0, p0, Ldaa;->b:Ldbb;

    .line 120
    new-instance v0, Ldbj;

    invoke-interface {p2}, Lczz;->d()I

    move-result v2

    invoke-direct {v0, v2}, Ldbj;-><init>(I)V

    iput-object v0, p0, Ldaa;->a:Ldbj;

    .line 121
    new-instance v2, Lday;

    invoke-direct {v2, v3}, Lday;-><init>(B)V

    new-instance v0, Ljava/io/File;

    invoke-interface {p2}, Lczz;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "volley"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ldbe;

    invoke-interface {p2}, Lczz;->c()I

    move-result v4

    invoke-direct {v3, v0, v4}, Ldbe;-><init>(Ljava/io/File;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v0, v5, :cond_0

    new-instance v0, Lahi;

    new-instance v4, Ldab;

    invoke-direct {v4}, Ldab;-><init>()V

    invoke-direct {v0, v4}, Lahi;-><init>(Lahj;)V

    :goto_0
    new-instance v4, Laha;

    invoke-direct {v4, v0, v1}, Laha;-><init>(Lahh;Lahb;)V

    new-instance v0, Lagr;

    const/4 v5, 0x3

    invoke-direct {v0, v3, v4, v5}, Lagr;-><init>(Lagh;Lagn;I)V

    invoke-virtual {v0}, Lagr;->a()V

    iput-object v0, p0, Ldaa;->g:Lagr;

    new-instance v0, Lahk;

    iget-object v3, p0, Ldaa;->g:Lagr;

    invoke-direct {v0, v3, v2}, Lahk;-><init>(Lagr;Lahp;)V

    iput-object v0, p0, Ldaa;->c:Lahk;

    .line 122
    new-instance v0, Ldbn;

    invoke-interface {p2}, Lczz;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ldbn;-><init>(Landroid/content/Context;Lahb;)V

    iput-object v0, p0, Ldaa;->d:Ldbn;

    .line 123
    return-void

    .line 121
    :cond_0
    new-instance v0, Lahg;

    invoke-static {v4}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    invoke-static {v4}, Lcom/wandoujia/base/http/HttpClientWrapper;->newInstance(Lorg/apache/http/client/HttpClient;)Lcom/wandoujia/base/http/HttpClientWrapper;

    move-result-object v4

    invoke-direct {v0, v4}, Lahg;-><init>(Lorg/apache/http/client/HttpClient;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#W"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    return-void
.end method

.method static synthetic a(Ldaa;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ldaa;->e:Landroid/os/Handler;

    new-instance v1, Ldak;

    invoke-direct {v1, p0, p1, p2}, Ldak;-><init>(Ldaa;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Ldaa;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldaa;->e:Landroid/os/Handler;

    new-instance v1, Ldac;

    invoke-direct {v1, p0, p1, p2}, Ldac;-><init>(Ldaa;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Ldaa;->a:Ldbj;

    invoke-static {v0, p1, p2}, Ldbh;->a(Ldbg;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Ldaa;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldap;

    if-eqz v0, :cond_0

    iput-object p2, v0, Ldap;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ldaa;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ldaa;->l:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Ldad;

    invoke-direct {v0, p0}, Ldad;-><init>(Ldaa;)V

    iput-object v0, p0, Ldaa;->l:Ljava/lang/Runnable;

    iget-object v0, p0, Ldaa;->e:Landroid/os/Handler;

    iget-object v1, p0, Ldaa;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 450
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    iget-object v0, p0, Ldaa;->a:Ldbj;

    invoke-virtual {v0, v1}, Ldbj;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-object v0

    .line 459
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 468
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2}, Lcom/wandoujia/base/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;[Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    .line 470
    iget-object v2, p0, Ldaa;->b:Ldbb;

    new-instance v3, Ldaj;

    invoke-direct {v3, p0, v1, v0}, Ldaj;-><init>(Ldaa;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v1, v2, Ldbb;->a:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    invoke-virtual {v1, v3}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ldbd;)Ldaq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 349
    new-instance v0, Ldag;

    invoke-direct {v0, p0, p1}, Ldag;-><init>(Ldaa;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, p1, p2, v0}, Ldaa;->a(Ljava/lang/String;Ldbd;Ldas;)Ldaq;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ldbd;II)Ldaq;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-boolean v0, p0, Ldaa;->j:Z

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ldaq;

    invoke-direct {v0, p0, p1, v1, p2}, Ldaq;-><init>(Ldaa;Ljava/lang/String;Ljava/lang/String;Ldbd;)V

    .line 252
    invoke-virtual {v0, v1}, Ldaq;->a(Landroid/graphics/Bitmap;)V

    .line 267
    :goto_0
    return-object v0

    .line 255
    :cond_0
    new-instance v0, Ldae;

    invoke-direct {v0, p0, p1, p3, p4}, Ldae;-><init>(Ldaa;Ljava/lang/String;II)V

    .line 266
    invoke-virtual {p0, p1, p2, v0}, Ldaa;->a(Ljava/lang/String;Ldbd;Ldas;)Ldaq;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ldbd;Ldas;)Ldaq;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-static {}, Ldaa;->a()V

    .line 539
    invoke-interface {p3}, Ldas;->a()Ljava/lang/String;

    move-result-object v2

    .line 540
    new-instance v1, Ldaq;

    invoke-direct {v1, p0, p1, v2, p2}, Ldaq;-><init>(Ldaa;Ljava/lang/String;Ljava/lang/String;Ldbd;)V

    .line 541
    iget-object v0, p0, Ldaa;->a:Ldbj;

    invoke-virtual {v0, v2}, Ldbj;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v1, v0}, Ldaq;->a(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 574
    :goto_0
    return-object v0

    .line 547
    :cond_0
    iget-object v0, v1, Ldaq;->c:Ldbd;

    if-eqz v0, :cond_1

    iget-object v0, v1, Ldaq;->c:Ldbd;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Ldbd;->a(Landroid/graphics/Bitmap;Z)V

    .line 549
    :cond_1
    iget-object v0, p0, Ldaa;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldap;

    .line 550
    if-eqz v0, :cond_2

    .line 551
    invoke-virtual {v0, v1}, Ldap;->a(Ldaq;)V

    move-object v0, v1

    .line 552
    goto :goto_0

    .line 555
    :cond_2
    new-instance v0, Ldat;

    invoke-direct {v0, p0, v2}, Ldat;-><init>(Ldaa;Ljava/lang/String;)V

    .line 561
    invoke-interface {p3, v0}, Ldas;->a(Ldat;)Ldar;

    move-result-object v3

    .line 562
    iget-boolean v0, p0, Ldaa;->k:Z

    if-eqz v0, :cond_4

    .line 563
    iget-object v0, p0, Ldaa;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldap;

    .line 564
    if-eqz v0, :cond_3

    .line 565
    invoke-virtual {v0, v1}, Ldap;->a(Ldaq;)V

    move-object v0, v1

    .line 566
    goto :goto_0

    .line 568
    :cond_3
    iget-object v0, p0, Ldaa;->f:Ljava/util/HashMap;

    new-instance v4, Ldap;

    invoke-direct {v4, v3, v1}, Ldap;-><init>(Ldar;Ldaq;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object v0, v1

    .line 574
    goto :goto_0

    .line 571
    :cond_4
    invoke-virtual {v3}, Ldar;->a()V

    .line 572
    iget-object v0, p0, Ldaa;->h:Ljava/util/HashMap;

    new-instance v4, Ldap;

    invoke-direct {v4, v3, v1}, Ldap;-><init>(Ldar;Ldaq;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ldbd;)Ldaq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 387
    new-instance v0, Ldah;

    invoke-direct {v0, p0, p1}, Ldah;-><init>(Ldaa;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0, p1, p2, v0}, Ldaa;->a(Ljava/lang/String;Ldbd;Ldas;)Ldaq;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 507
    invoke-static {}, Ldaa;->a()V

    .line 508
    iget-boolean v0, p0, Ldaa;->k:Z

    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 511
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldaa;->k:Z

    .line 513
    iget-object v0, p0, Ldaa;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 514
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 515
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldap;

    .line 516
    iget-object v3, v0, Ldap;->a:Ldar;

    invoke-virtual {v3}, Ldar;->a()V

    .line 517
    iget-object v3, p0, Ldaa;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 519
    :cond_1
    iget-object v0, p0, Ldaa;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method
