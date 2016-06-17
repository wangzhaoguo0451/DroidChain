.class public final Lemq;
.super Ljava/lang/Object;
.source "LogSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/log/LogSender;


# direct methods
.method private constructor <init>(Lcom/wandoujia/log/LogSender;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/log/LogSender;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lemq;-><init>(Lcom/wandoujia/log/LogSender;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    .line 176
    const/4 v6, 0x0

    .line 177
    const/4 v5, 0x0

    .line 178
    const-wide/16 v2, -0x1

    .line 179
    const/4 v0, 0x0

    .line 180
    const/4 v1, 0x0

    .line 182
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 183
    :try_start_1
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    const/16 v7, 0x400

    invoke-direct {v5, v4, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 184
    :try_start_2
    iget-object v6, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->headerLine:Ljava/lang/String;
    invoke-static {v6}, Lcom/wandoujia/log/LogSender;->access$300(Lcom/wandoujia/log/LogSender;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 185
    iget-object v6, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v6}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v6

    invoke-virtual {v6, v5}, Lemr;->a(Ljava/io/OutputStream;)J

    move-result-wide v2

    .line 186
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 187
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v7, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/wandoujia/log/LogSender;->access$900(Lcom/wandoujia/log/LogSender;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/wandoujia/base/utils/CipherUtil;->getAESKey(Landroid/content/Context;)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/wandoujia/base/utils/CipherUtil;->encrypt([B[B)[B

    move-result-object v6

    .line 190
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    iget-object v8, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->muceUrl:Ljava/lang/String;
    invoke-static {v8}, Lcom/wandoujia/log/LogSender;->access$000(Lcom/wandoujia/log/LogSender;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 191
    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v8, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 192
    invoke-virtual {v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 193
    iget-object v6, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->httpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v6}, Lcom/wandoujia/log/LogSender;->access$1000(Lcom/wandoujia/log/LogSender;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    if-nez v6, :cond_0

    .line 194
    iget-object v6, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    new-instance v8, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;

    invoke-direct {v8}, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;-><init>()V

    #setter for: Lcom/wandoujia/log/LogSender;->httpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v6, v8}, Lcom/wandoujia/log/LogSender;->access$1002(Lcom/wandoujia/log/LogSender;Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;

    .line 196
    :cond_0
    iget-object v6, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->httpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v6}, Lcom/wandoujia/log/LogSender;->access$1000(Lcom/wandoujia/log/LogSender;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 197
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v1

    .line 198
    :try_start_3
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 199
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 200
    const/4 v0, 0x1

    .line 201
    iget-object v6, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/wandoujia/log/LogSender;->access$900(Lcom/wandoujia/log/LogSender;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "log_module"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 203
    const-string v7, "log_sender_last_success_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-static {v6}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    .line 218
    :cond_1
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 219
    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 220
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 221
    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v0}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lemr;->a(J)V

    .line 227
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 229
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 235
    :cond_3
    :goto_1
    return-void

    .line 224
    :cond_4
    iget-object v0, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v0}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lemr;->b(J)V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v4

    move-object v4, v5

    move-object v5, v6

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    :goto_2
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 219
    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 220
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    .line 221
    if-eqz v1, :cond_6

    .line 222
    iget-object v1, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v1}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lemr;->a(J)V

    .line 227
    :cond_5
    :goto_3
    if-eqz v0, :cond_3

    .line 229
    :try_start_5
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 231
    :catch_1
    move-exception v0

    goto :goto_1

    .line 224
    :cond_6
    iget-object v1, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v1}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lemr;->b(J)V

    goto :goto_3

    .line 209
    :catch_2
    move-exception v4

    move-object v4, v5

    move-object v5, v6

    :goto_4
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 219
    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 220
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_7

    .line 221
    if-eqz v0, :cond_8

    .line 222
    iget-object v0, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v0}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lemr;->a(J)V

    .line 227
    :cond_7
    :goto_5
    if-eqz v1, :cond_3

    .line 229
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 231
    :catch_3
    move-exception v0

    goto :goto_1

    .line 224
    :cond_8
    iget-object v0, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v0}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lemr;->b(J)V

    goto :goto_5

    .line 211
    :catch_4
    move-exception v4

    move-object v4, v5

    move-object v5, v6

    :goto_6
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 219
    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 220
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_9

    .line 221
    if-eqz v0, :cond_a

    .line 222
    iget-object v0, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v0}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lemr;->a(J)V

    .line 227
    :cond_9
    :goto_7
    if-eqz v1, :cond_3

    .line 229
    :try_start_7
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_1

    .line 231
    :catch_5
    move-exception v0

    goto/16 :goto_1

    .line 224
    :cond_a
    iget-object v0, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v0}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lemr;->b(J)V

    goto :goto_7

    .line 216
    :catch_6
    move-exception v4

    move-object v4, v5

    move-object v5, v6

    :goto_8
    invoke-static {v5}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 219
    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 220
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_b

    .line 221
    if-eqz v0, :cond_c

    .line 222
    iget-object v0, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v0}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lemr;->a(J)V

    .line 227
    :cond_b
    :goto_9
    if-eqz v1, :cond_3

    .line 229
    :try_start_8
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_1

    .line 231
    :catch_7
    move-exception v0

    goto/16 :goto_1

    .line 224
    :cond_c
    iget-object v0, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v0}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lemr;->b(J)V

    goto :goto_9

    .line 218
    :catchall_0
    move-exception v4

    move-object v10, v4

    move v11, v0

    move-object v0, v10

    move-wide v12, v2

    move v2, v11

    move-object v3, v5

    move-wide v4, v12

    :goto_a
    invoke-static {v6}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 219
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 220
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_d

    .line 221
    if-eqz v2, :cond_f

    .line 222
    iget-object v2, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v2}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lemr;->a(J)V

    .line 227
    :cond_d
    :goto_b
    if-eqz v1, :cond_e

    .line 229
    :try_start_9
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 231
    :cond_e
    :goto_c
    throw v0

    .line 224
    :cond_f
    iget-object v2, p0, Lemq;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logStorage:Lemr;
    invoke-static {v2}, Lcom/wandoujia/log/LogSender;->access$800(Lcom/wandoujia/log/LogSender;)Lemr;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lemr;->b(J)V

    goto :goto_b

    .line 231
    :catch_8
    move-exception v0

    goto/16 :goto_1

    :catch_9
    move-exception v1

    goto :goto_c

    .line 218
    :catchall_1
    move-exception v5

    move-object v10, v5

    move v11, v0

    move-object v0, v10

    move-wide v12, v2

    move v2, v11

    move-object v3, v4

    move-wide v4, v12

    goto :goto_a

    :catchall_2
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move v11, v0

    move-object v0, v10

    move-wide v12, v2

    move-object v3, v4

    move v2, v11

    move-wide v4, v12

    goto :goto_a

    .line 216
    :catch_a
    move-exception v5

    move-object v5, v6

    goto :goto_8

    :catch_b
    move-exception v6

    goto :goto_8

    .line 211
    :catch_c
    move-exception v5

    move-object v5, v6

    goto/16 :goto_6

    :catch_d
    move-exception v6

    goto/16 :goto_6

    .line 209
    :catch_e
    move-exception v5

    move-object v5, v6

    goto/16 :goto_4

    :catch_f
    move-exception v6

    goto/16 :goto_4

    .line 207
    :catch_10
    move-exception v5

    move-object v5, v6

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto/16 :goto_2

    :catch_11
    move-exception v6

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto/16 :goto_2

    :catch_12
    move-exception v6

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto/16 :goto_2
.end method
