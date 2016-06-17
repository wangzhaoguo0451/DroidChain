.class public Lham;
.super Lhal;
.source "CommonDataContext.java"


# static fields
.field public static f:Lham;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lahk;

.field private c:Lcom/wandoujia/ripple_framework/download/DownloadManager;

.field public g:Leqr;

.field public h:Lhev;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field protected k:Lcom/wandoujia/appmanager/AppManager;

.field public l:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

.field protected m:Ldaa;

.field public n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected p:Lcom/wandoujia/ripple_framework/AppMd5Manager;

.field private q:Lcom/wandoujia/base/storage/StorageManager;

.field private r:Lhfo;

.field private s:Lhfr;

.field private t:Lhhz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcqj;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    const-string v0, "wandoujia"

    invoke-direct {p0, p1, v0}, Lhal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lham;->a:Ljava/util/Map;

    .line 85
    new-instance v0, Lhfo;

    invoke-direct {v0}, Lhfo;-><init>()V

    iput-object v0, p0, Lham;->r:Lhfo;

    .line 92
    sput-object p0, Lham;->f:Lham;

    .line 93
    invoke-virtual {p0, p2}, Lham;->a(Lcqj;)V

    .line 94
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    .line 203
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 205
    const-class v4, Lhar;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    :try_start_0
    iget-object v4, p0, Lham;->a:Ljava/util/Map;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 208
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "you must init "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public a(Lcqj;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 110
    new-instance v0, Lhhk;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->JUPITER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v2, "jupiter"

    invoke-virtual {p1}, Lcqj;->b()Lemz;

    move-result-object v3

    iget-object v4, p1, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    invoke-static {v4}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lhhk;-><init>(Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;Ljava/lang/String;Lemz;Ljava/lang/String;)V

    new-instance v1, Lcom/wandoujia/ripple_framework/log/Logger;

    iget-object v2, p0, Lhal;->d:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/ripple_framework/log/Logger;-><init>(Landroid/content/Context;Lemu;)V

    iput-object v1, p0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const-string v0, "log"

    iget-object v1, p0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {p0, v0, v1}, Lhal;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lham;->d:Landroid/content/Context;

    const-string v1, "cache"

    const-string v2, "wandoujia"

    invoke-static {v0, v2}, Ld;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    :goto_0
    iput-object v0, p0, Lham;->i:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lham;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lham;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lham;->i:Ljava/lang/String;

    .line 118
    :cond_1
    const-string v0, "wandoujia"

    iput-object v0, p0, Lham;->j:Ljava/lang/String;

    .line 119
    const-class v0, Lcom/wandoujia/jupiter/activity/HomeActivity;

    iput-object v0, p0, Lham;->n:Ljava/lang/Class;

    .line 120
    const-class v0, Lcom/wandoujia/jupiter/library/activity/LibActivity;

    iput-object v0, p0, Lham;->o:Ljava/lang/Class;

    .line 122
    invoke-virtual {p1}, Lcqj;->b()Lemz;

    .line 124
    new-instance v0, Lcom/wandoujia/ripple_framework/AppMd5Manager;

    invoke-direct {v0}, Lcom/wandoujia/ripple_framework/AppMd5Manager;-><init>()V

    iput-object v0, p0, Lham;->p:Lcom/wandoujia/ripple_framework/AppMd5Manager;

    .line 127
    new-instance v6, Lhap;

    invoke-direct {v6, p0}, Lhap;-><init>(Lham;)V

    .line 128
    new-instance v0, Ldaa;

    iget-object v1, p0, Lham;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Ldaa;-><init>(Landroid/content/Context;Lczz;)V

    iput-object v0, p0, Lham;->m:Ldaa;

    .line 129
    iget-object v0, p0, Lham;->m:Ldaa;

    iput-boolean v8, v0, Ldaa;->j:Z

    .line 130
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    const-string v1, "image"

    iget-object v2, p0, Lham;->m:Ldaa;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Lhan;

    invoke-direct {v0, p0}, Lhan;-><init>(Lham;)V

    invoke-static {v0}, Lcom/wandoujia/image/view/AsyncImageView;->setImageManagerHolder(Ldbx;)V

    .line 139
    iget-object v0, p0, Lham;->d:Landroid/content/Context;

    sget-object v1, Lcom/wandoujia/base/utils/ThreadPool;->NORMAL_PRIOR_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1, p1}, Lcom/wandoujia/appmanager/AppManager;->a(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcqj;)V

    .line 140
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iput-object v0, p0, Lham;->k:Lcom/wandoujia/appmanager/AppManager;

    .line 141
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    const-string v1, "app"

    iget-object v2, p0, Lham;->k:Lcom/wandoujia/appmanager/AppManager;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lhao;

    invoke-direct {v1, p0}, Lhao;-><init>(Lham;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lham;->q:Lcom/wandoujia/base/storage/StorageManager;

    .line 152
    new-instance v0, Lhhz;

    invoke-direct {v0}, Lhhz;-><init>()V

    iput-object v0, p0, Lham;->t:Lhhz;

    .line 153
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    const-string v1, "holder"

    iget-object v2, p0, Lham;->t:Lhhz;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    const-string v1, "storage"

    iget-object v2, p0, Lham;->q:Lcom/wandoujia/base/storage/StorageManager;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    const-string v1, "app_md5"

    iget-object v2, p0, Lham;->p:Lcom/wandoujia/ripple_framework/AppMd5Manager;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    const-string v1, "event_bus"

    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lham;->a()V

    .line 160
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lham;->d:Landroid/content/Context;

    const-string v2, "jupiter"

    iget-object v3, p0, Lham;->k:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/ripple_framework/download/DownloadManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/wandoujia/appmanager/AppManager;Lhrx;)V

    iput-object v0, p0, Lham;->c:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    .line 162
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    const-string v1, "download"

    iget-object v2, p0, Lham;->c:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v7, p0, Lham;->c:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a()V

    iget-boolean v0, v7, Lcom/wandoujia/ripple_framework/download/DownloadManager;->h:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkType()I

    move-result v1

    iput v1, v7, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a:I

    iget-object v1, v7, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    iget-object v2, v7, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcta;

    iget-object v1, v7, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    iget-object v2, v7, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/wandoujia/ripple_framework/download/DownloadManager;->c:Lcsx;

    iget-object v4, v7, Lcom/wandoujia/ripple_framework/download/DownloadManager;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcta;-><init>(Landroid/content/Context;Ljava/lang/String;Lcsx;Ljava/lang/String;B)V

    iput-object v0, v7, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d:Lcta;

    iget-object v0, v7, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    new-instance v1, Lhcl;

    invoke-direct {v1, v7}, Lhcl;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadManager;)V

    iget-boolean v2, v0, Lhcb;->g:Z

    if-nez v2, :cond_2

    iput-boolean v8, v0, Lhcb;->g:Z

    iget-object v2, v0, Lhcb;->f:Lhcp;

    new-instance v3, Lhcc;

    invoke-direct {v3, v0, v1}, Lhcc;-><init>(Lhcb;Lhcl;)V

    iget-object v0, v2, Lhcp;->a:Landroid/os/Handler;

    new-instance v1, Lhcz;

    invoke-direct {v1, v2, v3}, Lhcz;-><init>(Lhcp;Lhde;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iput-boolean v8, v7, Lcom/wandoujia/ripple_framework/download/DownloadManager;->h:Z

    .line 164
    :cond_3
    new-instance v0, Lhfr;

    iget-object v1, p0, Lham;->d:Landroid/content/Context;

    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhfr;-><init>(Landroid/content/Context;Lhrx;)V

    iput-object v0, p0, Lham;->s:Lhfr;

    .line 165
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    const-string v1, "install"

    iget-object v2, p0, Lham;->s:Lhfr;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iget-object v1, p0, Lham;->c:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v2

    iget-object v3, p0, Lham;->s:Lhfr;

    iget-object v4, p0, Lham;->k:Lcom/wandoujia/appmanager/AppManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadManager;Lhrx;Lhfr;Lcom/wandoujia/appmanager/AppManager;)V

    iput-object v0, p0, Lham;->l:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    .line 168
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    const-string v1, "app_task"

    iget-object v2, p0, Lham;->l:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Lahk;

    iget-object v1, p0, Lham;->m:Ldaa;

    iget-object v1, v1, Ldaa;->g:Lagr;

    iget-object v2, p0, Lham;->m:Ldaa;

    iget-object v2, v2, Ldaa;->a:Ldbj;

    invoke-direct {v0, v1, v2}, Lahk;-><init>(Lagr;Lahp;)V

    iput-object v0, p0, Lham;->b:Lahk;

    .line 173
    new-instance v0, Lbxh;

    invoke-direct {v0}, Lbxh;-><init>()V

    invoke-static {}, Laja;->a()Lajb;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-interface {v6}, Lczz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lake;

    invoke-direct {v3, v2}, Lake;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lajb;->c:Lakd;

    const-string v2, "fresco_images"

    iput-object v2, v1, Lajb;->b:Ljava/lang/String;

    invoke-interface {v6}, Lczz;->c()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lajb;->d:J

    invoke-interface {v6}, Lczz;->c()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    iput-wide v2, v1, Lajb;->e:J

    invoke-interface {v6}, Lczz;->c()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    iput-wide v2, v1, Lajb;->f:J

    invoke-virtual {v1}, Lajb;->a()Laja;

    move-result-object v1

    iget-object v2, p0, Lham;->d:Landroid/content/Context;

    new-instance v3, Laqa;

    invoke-direct {v3, v2, v5}, Laqa;-><init>(Landroid/content/Context;B)V

    new-instance v2, Laoh;

    invoke-direct {v2, v0}, Laoh;-><init>(Lbxh;)V

    iput-object v2, v3, Laqa;->c:Laub;

    iput-object v1, v3, Laqa;->b:Laja;

    new-instance v0, Lapx;

    invoke-direct {v0, v3, v5}, Lapx;-><init>(Laqa;B)V

    iget-object v1, p0, Lham;->d:Landroid/content/Context;

    invoke-static {v0}, Lhdn;->a(Lapx;)V

    new-instance v0, Lhdr;

    invoke-direct {v0, v1}, Lhdr;-><init>(Landroid/content/Context;)V

    sput-object v0, Ld;->j:Lall;

    invoke-static {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a(Lakd;)V

    .line 174
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    const-string v1, "image_load"

    iget-object v2, p0, Lham;->b:Lahk;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-direct {p0}, Lham;->f()V

    .line 180
    iget-object v0, p0, Lham;->k:Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lham;->r:Lhfo;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 181
    return-void

    .line 112
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "MUST call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lham;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public b()Leqr;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lham;->g:Leqr;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lhew;

    invoke-direct {v0}, Lhew;-><init>()V

    iput-object v0, p0, Lham;->g:Leqr;

    .line 255
    :cond_0
    iget-object v0, p0, Lham;->g:Leqr;

    return-object v0
.end method

.method public c()Lhaw;
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lhaw;

    invoke-direct {v0}, Lhaw;-><init>()V

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lham;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lham;->m:Ldaa;

    iget-object v0, v0, Ldaa;->a:Ldbj;

    iget-object v0, v0, Ldbj;->a:Ldz;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ldz;->a(I)V

    .line 286
    invoke-static {}, Lhdn;->i()Lhdn;

    move-result-object v0

    invoke-virtual {v0}, Lhdn;->b()Lapm;

    move-result-object v0

    new-instance v1, Lajx;

    invoke-direct {v1}, Lajx;-><init>()V

    invoke-interface {v0, v1}, Lapm;->a(Lcom/android/internal/util/Predicate;)I

    .line 288
    invoke-static {}, Lhdn;->i()Lhdn;

    move-result-object v0

    invoke-virtual {v0}, Lhdn;->d()Lapm;

    move-result-object v0

    new-instance v1, Lajx;

    invoke-direct {v1}, Lajx;-><init>()V

    invoke-interface {v0, v1}, Lapm;->a(Lcom/android/internal/util/Predicate;)I

    .line 290
    return-void
.end method
