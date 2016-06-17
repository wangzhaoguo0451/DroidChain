.class public Lesb;
.super Ljava/lang/Object;
.source "PhoenixApplication.java"


# static fields
.field private static a:Lfvu;

.field private static b:Lfvt;

.field private static c:Lfoo;

.field private static d:Ldxj;

.field private static final e:Lhai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lhai;

    invoke-direct {v0}, Lhai;-><init>()V

    sput-object v0, Lesb;->e:Lhai;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b()Lfvu;
    .locals 6

    .prologue
    .line 69
    const-class v1, Lesb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lesb;->a:Lfvu;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lhez;

    invoke-direct {v0}, Lhez;-><init>()V

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x10000000

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 72
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getDeviceExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DataCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_1
    new-instance v2, Lfvu;

    invoke-direct {v2, v0}, Lfvu;-><init>(Ljava/lang/String;)V

    sput-object v2, Lesb;->a:Lfvu;

    .line 84
    :cond_0
    sget-object v0, Lesb;->a:Lfvu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DataCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DataCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Lfvt;
    .locals 3

    .prologue
    .line 88
    const-class v1, Lesb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lesb;->b:Lfvt;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lfvt;

    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v2

    invoke-direct {v0, v2}, Lfvt;-><init>(Lcom/wandoujia/rpc/http/client/DataApi;)V

    sput-object v0, Lesb;->b:Lfvt;

    .line 91
    :cond_0
    sget-object v0, Lesb;->b:Lfvt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 95
    new-instance v0, Lfyi;

    invoke-direct {v0}, Lfyi;-><init>()V

    invoke-static {v0}, Legx;->a(Leen;)V

    invoke-static {}, Legx;->b()V

    invoke-static {}, Legx;->j()V

    new-instance v0, Ldxj;

    invoke-direct {v0}, Ldxj;-><init>()V

    sput-object v0, Lesb;->d:Ldxj;

    const-string v0, "phoenix.intent.action.FROM_GAME_SHORTCUT"

    invoke-static {v0}, Lcom/wandoujia/launcher/LauncherConfig;->a(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/wandoujia/launcher/LauncherConfig;->a(C)V

    sget-object v0, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->NATIVE_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    invoke-static {v0}, Lcom/wandoujia/launcher/LauncherConfig;->a(Lcom/wandoujia/launcher/LauncherConfig$LauncherType;)V

    sget-object v0, Lesb;->d:Ldxj;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Ldxj;->c:Lcom/wandoujia/game_launcher/receivers/GameLauncherReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Ldxj;->c:Lcom/wandoujia/game_launcher/receivers/GameLauncherReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Ldxj;->c:Lcom/wandoujia/game_launcher/receivers/GameLauncherReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/account/storage/AccountStorageType;->SYSTEM:Lcom/wandoujia/account/storage/AccountStorageType;

    invoke-static {v1, v2}, Lchv;->a(Landroid/content/Context;Lcom/wandoujia/account/storage/AccountStorageType;)V

    new-instance v1, Ldxy;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ldxy;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Ldxj;->a:Ldxy;

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    iget-object v2, v0, Ldxj;->a:Ldxy;

    invoke-virtual {v1, v2}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    new-instance v1, Ldxm;

    invoke-direct {v1}, Ldxm;-><init>()V

    invoke-static {v1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageManagerHolder(Ldbx;)V

    invoke-static {}, Legx;->f()Leen;

    new-instance v1, Ldxo;

    invoke-direct {v1}, Ldxo;-><init>()V

    iput-object v1, v0, Ldxj;->b:Ldxo;

    iget-object v1, v0, Ldxj;->b:Ldxo;

    new-instance v2, Lcta;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Ldxo;->b:Lcsx;

    const-string v6, "game_launcher"

    invoke-direct {v2, v3, v4, v5, v6}, Lcta;-><init>(Landroid/content/Context;Ljava/lang/String;Lcsx;Ljava/lang/String;)V

    iput-object v2, v1, Ldxo;->a:Lcta;

    invoke-static {}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a()Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;

    move-result-object v2

    iget-object v3, v1, Ldxo;->c:Lefm;

    invoke-virtual {v2, v3}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a(Lefm;)V

    invoke-static {}, Leha;->a()Leha;

    move-result-object v2

    iget-object v1, v1, Ldxo;->d:Lehd;

    invoke-virtual {v2, v1}, Leha;->a(Lehd;)V

    :try_start_0
    iget-object v0, v0, Ldxj;->b:Ldxo;

    invoke-virtual {v0}, Ldxo;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ldxk;

    invoke-direct {v0}, Ldxk;-><init>()V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Legz;

    invoke-direct {v0}, Legz;-><init>()V

    invoke-static {v0}, Legx;->a(Legz;)V

    new-instance v0, Ldxn;

    invoke-direct {v0, v7}, Ldxn;-><init>(B)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldxn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-static {v0}, Legx;->a(Lcom/wandoujia/rpc/http/client/DataApi;)V

    invoke-static {}, Lezz;->a()Lezz;

    .line 97
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_md5"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/AppMd5Manager;

    sget-object v2, Lesb;->e:Lhai;

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->d:Ljava/util/List;

    monitor-enter v3

    :try_start_1
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhai;

    if-eqz v1, :cond_0

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->d:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lesc;

    invoke-direct {v1}, Lesc;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->d()V

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a(Ljava/io/File;)V

    iget-object v2, v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->c:Lgep;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->c:Lgep;

    invoke-virtual {v2}, Lgep;->stopWatching()V

    :cond_2
    new-instance v2, Lgep;

    invoke-direct {v2, v0, v1}, Lgep;-><init>(Lcom/wandoujia/p4/video/manager/VideoProviderManager;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->c:Lgep;

    iget-object v1, v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->c:Lgep;

    invoke-virtual {v1}, Lgep;->startWatching()V

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->e()Z

    .line 134
    return-void

    .line 95
    :cond_3
    const/16 v0, 0x20

    goto/16 :goto_0

    .line 97
    :cond_4
    :try_start_2
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public static e()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lfoo;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lesb;->c:Lfoo;

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lesb;->c:Lfoo;

    .line 163
    :goto_0
    return-object v0

    .line 156
    :cond_0
    const-class v1, Lesb;

    monitor-enter v1

    .line 157
    :try_start_0
    sget-object v0, Lesb;->c:Lfoo;

    if-nez v0, :cond_1

    .line 160
    new-instance v0, Lfoo;

    invoke-direct {v0}, Lfoo;-><init>()V

    sput-object v0, Lesb;->c:Lfoo;

    .line 162
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    sget-object v0, Lesb;->c:Lfoo;

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
