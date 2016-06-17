.class public final Lehi;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static final e:Lcom/wandoujia/appmanager/LocalAppChangedListener;

.field private static f:Lehi;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lehq;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lehi;->c:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lehi;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Android/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lehi;->d:Ljava/lang/String;

    .line 55
    new-instance v0, Lehj;

    invoke-direct {v0}, Lehj;-><init>()V

    sput-object v0, Lehi;->e:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lehi;->a:Ljava/util/Set;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lehi;->b:Ljava/util/Set;

    .line 87
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 3
    .parameter

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 301
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 304
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 305
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v0

    int-to-long v0, v0

    .line 311
    if-eqz v2, :cond_0

    .line 313
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 319
    :cond_0
    :goto_0
    return-wide v0

    .line 307
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    .line 313
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 319
    :cond_1
    :goto_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 309
    :catch_1
    move-exception v1

    :goto_3
    if-eqz v0, :cond_1

    .line 313
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 315
    :catch_2
    move-exception v0

    goto :goto_2

    .line 311
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_2

    .line 313
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 315
    :cond_2
    :goto_5
    throw v0

    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    .line 311
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 309
    :catch_6
    move-exception v0

    move-object v0, v2

    goto :goto_3

    .line 307
    :catch_7
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method static synthetic a(Ljava/util/List;J)Lcom/wandoujia/entities/app/DownloadUrl;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/DownloadUrl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/DownloadUrl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lehi;->a(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lehi;
    .locals 2

    .prologue
    .line 78
    const-class v1, Lehi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lehi;->f:Lehi;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lehi;

    invoke-direct {v0}, Lehi;-><init>()V

    sput-object v0, Lehi;->f:Lehi;

    .line 81
    :cond_0
    sget-object v0, Lehi;->f:Lehi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lehi;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lehi;->b:Ljava/util/Set;

    return-object v0
.end method

.method public static a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 8
    .parameter

    .prologue
    .line 142
    if-nez p0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    .line 147
    sget-object v2, Lehi;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/wandoujia/base/utils/FileUtil;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 148
    invoke-static {}, Legx;->g()Landroid/app/Activity;

    goto :goto_0

    .line 147
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 175
    :cond_3
    if-eqz p0, :cond_0

    const-string v0, "extra.packet.dst.path"

    invoke-interface {p0, v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Android/obb/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lehi;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    sget-object v1, Lehi;->e:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    invoke-static {}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a()Lcom/wandoujia/launcher_base/utils/ZipManager;

    move-result-object v1

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Leii;

    const-string v0, "extra.packet.dst.path"

    invoke-interface {p0, v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ".apk"

    invoke-direct {v5, v0, v6}, Leii;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Leih;

    invoke-direct {v6, p0}, Leih;-><init>(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    iget-object v7, v1, Lcom/wandoujia/launcher_base/utils/ZipManager;->f:[B

    monitor-enter v7

    :try_start_0
    new-instance v0, Leig;

    invoke-direct/range {v0 .. v5}, Leig;-><init>(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leii;)V

    new-instance v3, Leia;

    invoke-direct {v3, v1, v2, v0, v6}, Leia;-><init>(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;Leig;Leih;)V

    invoke-virtual {v3}, Leia;->start()V

    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v4, Lehi;->d:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lehi;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lehi;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lehi;->a:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lehi;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lehi;->b()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;ILehp;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ApkObbInfo;",
            ">;I",
            "Lehp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    if-eqz p3, :cond_0

    .line 192
    invoke-static {}, Lehp;->a()V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    new-instance v0, Lehl;

    invoke-direct {v0, p0, p2, p1, p3}, Lehl;-><init>(Ljava/lang/String;ILjava/util/List;Lehp;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    if-eqz p0, :cond_1

    .line 239
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lehr;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 245
    :cond_1
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lehk;

    invoke-direct {v1, p0}, Lehk;-><init>(Lehi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method static synthetic b(Lehi;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v1, p0, Lehi;->a:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lehi;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lehi;->b()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
