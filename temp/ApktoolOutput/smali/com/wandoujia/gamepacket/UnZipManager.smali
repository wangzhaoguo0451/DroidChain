.class public final Lcom/wandoujia/gamepacket/UnZipManager;
.super Ljava/lang/Object;
.source "UnZipManager.java"


# static fields
.field static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/gamepacket/UnZipManager;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager;->b:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager;->c:Ljava/util/Map;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager;->d:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/wandoujia/gamepacket/UnZipManager;->e:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/wandoujia/gamepacket/UnZipManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/wandoujia/gamepacket/UnZipManager;Ljava/lang/String;JJLcvk;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    cmp-long v0, p2, p4

    if-gtz v0, :cond_0

    long-to-double v0, p2

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    long-to-double v2, p4

    div-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, p1}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/gamepacket/UnZipManager;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    iget-object v1, p0, Lcom/wandoujia/gamepacket/UnZipManager;->d:Landroid/os/Handler;

    new-instance v2, Lcvi;

    invoke-direct {v2, p6, v0}, Lcvi;-><init>(Lcvk;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/wandoujia/gamepacket/UnZipManager;Ljava/lang/String;Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;Lcvk;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Ljava/lang/String;Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;Lcvk;)V

    return-void
.end method

.method static synthetic a(Lcom/wandoujia/gamepacket/UnZipManager;Ljava/util/Set;Lcvk;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager;->d:Landroid/os/Handler;

    new-instance v1, Lcvj;

    invoke-direct {v1, p2, p1}, Lcvj;-><init>(Lcvk;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/wandoujia/gamepacket/UnZipManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/wandoujia/base/utils/FileUtil;->deletePath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final a(Ljava/lang/String;Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;Lcvk;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    if-eqz p3, :cond_0

    .line 68
    iget-object v0, p0, Lcom/wandoujia/gamepacket/UnZipManager;->d:Landroid/os/Handler;

    new-instance v1, Lcvh;

    invoke-direct {v1, p3, p2}, Lcvh;-><init>(Lcvk;Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_0
    return-void
.end method
