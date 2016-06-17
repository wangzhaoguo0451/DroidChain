.class public final Lcom/wandoujia/ripple_framework/AppMd5Manager;
.super Ljava/lang/Object;
.source "AppMd5Manager.java"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhaj;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/SharedPreferences;

.field public c:Landroid/content/SharedPreferences$Editor;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lhai;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->d:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;-><init>(Lcom/wandoujia/ripple_framework/AppMd5Manager;B)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->f:Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->f:Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    new-instance v1, Lhag;

    invoke-direct {v1, p0}, Lhag;-><init>(Lcom/wandoujia/ripple_framework/AppMd5Manager;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lhat;)V

    .line 129
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 376
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 377
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 379
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0

    .line 384
    :cond_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Lhaj;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a()V

    .line 163
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a:Ljava/util/Map;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->c:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Lhaj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->c:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 168
    return-void

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 265
    :try_start_0
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v0

    .line 275
    new-instance v4, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 280
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 281
    :try_start_2
    invoke-static {v6, p2}, Lcom/wandoujia/base/utils/MD5Utils;->md5Digest(Ljava/io/InputStream;[B)Ljava/lang/String;

    move-result-object v1

    .line 286
    new-instance v0, Lhaj;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lhaj;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a(Ljava/lang/String;Lhaj;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 292
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 300
    :cond_0
    :goto_0
    return-object v1

    .line 288
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 294
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 296
    :catch_1
    move-exception v0

    goto :goto_0

    .line 290
    :catch_2
    move-exception v0

    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_0

    .line 294
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 296
    :catch_3
    move-exception v0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_3
    if-eqz v6, :cond_1

    .line 294
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 296
    :cond_1
    :goto_4
    throw v0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 292
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 290
    :catch_6
    move-exception v0

    goto :goto_2

    .line 288
    :catch_7
    move-exception v0

    move-object v0, v6

    goto :goto_1

    .line 272
    :catch_8
    move-exception v0

    goto :goto_0

    .line 268
    :catch_9
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a()V

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a:Ljava/util/Map;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->c:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 159
    :cond_0
    return-void

    .line 155
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v3, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->d:Ljava/util/List;

    monitor-enter v3

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 318
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhai;

    .line 320
    if-eqz v0, :cond_2

    .line 321
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v5, v0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v8, v0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/appmanager/LocalAppInfo;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->md5:Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 326
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 321
    :cond_1
    :try_start_3
    invoke-static {v6}, Lcom/wandoujia/appmanager/AppManager;->a(Ljava/util/Collection;)V

    sget-object v1, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcos;

    invoke-direct {v2, v0, p1}, Lcos;-><init>(Lcom/wandoujia/appmanager/AppManager;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 323
    :cond_2
    :try_start_4
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 326
    :cond_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 205
    iget-object v4, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a:Ljava/util/Map;

    monitor-enter v4

    .line 206
    :try_start_0
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lhaj;

    move-object v8, v0

    .line 207
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    if-nez v8, :cond_0

    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 209
    invoke-static {v8}, Lhaj;->a(Lhaj;)Ljava/lang/String;

    move-result-object v2

    .line 211
    :goto_1
    return-object v2

    .line 207
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 208
    :cond_0
    sget-object v2, Lham;->f:Lham;

    iget-object v2, v2, Lhal;->d:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/wandoujia/base/utils/AppUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v6, Ljava/io/File;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v8}, Lhaj;->b(Lhaj;)J

    move-result-wide v10

    cmp-long v2, v4, v10

    if-nez v2, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v8}, Lhaj;->c(Lhaj;)J

    move-result-wide v10

    cmp-long v2, v4, v10

    if-nez v2, :cond_1

    move v2, v9

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v8}, Lhaj;->b(Lhaj;)J

    move-result-wide v10

    cmp-long v2, v4, v10

    if-nez v2, :cond_2

    invoke-static {v8}, Lhaj;->c(Lhaj;)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-nez v2, :cond_2

    new-instance v2, Lhaj;

    invoke-static {v8}, Lhaj;->a(Lhaj;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lhaj;->b(Lhaj;)J

    move-result-wide v4

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lhaj;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {p0, p1, v2}, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a(Ljava/lang/String;Lhaj;)V

    move v2, v9

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    .line 211
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
