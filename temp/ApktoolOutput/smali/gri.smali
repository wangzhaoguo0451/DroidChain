.class public final Lgri;
.super Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;
.source "WebDownloadService.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/webdownload/WebDownloadService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/webdownload/WebDownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 221
    const-string v1, "webdownload-download"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "WebDownloadService addDownloadListener: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " current listener size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    if-nez p1, :cond_1

    .line 228
    :goto_1
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 3
    .parameter

    .prologue
    .line 212
    invoke-static {}, Lgxm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    const-string v0, "webdownload-download"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebDownloadService startDownload url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->d(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Lgsf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgsf;->a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    .line 217
    return-void
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 234
    const-string v1, "webdownload-download"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "WebDownloadService removeDownloadListener: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " current listener size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 3
    .parameter

    .prologue
    .line 243
    invoke-static {}, Lgxm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    const-string v0, "webdownload-download"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebDownloadService delete page url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-virtual {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgro;->a(Landroid/content/Context;)Lgro;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgro;->c(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public final c(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 3
    .parameter

    .prologue
    .line 253
    invoke-static {}, Lgxm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    const-string v0, "webdownload-download"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebDownloadService stopDownload page url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->d(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Lgsf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgsf;->b(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    .line 258
    return-void
.end method

.method public final d(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 3
    .parameter

    .prologue
    .line 262
    invoke-static {}, Lgxm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    const-string v0, "webdownload-download"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebDownloadService download timeout page url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->d(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Lgsf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgsf;->c(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    .line 268
    return-void
.end method

.method public final e(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)Z
    .locals 2
    .parameter

    .prologue
    .line 272
    invoke-static {}, Lgxm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-virtual {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgro;->a(Landroid/content/Context;)Lgro;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgro;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final f(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)J
    .locals 2
    .parameter

    .prologue
    .line 282
    invoke-static {}, Lgxm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    iget-object v0, p0, Lgri;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->d(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Lgsf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgsf;->d(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)J

    move-result-wide v0

    return-wide v0
.end method
