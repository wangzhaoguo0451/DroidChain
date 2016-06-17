.class public final Lcom/wandoujia/logv3/LogSender;
.super Ljava/lang/Object;
.source "LogSender.java"


# static fields
.field private static final e:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lemt;

.field private c:Lorg/apache/http/client/HttpClient;

.field private final d:Lend;

.field private f:Z

.field private g:J

.field private final h:Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;

.field private final i:Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;

.field private j:Z

.field private k:Ljava/lang/String;

.field private final l:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wandoujia/logv3/LogSender;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lemt;Lemu;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v7, p0, Lcom/wandoujia/logv3/LogSender;->f:Z

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/logv3/LogSender;->g:J

    .line 73
    iput-boolean v8, p0, Lcom/wandoujia/logv3/LogSender;->j:Z

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/LogSender;->l:Ljava/util/concurrent/ScheduledExecutorService;

    .line 107
    iput-object p1, p0, Lcom/wandoujia/logv3/LogSender;->a:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/wandoujia/logv3/LogSender;->b:Lemt;

    .line 109
    new-instance v0, Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;

    sget-object v1, Lcom/wandoujia/logv3/LogSender$TimePolicy;->REAL_TIME:Lcom/wandoujia/logv3/LogSender$TimePolicy;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;-><init>(Lcom/wandoujia/logv3/LogSender$TimePolicy;J)V

    iput-object v0, p0, Lcom/wandoujia/logv3/LogSender;->h:Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;

    .line 111
    new-instance v0, Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;

    sget-object v1, Lcom/wandoujia/logv3/LogSender$TimePolicy;->SCHEDULE:Lcom/wandoujia/logv3/LogSender$TimePolicy;

    const-wide/32 v2, 0x36ee80

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;-><init>(Lcom/wandoujia/logv3/LogSender$TimePolicy;J)V

    iput-object v0, p0, Lcom/wandoujia/logv3/LogSender;->i:Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;

    .line 112
    invoke-virtual {p3}, Lemu;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    const-string v2, "2"

    invoke-static {p1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "http://dmhd1.hy01.wandoujia.com/muce/data/proxy?profile=%1$s&vc=%2$s&vn=%3$s&gzip=true&encrypt=true&key_version=%4$s&log_version=%5$s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    aput-object v4, v6, v9

    aput-object v1, v6, v10

    aput-object v2, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/wandoujia/logv3/LogSender;->k:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "log-senderv3-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 116
    new-instance v1, Lend;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lend;-><init>(Lcom/wandoujia/logv3/LogSender;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/wandoujia/logv3/LogSender;->d:Lend;

    .line 117
    iget-object v0, p0, Lcom/wandoujia/logv3/LogSender;->l:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lenb;

    invoke-direct {v1, p0}, Lenb;-><init>(Lcom/wandoujia/logv3/LogSender;)V

    const-wide/16 v2, 0x5

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 123
    return-void

    .line 112
    :cond_0
    const-string v5, "http://l.wandoujia.com/muce/data/proxy?profile=%1$s&vc=%2$s&vn=%3$s&gzip=true&encrypt=true&key_version=%4$s&log_version=%5$s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    aput-object v4, v6, v9

    aput-object v1, v6, v10

    aput-object v2, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/logv3/LogSender;)J
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/wandoujia/logv3/LogSender;->g:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/wandoujia/logv3/LogSender;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/wandoujia/logv3/LogSender;->g:J

    return-wide p1
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wandoujia/logv3/LogSender;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/logv3/LogSender;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/logv3/LogSender;->f:Z

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/logv3/LogSender;)V
    .locals 13
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    .line 39
    const-wide/16 v2, -0x1

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    const/16 v6, 0x400

    invoke-direct {v5, v4, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    :try_start_2
    iget-object v6, p0, Lcom/wandoujia/logv3/LogSender;->b:Lemt;

    invoke-virtual {v6, v5}, Lemt;->a(Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    move-result-wide v2

    cmp-long v6, v2, v10

    if-gtz v6, :cond_1

    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v7, p0, Lcom/wandoujia/logv3/LogSender;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/wandoujia/base/utils/CipherUtil;->getAESKey(Landroid/content/Context;)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/wandoujia/base/utils/CipherUtil;->encrypt([B[B)[B

    move-result-object v6

    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    iget-object v8, p0, Lcom/wandoujia/logv3/LogSender;->k:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v8, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v6, p0, Lcom/wandoujia/logv3/LogSender;->c:Lorg/apache/http/client/HttpClient;

    if-nez v6, :cond_2

    new-instance v6, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;

    invoke-direct {v6}, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;-><init>()V

    iput-object v6, p0, Lcom/wandoujia/logv3/LogSender;->c:Lorg/apache/http/client/HttpClient;

    :cond_2
    iget-object v6, p0, Lcom/wandoujia/logv3/LogSender;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    move-result-object v1

    :try_start_4
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_3

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/wandoujia/logv3/LogSender;->a:Landroid/content/Context;

    const-string v7, "log_modulev3"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "log_senderv3_last_success_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v6}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    :cond_3
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    cmp-long v4, v2, v10

    if-lez v4, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/LogSender;->b:Lemt;

    invoke-virtual {v0, v2, v3}, Lemt;->a(J)V

    :cond_4
    if-eqz v1, :cond_0

    :try_start_5
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v4, v1

    move-object v5, v1

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    :goto_1
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    cmp-long v4, v2, v10

    if-lez v4, :cond_5

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/wandoujia/logv3/LogSender;->b:Lemt;

    invoke-virtual {v1, v2, v3}, Lemt;->a(J)V

    :cond_5
    if-eqz v0, :cond_0

    :try_start_6
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v4

    move-object v4, v1

    move-object v5, v1

    :goto_2
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    cmp-long v4, v2, v10

    if-lez v4, :cond_6

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/LogSender;->b:Lemt;

    invoke-virtual {v0, v2, v3}, Lemt;->a(J)V

    :cond_6
    if-eqz v1, :cond_0

    :try_start_7
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catch_5
    move-exception v4

    move-object v4, v1

    move-object v5, v1

    :goto_3
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    cmp-long v4, v2, v10

    if-lez v4, :cond_7

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/LogSender;->b:Lemt;

    invoke-virtual {v0, v2, v3}, Lemt;->a(J)V

    :cond_7
    if-eqz v1, :cond_0

    :try_start_8
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto/16 :goto_0

    :catch_7
    move-exception v4

    move-object v4, v1

    move-object v5, v1

    :goto_4
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    cmp-long v4, v2, v10

    if-lez v4, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/logv3/LogSender;->b:Lemt;

    invoke-virtual {v0, v2, v3}, Lemt;->a(J)V

    :cond_8
    if-eqz v1, :cond_0

    :try_start_9
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    move-object v5, v1

    move-object v6, v1

    move-object v12, v4

    move v4, v0

    move-object v0, v12

    :goto_5
    invoke-static {v6}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    cmp-long v5, v2, v10

    if-lez v5, :cond_9

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/wandoujia/logv3/LogSender;->b:Lemt;

    invoke-virtual {v4, v2, v3}, Lemt;->a(J)V

    :cond_9
    if-eqz v1, :cond_a

    :try_start_a
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_a
    :goto_6
    throw v0

    :catch_9
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v5

    move-object v6, v1

    move v12, v0

    move-object v0, v5

    move-object v5, v4

    move v4, v12

    goto :goto_5

    :catchall_2
    move-exception v6

    move-object v12, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v0

    move-object v0, v12

    goto :goto_5

    :catch_a
    move-exception v5

    move-object v5, v1

    goto :goto_4

    :catch_b
    move-exception v6

    goto :goto_4

    :catch_c
    move-exception v5

    move-object v5, v1

    goto :goto_3

    :catch_d
    move-exception v6

    goto :goto_3

    :catch_e
    move-exception v5

    move-object v5, v1

    goto/16 :goto_2

    :catch_f
    move-exception v6

    goto/16 :goto_2

    :catch_10
    move-exception v5

    move-object v5, v1

    move v12, v0

    move-object v0, v1

    move v1, v12

    goto/16 :goto_1

    :catch_11
    move-exception v6

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    goto/16 :goto_1

    :catch_12
    move-exception v6

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Z)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 126
    if-nez p1, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_0
    if-eqz v0, :cond_1

    .line 130
    :cond_0
    sget-object v7, Lcom/wandoujia/logv3/LogSender;->e:Ljava/lang/Object;

    monitor-enter v7

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/wandoujia/logv3/LogSender;->f:Z

    if-nez v0, :cond_6

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 133
    iget-wide v0, p0, Lcom/wandoujia/logv3/LogSender;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    move-wide v0, v2

    .line 134
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wandoujia/logv3/LogSender;->f:Z

    .line 135
    iput-wide v4, p0, Lcom/wandoujia/logv3/LogSender;->g:J

    move-wide v2, v4

    move v4, v6

    .line 138
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-eqz v4, :cond_1

    .line 140
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 141
    const/16 v5, 0x3e9

    iput v5, v4, Landroid/os/Message;->what:I

    .line 142
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lcom/wandoujia/logv3/LogSender;->d:Lend;

    invoke-virtual {v2, v4, v0, v1}, Lend;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 146
    :cond_1
    return-void

    .line 126
    :cond_2
    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/logv3/LogSender;->i:Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;

    :goto_3
    sget-object v4, Lenc;->a:[I

    #getter for: Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;->timePolicy:Lcom/wandoujia/logv3/LogSender$TimePolicy;
    invoke-static {v0}, Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;->access$400(Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;)Lcom/wandoujia/logv3/LogSender$TimePolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/logv3/LogSender$TimePolicy;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/logv3/LogSender;->h:Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;

    goto :goto_3

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v6

    goto :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/wandoujia/logv3/LogSender;->j:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/wandoujia/logv3/LogSender;->j:Z

    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_6
    #getter for: Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;->duration:J
    invoke-static {v0}, Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;->access$500(Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/wandoujia/logv3/LogSender;->a:Landroid/content/Context;

    const-string v7, "log_modulev3"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, "log_senderv3_last_success_time"

    invoke-interface {v0, v7, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-gtz v0, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 133
    :cond_5
    const-wide/16 v0, 0x1388

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    move v4, v1

    move-wide v0, v2

    goto :goto_2

    .line 126
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
