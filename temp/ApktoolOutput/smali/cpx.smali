.class public final Lcpx;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Landroid/os/Handler;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcqd;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcpx;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcpx;->e:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Lcpy;

    invoke-direct {v0, p0}, Lcpy;-><init>(Lcpx;)V

    iput-object v0, p0, Lcpx;->f:Ljava/lang/Runnable;

    .line 140
    iput-object p1, p0, Lcpx;->a:Landroid/content/Context;

    .line 141
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcpx;->b:Ljava/util/concurrent/ExecutorService;

    .line 142
    new-instance v0, Lau;

    invoke-direct {v0, p1}, Lau;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcqc;->a()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcpx;->c:Landroid/os/Handler;

    .line 145
    return-void
.end method

.method private static a(Ljava/lang/String;Lcpw;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-virtual {p1, p0}, Lcpw;->c(Ljava/lang/String;)V

    .line 339
    new-instance v1, Lhpf;

    invoke-direct {v1}, Lhpf;-><init>()V

    .line 340
    const/4 v0, 0x0

    .line 342
    :try_start_0
    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v2

    invoke-virtual {v2, p0}, Lhpa;->a(Ljava/lang/String;)Lhpf;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/wandoujia/rootkit/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 360
    :goto_0
    iget-boolean v2, v1, Lhpf;->a:Z

    if-eqz v2, :cond_3

    .line 361
    const-string v2, "root.uninstall.sucess"

    const-string v3, "root.uninstall.sucess"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v2, v4}, Ld;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 370
    :goto_1
    if-nez v0, :cond_1

    iget-boolean v1, v1, Lhpf;->a:Z

    if-nez v1, :cond_1

    .line 371
    const/16 v0, 0x3e8

    .line 373
    :cond_1
    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {p1, p0, v0}, Lcpw;->b(Ljava/lang/String;I)V

    .line 376
    :cond_2
    return v0

    .line 344
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lhpf;->b()V

    .line 346
    const/16 v0, 0x3ec

    .line 359
    goto :goto_0

    .line 348
    :catch_1
    move-exception v0

    invoke-virtual {v1}, Lhpf;->c()V

    .line 350
    const/16 v0, 0x3e9

    .line 359
    goto :goto_0

    .line 352
    :catch_2
    move-exception v0

    invoke-virtual {v1}, Lhpf;->a()V

    .line 354
    const/16 v0, 0x3eb

    .line 359
    goto :goto_0

    .line 356
    :catch_3
    move-exception v0

    invoke-virtual {v1}, Lhpf;->d()V

    .line 358
    const/16 v0, 0x3ea

    goto :goto_0

    .line 364
    :cond_3
    const-string v2, "root.uninstall.failed"

    const-string v3, "root.uninstall.failed"

    iget-object v4, v1, Lhpf;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ld;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Ld;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcpw;)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x3ec

    const/16 v4, 0x3eb

    const/16 v5, 0x3ea

    const/16 v3, 0x3e9

    const/16 v6, 0x3e8

    .line 381
    invoke-virtual {p2, p0}, Lcpw;->c(Ljava/lang/String;)V

    .line 382
    const/4 v0, 0x0

    .line 383
    invoke-static {}, Lhpa;->a()Lhpa;

    const-string v1, "/system/"

    const-string v7, "RW"

    invoke-static {v1, v7}, Lhpa;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    const/16 v0, 0x3ed

    .line 386
    :cond_0
    new-instance v1, Lhpf;

    invoke-direct {v1}, Lhpf;-><init>()V

    .line 387
    if-nez v0, :cond_6

    .line 388
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 391
    :try_start_0
    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "rm \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhpa;->b(Ljava/lang/String;)Lhpf;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/wandoujia/rootkit/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    .line 409
    :goto_0
    iget-boolean v7, v0, Lhpf;->a:Z

    if-eqz v7, :cond_5

    if-nez v1, :cond_5

    .line 410
    new-instance v0, Lhpf;

    invoke-direct {v0}, Lhpf;-><init>()V

    .line 411
    const-string v7, ".apk"

    const-string v8, ".odex"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 412
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 415
    :try_start_1
    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "rm \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lhpa;->b(Ljava/lang/String;)Lhpf;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/wandoujia/rootkit/exceptions/RootDeniedException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v0

    .line 429
    iget-boolean v2, v0, Lhpf;->a:Z

    if-nez v2, :cond_4

    .line 440
    :goto_1
    return v6

    .line 393
    :catch_0
    move-exception v0

    move-object v0, v1

    move v1, v2

    .line 404
    goto :goto_0

    .line 396
    :catch_1
    move-exception v0

    move-object v0, v1

    move v1, v3

    .line 404
    goto :goto_0

    .line 399
    :catch_2
    move-exception v0

    move-object v0, v1

    move v1, v4

    .line 404
    goto :goto_0

    .line 402
    :catch_3
    move-exception v0

    move-object v0, v1

    move v1, v5

    .line 404
    goto :goto_0

    .line 406
    :cond_1
    const/16 v0, 0x3f0

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_0

    .line 417
    :catch_4
    move-exception v0

    move v6, v2

    goto :goto_1

    .line 420
    :catch_5
    move-exception v0

    move v6, v3

    goto :goto_1

    .line 423
    :catch_6
    move-exception v0

    move v6, v4

    goto :goto_1

    .line 426
    :catch_7
    move-exception v0

    move v6, v5

    goto :goto_1

    .line 433
    :cond_2
    const/16 v1, 0x3f0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 436
    :goto_2
    if-nez v0, :cond_3

    iget-boolean v1, v1, Lhpf;->a:Z

    if-nez v1, :cond_3

    move v0, v6

    .line 439
    :cond_3
    invoke-virtual {p2, p0, v0}, Lcpw;->b(Ljava/lang/String;I)V

    move v6, v0

    .line 440
    goto :goto_1

    :cond_4
    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto :goto_2

    :cond_5
    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto :goto_2

    :cond_6
    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 599
    const/4 v0, 0x0

    .line 601
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 605
    :goto_0
    return-object v0

    .line 603
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcpx;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcpx;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcpx;->d:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcpx;Ljava/lang/String;ZLcpw;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcpx;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcpx;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x3f1

    invoke-virtual {p3, p1, v0}, Lcpw;->b(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_3

    if-eqz p2, :cond_2

    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v1

    invoke-virtual {v1}, Lhpa;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p1, v0, p3}, Lcpx;->a(Ljava/lang/String;Ljava/lang/String;Lcpw;)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/16 v0, 0x3f2

    invoke-virtual {p3, p1, v0}, Lcpw;->b(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v0

    invoke-virtual {v0}, Lhpa;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, p3}, Lcpx;->a(Ljava/lang/String;Lcpw;)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-direct {p0, p1, p3}, Lcpx;->b(Ljava/lang/String;Lcpw;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcpx;Ljava/lang/String;Ljava/lang/String;ZLcpw;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcpx;->a(Ljava/lang/String;Ljava/lang/String;ZLcpw;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZLcpw;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 194
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    const-string v3, ".apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    :cond_0
    const/16 v0, 0x3f1

    invoke-virtual {p4, p2, v0}, Lcpw;->a(Ljava/lang/String;I)V

    move v0, v2

    .line 213
    :goto_1
    return v0

    :cond_1
    move-object v0, p1

    .line 194
    goto :goto_0

    .line 201
    :cond_2
    if-eqz p3, :cond_4

    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v3

    invoke-virtual {v3}, Lhpa;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 202
    invoke-static {p2, v0, p4}, Lcpx;->b(Ljava/lang/String;Ljava/lang/String;Lcpw;)I

    move-result v0

    .line 203
    if-eqz v0, :cond_3

    .line 204
    invoke-virtual {p4, p2, v0}, Lcpw;->a(Ljava/lang/String;I)V

    .line 205
    invoke-direct {p0, p1, p2, p4}, Lcpx;->c(Ljava/lang/String;Ljava/lang/String;Lcpw;)V

    :cond_3
    :goto_2
    move v0, v1

    .line 213
    goto :goto_1

    .line 208
    :cond_4
    new-instance v0, Lcqb;

    invoke-direct {v0, p4, p2}, Lcqb;-><init>(Lcpw;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lau;->a(Ljava/lang/String;Lcom/redstone/sdk/enabler/remote/IRsServiceObserver;)I

    move-result v0

    if-gez v0, :cond_5

    :goto_3
    if-eqz v2, :cond_6

    move v0, v1

    .line 209
    goto :goto_1

    .line 208
    :cond_5
    invoke-virtual {p4, p2}, Lcpw;->b(Ljava/lang/String;)V

    move v2, v1

    goto :goto_3

    .line 211
    :cond_6
    invoke-direct {p0, p1, p2, p4}, Lcpx;->c(Ljava/lang/String;Ljava/lang/String;Lcpw;)V

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcpw;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x3ea

    .line 462
    invoke-virtual {p2, p0}, Lcpw;->b(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lj;->g(Landroid/content/Context;)Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    move-result-object v0

    .line 464
    invoke-static {p1, v0}, Lcom/wandoujia/base/utils/SystemUtil;->checkSpaceEnough(Ljava/lang/String;Lcom/wandoujia/base/utils/SystemUtil$InstallOption;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    sget-object v0, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->AUTO:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    .line 467
    :cond_0
    new-instance v3, Lhpf;

    invoke-direct {v3}, Lhpf;-><init>()V

    .line 468
    const/4 v1, 0x0

    .line 470
    :try_start_0
    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v4

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lhpa;->a(Ljava/lang/String;Ljava/lang/String;)Lhpf;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/wandoujia/rootkit/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/wandoujia/rootkit/exceptions/RootKitException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 492
    :goto_0
    iget-boolean v2, v1, Lhpf;->a:Z

    if-eqz v2, :cond_3

    .line 493
    const-string v2, "root.install.sucess"

    const-string v3, "root.install.sucess"

    iget-object v4, v1, Lhpf;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ld;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Ld;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 499
    :goto_1
    if-nez v0, :cond_1

    iget-boolean v1, v1, Lhpf;->a:Z

    if-nez v1, :cond_1

    .line 500
    const/16 v0, 0x3e8

    .line 502
    :cond_1
    if-eqz v0, :cond_2

    .line 503
    invoke-virtual {p2, p0, v0}, Lcpw;->a(Ljava/lang/String;I)V

    .line 505
    :cond_2
    return v0

    .line 472
    :catch_0
    move-exception v0

    invoke-virtual {v3}, Lhpf;->b()V

    .line 474
    const/16 v0, 0x3ec

    move-object v1, v3

    .line 491
    goto :goto_0

    .line 476
    :catch_1
    move-exception v0

    invoke-virtual {v3}, Lhpf;->c()V

    .line 478
    const/16 v0, 0x3e9

    move-object v1, v3

    .line 491
    goto :goto_0

    .line 480
    :catch_2
    move-exception v0

    invoke-virtual {v3}, Lhpf;->a()V

    .line 482
    const/16 v0, 0x3eb

    move-object v1, v3

    .line 491
    goto :goto_0

    .line 484
    :catch_3
    move-exception v0

    invoke-virtual {v3}, Lhpf;->d()V

    move v0, v2

    move-object v1, v3

    .line 491
    goto :goto_0

    .line 488
    :catch_4
    move-exception v0

    invoke-virtual {v3}, Lhpf;->e()V

    move v0, v2

    move-object v1, v3

    .line 490
    goto :goto_0

    .line 496
    :cond_3
    const-string v2, "root.install.failed"

    const-string v3, "root.install.failed"

    iget-object v4, v1, Lhpf;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ld;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Ld;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method static synthetic b(Lcpx;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcpx;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;Lcpw;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 445
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 446
    if-nez v0, :cond_0

    .line 447
    const/16 v0, 0x3f1

    invoke-virtual {p2, p1, v0}, Lcpw;->b(Ljava/lang/String;I)V

    .line 458
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 449
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 450
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 451
    iget-object v0, p0, Lcpx;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcpw;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    iget-object v0, p0, Lcpx;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcpx;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 511
    invoke-static {p1}, Lcom/wandoujia/appmanager/AppManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 512
    iget-object v6, p0, Lcpx;->e:Ljava/util/ArrayList;

    monitor-enter v6

    .line 513
    :try_start_0
    iget-object v7, p0, Lcpx;->e:Ljava/util/ArrayList;

    new-instance v0, Lcqd;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcqd;-><init>(Ljava/lang/String;Ljava/lang/String;Lcpw;Ljava/lang/String;B)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    iget-object v0, p0, Lcpx;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcpx;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 516
    return-void

    .line 514
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
