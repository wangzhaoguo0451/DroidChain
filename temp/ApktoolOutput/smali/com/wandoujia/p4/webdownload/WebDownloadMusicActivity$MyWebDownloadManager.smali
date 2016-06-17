.class public Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;
.super Ljava/lang/Object;
.source "WebDownloadMusicActivity.java"

# interfaces
.implements Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;


# static fields
.field private static f:Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leax;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface;

.field public e:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;->b:Ljava/util/List;

    .line 200
    new-instance v0, Lgqy;

    invoke-direct {v0, p0}, Lgqy;-><init>(Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;->e:Landroid/content/ServiceConnection;

    .line 224
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;->a:Landroid/content/Context;

    .line 225
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;
    .locals 2
    .parameter

    .prologue
    .line 228
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;->f:Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;->f:Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;

    .line 231
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;->f:Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;)Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;->d:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface;)Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;->d:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-static {p0, p1}, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;->c:Ljava/util/List;

    return-object v0
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 297
    .line 301
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 306
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 312
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_2

    .line 313
    const-string v2, "WebDownloadActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http response not 200 : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 328
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move v0, v1

    .line 335
    :goto_0
    return v0

    .line 318
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 319
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 321
    :try_start_4
    invoke-static {v5, v4}, Lcom/wandoujia/base/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 327
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 328
    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 330
    if-eqz v0, :cond_3

    .line 331
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 335
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    .line 323
    :goto_1
    :try_start_5
    const-string v5, "WebDownloadActivity"

    const-string v6, "download file error"

    invoke-static {v5, v6, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 325
    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 328
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 330
    if-eqz v2, :cond_4

    .line 331
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move v0, v1

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    :goto_2
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 328
    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 330
    if-eqz v3, :cond_5

    .line 331
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    .line 327
    :catchall_1
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_2

    .line 322
    :catch_1
    move-exception v2

    move-object v4, v3

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v4, v5

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;",
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
    .line 281
    new-instance v0, Lgra;

    invoke-direct {v0, p3, p2}, Lgra;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    new-instance v0, Lgqz;

    invoke-direct {v0, p0, p1}, Lgqz;-><init>(Lcom/wandoujia/p4/webdownload/WebDownloadMusicActivity$MyWebDownloadManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    return-void
.end method
