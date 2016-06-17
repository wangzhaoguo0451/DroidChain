.class public final Lcom/wandoujia/launcher_base/utils/ZipManager;
.super Ljava/lang/Object;
.source "ZipManager.java"


# static fields
.field private static h:Lcom/wandoujia/launcher_base/utils/ZipManager;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
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

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:[B

.field public final f:[B

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Leij;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->g:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->a:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->b:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->c:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->d:Ljava/util/Map;

    .line 43
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->e:[B

    .line 49
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->f:[B

    .line 74
    return-void
.end method

.method public static declared-synchronized a()Lcom/wandoujia/launcher_base/utils/ZipManager;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/wandoujia/launcher_base/utils/ZipManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->h:Lcom/wandoujia/launcher_base/utils/ZipManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/wandoujia/launcher_base/utils/ZipManager;

    invoke-direct {v0}, Lcom/wandoujia/launcher_base/utils/ZipManager;-><init>()V

    sput-object v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->h:Lcom/wandoujia/launcher_base/utils/ZipManager;

    .line 71
    :cond_0
    sget-object v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->h:Lcom/wandoujia/launcher_base/utils/ZipManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;JJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x64

    const/16 v0, 0x64

    .line 34
    mul-long v2, p2, v4

    div-long/2addr v2, p4

    long-to-int v1, v2

    if-le v1, v0, :cond_1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->e:[B

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p2, v4

    const-wide/16 v6, 0x3c00

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    new-instance v0, Leie;

    invoke-direct {v0, p1, v1}, Leie;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Leif;)V

    iget-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    mul-long v0, p2, v4

    div-long/2addr v0, p4

    long-to-int v0, v0

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v1, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Leid;

    invoke-direct {v0, p1, p2}, Leid;-><init>(Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V

    invoke-direct {p0, v0}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Leif;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic a(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v1, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->f:[B

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->deletePath(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private a(Leif;)V
    .locals 5
    .parameter

    .prologue
    .line 222
    iget-object v1, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->g:Ljava/util/Set;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 224
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 226
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leij;

    .line 227
    if-nez v0, :cond_0

    .line 228
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 230
    :cond_0
    :try_start_1
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Leic;

    invoke-direct {v4, p1, v0}, Leic;-><init>(Leif;Leij;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 238
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static synthetic a(Ljava/io/Closeable;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;
    .locals 2
    .parameter

    .prologue
    .line 172
    iget-object v1, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->a:Ljava/util/Map;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    monitor-exit v1

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Leij;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    iget-object v1, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->g:Ljava/util/Set;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/launcher_base/utils/ZipManager;->g:Ljava/util/Set;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
