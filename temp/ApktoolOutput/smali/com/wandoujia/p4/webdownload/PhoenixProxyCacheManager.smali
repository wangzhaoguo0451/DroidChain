.class public final Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;
.super Ljava/lang/Object;
.source "PhoenixProxyCacheManager.java"

# interfaces
.implements Liib;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lgro;

.field private c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p2, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cache interface can\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    .line 58
    invoke-static {p1}, Lgro;->a(Landroid/content/Context;)Lgro;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->b:Lgro;

    .line 59
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;->onProxyCacheError(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method

.method private a(Lhvg;)Z
    .locals 5
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    invoke-interface {v0}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;->blockRequestInMobileNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->c()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->i()I

    move-result v2

    .line 167
    invoke-static {}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a()Ljava/lang/String;

    move-result-object v3

    .line 168
    const/4 v0, -0x1

    .line 170
    :try_start_0
    invoke-static {}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 173
    :goto_0
    if-ne v2, v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {p1}, Lhvg;->g()Lhvl;

    .line 175
    const/4 v0, 0x1

    .line 178
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public final a(Liaw;Liaz;Ljava/lang/Object;Lhud;)Lhud;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    const/4 v3, 0x0

    .line 204
    const/4 v13, 0x0

    .line 207
    :try_start_0
    move-object/from16 v0, p3

    instance-of v2, v0, Liaz;

    if-eqz v2, :cond_20

    .line 208
    move-object/from16 v0, p3

    check-cast v0, Liaz;

    move-object v2, v0

    .line 210
    invoke-interface {v2}, Liaz;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const-string v2, "webdownload-download"

    const-string v4, "cache response is chunked ignore "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :cond_0
    :goto_0
    return-object p4

    .line 215
    :cond_1
    invoke-static/range {p2 .. p2}, Lgxg;->a(Liaz;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    const-string v2, "webdownload-download"

    const-string v4, "cache response is video, interrupt it"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :cond_2
    invoke-interface/range {p4 .. p4}, Lhud;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 314
    :catch_0
    move-exception v2

    move-object v4, v3

    move-object v3, v13

    .line 300
    :goto_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cache response IOException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v13

    .line 303
    :try_start_2
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 304
    const-string v2, "webdownload-download"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v13, v3}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 313
    :cond_3
    if-eqz v13, :cond_0

    .line 314
    sget-object v2, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[ProxyCache error: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_4
    :try_start_3
    invoke-interface/range {p1 .. p1}, Liaw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    move-object/from16 v0, p1

    invoke-interface {v2, v15, v0}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;->getUrlsPageUrl(Ljava/lang/String;Liaw;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v14

    .line 227
    :try_start_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cache cannot find pageUrl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    .line 229
    :try_start_5
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 230
    const-string v2, "webdownload-download"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_4

    .line 313
    :cond_5
    if-eqz v3, :cond_0

    .line 314
    sget-object v2, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ProxyCache error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2, v3}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 235
    const-string v2, "webdownload-download"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pageUrl "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->b:Lgro;

    invoke-virtual {v2, v14}, Lgro;->b(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    move-result-object v4

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    invoke-interface {v2, v4, v14}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;->getPageDynamicStrategy(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;

    move-result-object v5

    .line 243
    if-nez v5, :cond_9

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get pageColumns strategy null url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v3

    .line 245
    :try_start_7
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 246
    const-string v2, "webdownload-download"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_4

    .line 313
    :cond_8
    if-eqz v3, :cond_0

    .line 314
    sget-object v2, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ProxyCache error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2, v3}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_9
    :try_start_8
    invoke-interface/range {p2 .. p2}, Liaz;->a()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz p3, :cond_f

    invoke-static/range {p3 .. p3}, Liif;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "PhoenixCachedHttpResponse"

    const-string v3, "Using no-op listener on middle chunk"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->NO_OP_LISTENER:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    move-object v3, v2

    .line 255
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v5, v15, v2}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->getUrlRuleIndexInStrategy(Ljava/lang/String;Z)I

    move-result v6

    .line 256
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 257
    const-string v2, "webdownload-download"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Add to response cache URI: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pageUrl "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " range "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lgxg;->a(Liaw;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " strategyIndex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_a
    const/4 v12, 0x0

    .line 264
    if-ltz v6, :cond_12

    .line 265
    invoke-interface/range {p4 .. p4}, Lhud;->v()Lhud;

    move-result-object v2

    .line 266
    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v6, v15, v15}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->useStrategyOnChannel(Lhud;ILjava/lang/String;Ljava/lang/String;)Lhud;

    move-result-object v12

    .line 271
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    invoke-interface {v6}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;->cacheResponse()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 272
    invoke-static/range {p1 .. p1}, Lgxg;->a(Liaw;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->b:Lgro;

    invoke-virtual {v5, v15}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->getUrlRuleIndexInStrategy(Ljava/lang/String;)I

    move-result v8

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_2

    move-result v3

    if-nez v3, :cond_b

    if-eqz p2, :cond_b

    if-nez v4, :cond_13

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_4
    if-eqz v2, :cond_16

    const/4 v2, 0x0

    .line 289
    :goto_5
    if-eqz v12, :cond_1f

    .line 313
    if-eqz v2, :cond_d

    .line 314
    sget-object v3, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ProxyCache error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3, v2}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    :cond_d
    move-object/from16 p4, v12

    goto/16 :goto_0

    .line 251
    :cond_e
    :try_start_9
    const-string v2, "PhoenixCachedHttpResponse"

    const-string v3, "Last chunk...using normal closing rules"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    invoke-static/range {p1 .. p1}, Liaq;->a(Lias;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "PhoenixCachedHttpResponse"

    const-string v3, "Using close listener since request is not keep alive:"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->CLOSE:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    move-object v3, v2

    goto/16 :goto_2

    :cond_10
    invoke-static/range {p2 .. p2}, Liaq;->a(Lias;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "PhoenixCachedHttpResponse"

    const-string v3, "Using close listener since response is not keep alive:"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->CLOSE:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    move-object v3, v2

    goto/16 :goto_2

    :cond_11
    const-string v2, "PhoenixCachedHttpResponse"

    const-string v3, "Using no-op listener..."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->NO_OP_LISTENER:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    move-object v3, v2

    goto/16 :goto_2

    :cond_12
    move-object/from16 v2, p4

    .line 268
    goto/16 :goto_3

    .line 273
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Liaz;->a(Lhud;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-Range"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "Content-Length"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v5, v7, v9}, Ld;->a(Liaz;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;Z)V

    iget-object v5, v2, Lgro;->a:Lgrq;

    iget-wide v6, v4, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual {v5, v6, v7, v3}, Lgrq;->a(JLjava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    move-result-object v5

    if-eqz v5, :cond_14

    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_14
    iget-object v5, v4, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-static/range {p2 .. p2}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Liaz;)Lhud;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a(Lhud;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "webdownload-download"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WebDownloadCacheManager cache content range url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " info file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v2, Lgro;->a:Lgrq;

    iget-wide v4, v4, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->NO_OP_LISTENER:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    invoke-virtual {v7}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lgrq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    goto/16 :goto_4

    .line 314
    :catch_1
    move-exception v2

    move-object v3, v13

    move-object v4, v14

    goto/16 :goto_1

    .line 273
    :cond_15
    const-string v2, "webdownload-download"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WebDownloadCacheManager cache content range error in url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " info file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cache range content error, url is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 279
    :cond_17
    invoke-interface {v2}, Lhud;->v()Lhud;

    move-result-object v2

    .line 280
    new-instance v7, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;

    invoke-direct {v7, v2, v3}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;-><init>(Lhud;Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->b:Lgro;

    invoke-virtual {v5, v15}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->getUrlRuleIndexInStrategy(Ljava/lang/String;)I

    move-result v8

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    :cond_18
    :goto_6
    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_19
    iget-object v2, v3, Lgro;->a:Lgrq;

    iget-wide v10, v4, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual {v2, v10, v11, v15}, Lgrq;->a(JLjava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    move-result-object v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_6

    :cond_1a
    iget-object v2, v4, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->dir:Ljava/lang/String;

    invoke-static {v2, v15}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    iget-object v2, v7, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a:Lhud;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a(Lhud;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "webdownload-download"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WebDownloadCacheManager cache url: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " info file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v3, Lgro;->a:Lgrq;

    iget-wide v4, v4, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;->id:J

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v7, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->b:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    invoke-virtual {v3}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v15

    invoke-virtual/range {v2 .. v11}, Lgrq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;ILjava/lang/String;)Z

    move-result v2

    :goto_7
    if-nez v2, :cond_18

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_6

    .line 306
    :catch_2
    move-exception v2

    .line 307
    :goto_8
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cache response URISyntaxException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 309
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 310
    const-string v2, "webdownload-download"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v13, v3}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 313
    :cond_1b
    if-eqz v13, :cond_0

    .line 314
    sget-object v2, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ProxyCache error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2, v3}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_1c
    :try_start_b
    const-string v3, "webdownload-download"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WebDownloadCacheManager cache error url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " info file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_7

    .line 313
    :catchall_0
    move-exception v2

    :goto_9
    if-eqz v13, :cond_1d

    .line 314
    sget-object v3, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ProxyCache error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3, v4}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    :cond_1d
    throw v2

    .line 281
    :cond_1e
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cache content error, url is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_2

    move-result-object v2

    goto/16 :goto_5

    .line 313
    :cond_1f
    if-eqz v2, :cond_0

    .line 314
    sget-object v3, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ProxyCache error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3, v2}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_20
    :try_start_d
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const-string v2, "webdownload-download"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cache response is not HttpResponse: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    .line 306
    :catch_3
    move-exception v2

    move-object v14, v3

    goto/16 :goto_8

    .line 313
    :catchall_1
    move-exception v2

    move-object v14, v3

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v13, v3

    goto :goto_9

    :catchall_3
    move-exception v2

    move-object v13, v3

    move-object v14, v4

    goto :goto_9

    :catchall_4
    move-exception v2

    move-object v14, v4

    goto/16 :goto_9

    .line 306
    :catch_4
    move-exception v2

    move-object v13, v3

    goto/16 :goto_8

    .line 314
    :catch_5
    move-exception v2

    move-object v4, v14

    goto/16 :goto_1

    :cond_21
    move-object v2, v13

    goto/16 :goto_5
.end method

.method public final a(Liaw;Lhvg;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    invoke-interface {v2}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;->useCacheInProxy()Z

    move-result v2

    if-nez v2, :cond_3

    .line 64
    invoke-interface {p1}, Liaw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Lhvg;->g()Lhvl;

    move v1, v0

    :cond_0
    if-eqz v1, :cond_2

    .line 154
    :cond_1
    :goto_0
    return v0

    .line 67
    :cond_2
    invoke-direct {p0, p2}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Lhvg;)Z

    move-result v0

    goto :goto_0

    .line 70
    :cond_3
    invoke-interface {p1}, Liaw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgxg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    invoke-interface {v2, v4, p1}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;->getUrlsPageUrl(Ljava/lang/String;Liaw;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgxg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 75
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    const-string v0, "webdownload-offline"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "returnCacheHit page is null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lgxg;->b(Liaw;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isRang "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lgxg;->a(Liaw;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_4
    invoke-direct {p0, p2}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Lhvg;)Z

    move-result v0

    goto :goto_0

    .line 83
    :cond_5
    const/4 v1, 0x0

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->b:Lgro;

    invoke-virtual {v2, v5}, Lgro;->b(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;

    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    invoke-interface {v3, v2, v4}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;->getPageDynamicStrategy(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;

    move-result-object v6

    .line 88
    if-nez v6, :cond_7

    .line 89
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    const-string v0, "webdownload-offline"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "returnCacheHit strategy is null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_6
    invoke-direct {p0, p2}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Lhvg;)Z

    move-result v0

    goto/16 :goto_0

    .line 96
    :cond_7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 97
    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lgxa;->b(Landroid/content/Context;Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;)V

    .line 100
    :cond_8
    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->b:Lgro;

    invoke-virtual {v3, v2, p1, v6}, Lgro;->a(Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$PageColumns;Liaw;Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;)Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;

    move-result-object v7

    .line 103
    if-eqz v7, :cond_f

    .line 104
    iget-object v8, v7, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->c:Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    .line 105
    iget-object v9, v7, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a:Lhud;

    .line 106
    if-nez v8, :cond_a

    const/4 v2, -0x1

    move v3, v2

    :goto_1
    if-nez v8, :cond_b

    const-string v2, ""

    :goto_2
    invoke-virtual {v6, v9, v3, v2, v4}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->useStrategyOnChannel(Lhud;ILjava/lang/String;Ljava/lang/String;)Lhud;

    move-result-object v2

    .line 112
    if-nez v2, :cond_c

    .line 113
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 114
    const-string v0, "webdownload-offline"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "useStrategyOnChannel return buffer is null, url is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "useStrategyOnChannel return buffer is null, url is: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-direct {p0, p2}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Lhvg;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 148
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    if-eqz v2, :cond_1

    .line 149
    sget-object v2, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[returnCacheHit error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v2, v1}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_a
    :try_start_1
    iget v2, v8, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->strategyIndex:I

    move v3, v2

    goto :goto_1

    :cond_b
    iget-object v2, v8, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->url:Ljava/lang/String;

    goto :goto_2

    .line 121
    :cond_c
    invoke-interface {p2, v2}, Lhvg;->a(Ljava/lang/Object;)Lhvl;

    move-result-object v2

    .line 122
    iget-object v3, v7, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->b:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    .line 123
    invoke-interface {v2, v3}, Lhvl;->a(Lhvm;)V

    .line 125
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const-string v2, "webdownload-offline"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "returnCacheHit Wrote response from cache URI: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lgxg;->a(Liaw;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    :try_start_2
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 139
    const-string v2, "webdownload-offline"

    const-string v3, "returnCacheHit exception: "

    invoke-static {v2, v3, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :cond_d
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 148
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    if-eqz v1, :cond_e

    .line 149
    sget-object v1, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[returnCacheHit error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v1, v0}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    .line 154
    :cond_e
    :goto_3
    invoke-direct {p0, p2}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Lhvg;)Z

    move-result v0

    goto/16 :goto_0

    .line 131
    :cond_f
    :try_start_3
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 132
    const-string v0, "webdownload-offline"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "returnCacheHit Not Found element in cache for URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getCachedHttpResponse null url is: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 148
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    if-eqz v1, :cond_e

    .line 149
    sget-object v1, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[returnCacheHit error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v1, v0}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    goto :goto_3

    .line 142
    :catch_1
    move-exception v0

    .line 143
    :try_start_4
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 144
    const-string v2, "webdownload-offline"

    const-string v3, "returnCacheHit exception: "

    invoke-static {v2, v3, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :cond_11
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 148
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    if-eqz v1, :cond_e

    .line 149
    sget-object v1, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[returnCacheHit error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v1, v0}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 148
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->c:Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager$PhoenixProxyCacheListener;

    if-eqz v2, :cond_12

    .line 149
    sget-object v2, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[returnCacheHit error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v2, v1}, Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    :cond_12
    throw v0
.end method
