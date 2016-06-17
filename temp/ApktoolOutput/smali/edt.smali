.class final Ledt;
.super Ljava/lang/Object;
.source "NativeBlurProcess.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "image"

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadLibrarySafety(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 27
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 29
    sget v3, Ledj;->a:I

    .line 31
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 34
    new-instance v0, Ledu;

    float-to-int v2, p1

    invoke-direct/range {v0 .. v5}, Ledu;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v6, Ledu;

    float-to-int v8, p1

    const/4 v11, 0x2

    move-object v7, v1

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v11}, Ledu;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    sget-object v0, Ledj;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v12}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :try_start_1
    sget-object v0, Ledj;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v13}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :goto_1
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    goto :goto_1

    .line 41
    :catch_1
    move-exception v0

    goto :goto_1
.end method
