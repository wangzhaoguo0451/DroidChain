.class public abstract Lgrr;
.super Ljava/lang/Object;
.source "BaseWebManager.java"

# interfaces
.implements Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;
.implements Lcom/wandoujia/p4/webdownload/util/ProxySettings$StartProxyListener;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lgro;

.field protected c:Z

.field protected d:Z

.field private e:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;

.field private f:Lihd;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lgrr;->c:Z

    .line 43
    iput-boolean v0, p0, Lgrr;->d:Z

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lgxl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lgrr;->a:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;-><init>(Landroid/content/Context;Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;)V

    iput-object v0, p0, Lgrr;->e:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;

    .line 65
    invoke-static {p1}, Lgro;->a(Landroid/content/Context;)Lgro;

    move-result-object v0

    iput-object v0, p0, Lgrr;->b:Lgro;

    .line 66
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized g()V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lgxm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 98
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgrr;->f:Lihd;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lgrr;->f:Lihd;

    invoke-virtual {v0}, Lihd;->a()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lgrr;->f:Lihd;

    .line 102
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgrr;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lgxm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lgrr;->c:Z

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lgrr;->onProxyServerStartSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 79
    :try_start_2
    iget-object v1, p0, Lgrr;->e:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;

    invoke-virtual {p0}, Lgrr;->e()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;Lorg/apache/http/HttpHost;)Lihd;

    move-result-object v1

    iput-object v1, p0, Lgrr;->f:Lihd;

    .line 80
    iget-object v1, p0, Lgrr;->f:Lihd;

    if-nez v1, :cond_2

    .line 81
    invoke-virtual {p0}, Lgrr;->f()V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lgrr;->f:Lihd;

    if-nez v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lgrr;->onProxyServerStartFailed()V

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p0}, Lgrr;->onProxyServerStartSuccess()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final declared-synchronized b()V
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgrr;->d:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lgrr;->onProxyHttpHostSetSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgrr;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lgrr;->e()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(Landroid/content/Context;Lorg/apache/http/HttpHost;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lgrr;->onProxyHttpHostSetSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lgrr;->onProxyHttpHostSetFailed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final declared-synchronized c()V
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgrr;->d:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lgrr;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(Landroid/content/Context;)Z

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgrr;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lgrr;->c()V

    .line 130
    invoke-direct {p0}, Lgrr;->g()V

    .line 131
    return-void
.end method

.method protected abstract e()Lorg/apache/http/HttpHost;
.end method

.method protected abstract f()V
.end method

.method public getPageDynamicStrategy(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lgrr;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lgxa;->a(Landroid/content/Context;Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;)Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onProxyCacheError(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    return-void
.end method

.method public onProxyHttpHostSetFailed()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgrr;->d:Z

    .line 163
    return-void
.end method

.method public onProxyHttpHostSetSuccess()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgrr;->d:Z

    .line 158
    return-void
.end method

.method public onProxyServerStartFailed()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgrr;->c:Z

    .line 153
    return-void
.end method

.method public onProxyServerStartSuccess()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgrr;->c:Z

    .line 148
    return-void
.end method
