.class public final Lgsf;
.super Lgrr;
.source "WebDownloadManager.java"

# interfaces
.implements Lgrs;


# instance fields
.field public e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lgsi;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgrr;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgsf;->f:Ljava/util/Queue;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgsf;->g:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgsf;->h:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lgsf;->j:Ljava/util/List;

    .line 55
    new-instance v0, Lgsi;

    invoke-direct {v0, p1}, Lgsi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgsf;->i:Lgsi;

    .line 56
    return-void
.end method

.method static synthetic a(Lgsf;Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    iget-object v3, p0, Lgsf;->i:Lgsi;

    iget-object v4, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->getTypeByName(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/WebDownloadType;

    move-result-object v5

    iget-object v0, v3, Lgsi;->b:Ljava/util/Set;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Lgsi;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgsq;

    invoke-virtual {v0}, Lgsq;->a()Lcom/wandoujia/p4/webdownload/WebDownloadType;

    move-result-object v0

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    if-gtz v0, :cond_3

    iget-object v6, v3, Lgsi;->a:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->createWebDownloader(Landroid/content/Context;)Lgsq;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Lgsi;->b:Ljava/util/Set;

    iget-object v7, v3, Lgsi;->a:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->createWebDownloader(Landroid/content/Context;)Lgsq;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "you must set type downloader before call this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, v3, Lgsi;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgsq;

    invoke-virtual {v0}, Lgsq;->a()Lcom/wandoujia/p4/webdownload/WebDownloadType;

    move-result-object v3

    if-ne v3, v5, :cond_4

    iget-boolean v3, v0, Lgsq;->e:Z

    if-nez v3, :cond_5

    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    iput-object v4, v0, Lgsq;->c:Ljava/lang/String;

    iput-object p0, v0, Lgsq;->d:Lgrs;

    iget-object v2, v0, Lgsq;->b:Landroid/content/Context;

    invoke-static {v2}, Lgro;->a(Landroid/content/Context;)Lgro;

    move-result-object v2

    iput-object v2, v0, Lgsq;->f:Lgro;

    iput-boolean v1, v0, Lgsq;->e:Z

    new-instance v2, Lgsr;

    invoke-direct {v2, v0, p0}, Lgsr;-><init>(Lgsq;Lgrs;)V

    invoke-static {v2}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_7

    iget-object v0, p0, Lgsf;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lgsf;->h:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lgsf;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lgsf;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    invoke-direct {p0, p2}, Lgsf;->c(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-object p2

    .line 133
    :cond_0
    iget-object v0, p0, Lgsf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 134
    iget-object v2, p0, Lgsf;->b:Lgro;

    iget-object v3, v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lgro;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    iget-object p2, v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lgsf;->j:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 143
    iget-object v0, p0, Lgsf;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lgsf;->b:Lgro;

    invoke-virtual {v2, p1, v0}, Lgro;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p2, v0

    .line 145
    goto :goto_0

    .line 150
    :cond_4
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;
    .locals 3
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lgsf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    .line 225
    iget-object v2, v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lgsf;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 284
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 287
    if-eqz v0, :cond_0

    .line 288
    const-string v2, "{[start proxy error description:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]};"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    if-eqz v0, :cond_2

    .line 294
    :try_start_0
    iget-object v0, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_START_PROXY:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    invoke-virtual {v2}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lgsf;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgsf;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lgsf;->b:Lgro;

    iget-object v1, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgro;->b(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lgsf;->b:Lgro;

    iget-object v1, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgro;->c(Ljava/lang/String;)V

    .line 68
    :cond_2
    iget-boolean v0, p0, Lgsf;->c:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lgsf;->d:Z

    if-eqz v0, :cond_3

    .line 69
    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgsg;

    invoke-direct {v1, p0, p1}, Lgsg;-><init>(Lgsf;Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lgsf;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 77
    iget-boolean v0, p0, Lgsf;->c:Z

    if-nez v0, :cond_4

    .line 78
    invoke-virtual {p0}, Lgsf;->a()V

    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p0}, Lgsf;->b()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lgsf;->c(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    move-result-object v0

    .line 330
    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v1, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    if-eqz v1, :cond_0

    .line 336
    :try_start_0
    iget-object v1, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    invoke-interface {v1, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lgsf;->c(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    move-result-object v1

    .line 406
    if-nez v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lgsf;->h:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 411
    if-eqz v0, :cond_2

    .line 412
    const-string v2, "{[download error pageurl:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], [errorType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "],[description:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]};\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_2
    iget-object v0, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    if-eqz v0, :cond_0

    .line 418
    :try_start_0
    iget-object v0, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    invoke-virtual {p2}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lgsf;->c(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    move-result-object v0

    .line 346
    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v1, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    if-eqz v1, :cond_0

    .line 352
    :try_start_0
    iget-object v1, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    invoke-interface {v1, v0, p2}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
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
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lgsf;->c(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    move-result-object v1

    .line 363
    if-nez v1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    if-eqz v0, :cond_1

    .line 369
    :try_start_0
    iget-object v0, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_1
    :goto_1
    iget-object v0, p0, Lgsf;->h:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 376
    if-eqz v0, :cond_4

    .line 377
    iget-object v2, p0, Lgsf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "play_result"

    const-string v5, "succeed"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "page_url"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "message"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v0, "audio_src_url"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "walkman"

    const-string v4, "play"

    const-string v5, "time_out"

    invoke-static {v2, v0, v4, v5, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 381
    :cond_4
    const-string v0, "webdownload-download"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebDownloadManager onMediaSrcFound current download size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgsf;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    invoke-virtual {p0, v1}, Lgsf;->b(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-boolean v0, p0, Lgsf;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lgsf;->d:Z

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lgsf;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lgsf;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lgsf;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lgsf;->i:Lgsi;

    iget-object v2, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->getTypeByName(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/WebDownloadType;

    move-result-object v3

    iget-object v0, v0, Lgsi;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgsq;

    invoke-virtual {v0}, Lgsq;->a()Lcom/wandoujia/p4/webdownload/WebDownloadType;

    move-result-object v5

    if-ne v5, v3, :cond_3

    iget-object v5, v0, Lgsq;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "webdownload-download"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WebDownloadManager stopDownload remove downloadingUrls: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgsq;->c()V

    const/4 v0, 0x1

    .line 193
    :goto_1
    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lgsf;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 191
    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lgsf;->c(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    move-result-object v0

    .line 389
    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v1, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    if-eqz v1, :cond_0

    .line 395
    :try_start_0
    iget-object v1, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    invoke-interface {v1, v0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;->b(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final blockRequestInMobileNetwork()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 6
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lgsf;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 200
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lgsf;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "play_result"

    const-string v5, "failed"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "page_url"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "walkman"

    const-string v2, "play"

    const-string v4, "time_out"

    invoke-static {v1, v0, v2, v4, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lgsf;->b(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    .line 204
    return-void
.end method

.method public final cacheResponse()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public final d(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)J
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 207
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-wide v0

    .line 211
    :cond_1
    iget-object v2, p0, Lgsf;->b:Lgro;

    iget-object v3, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgro;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    if-eqz v2, :cond_0

    .line 216
    invoke-static {v2}, Lcom/wandoujia/base/utils/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final e()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method protected final f()V
    .locals 0

    .prologue
    .line 239
    invoke-static {}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->g()V

    .line 240
    return-void
.end method

.method public final getUrlsPageUrl(Ljava/lang/String;Liaw;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-static {p2}, Lgxm;->a(Liaw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    invoke-direct {p0, p1}, Lgsf;->c(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_2

    .line 95
    iget-object v0, v1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    .line 113
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lgsf;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    iget-object v1, p0, Lgsf;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lgsf;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 116
    iget-object v1, p0, Lgsf;->j:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 120
    :cond_1
    const-string v1, "webdownload-download"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebDownloadManager get url\'s pageUrl url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pageUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-object v0

    .line 98
    :cond_2
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    const-string v1, "webdownload-download"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUrlsPageUrl check is sent by media "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lgxg;->b(Liaw;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isRange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lgxg;->a(Liaw;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_3
    invoke-static {p2}, Lgxg;->b(Liaw;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-direct {p0, p1, v0}, Lgsf;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_4
    invoke-direct {p0, p1, v0}, Lgsf;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onProxyCacheError(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-super {p0, p1, p2, p3}, Lgrr;->onProxyCacheError(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, p1}, Lgsf;->c(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    move-result-object v1

    .line 307
    if-nez v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lgsf;->h:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 313
    if-eqz v0, :cond_2

    .line 314
    const-string v2, "{[proxy error pageUrl:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], [errorType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "],[description:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]};"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_2
    iget-object v0, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    if-eqz v0, :cond_0

    .line 320
    :try_start_0
    iget-object v0, p0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    invoke-virtual {p2}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onProxyHttpHostSetFailed()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lgrr;->onProxyHttpHostSetFailed()V

    .line 263
    const-string v0, "set http host error"

    invoke-direct {p0, v0}, Lgsf;->d(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public final onProxyHttpHostSetSuccess()V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Lgrr;->onProxyHttpHostSetSuccess()V

    .line 251
    iget-object v0, p0, Lgsf;->f:Ljava/util/Queue;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgsf;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lgsh;

    invoke-direct {v2, p0, v0}, Lgsh;-><init>(Lgsf;Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    :cond_0
    return-void
.end method

.method public final onProxyServerStartFailed()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lgrr;->onProxyServerStartFailed()V

    .line 257
    const-string v0, "start proxy server error"

    invoke-direct {p0, v0}, Lgsf;->d(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public final onProxyServerStartSuccess()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Lgrr;->onProxyServerStartSuccess()V

    .line 245
    invoke-virtual {p0}, Lgsf;->b()V

    .line 246
    return-void
.end method

.method public final useCacheInProxy()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method
