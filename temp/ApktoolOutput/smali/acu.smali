.class final Lacu;
.super Lacp;
.source "SourceFile"


# instance fields
.field private e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lacp;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "rm "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :goto_1
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "rm -rf "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "sh"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v0, "exit"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 105
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 113
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, Ld;->f()V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 109
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 110
    :catch_1
    move-exception v0

    goto :goto_2

    .line 107
    :catchall_0
    move-exception v0

    .line 109
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 112
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Lorg/json/JSONArray;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v1, 0x0

    .line 125
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 127
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 130
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 128
    :cond_2
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 133
    :goto_2
    if-eqz v0, :cond_0

    .line 135
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    :goto_3
    if-eqz v1, :cond_3

    .line 135
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 139
    :cond_3
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 132
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private b(Ljava/io/File;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    const/4 v2, 0x0

    .line 145
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 146
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 147
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string v6, "namespace"

    const-string v7, "com.alipay.logs"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v6, "api_name"

    const-string v7, "log"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v6, "api_version"

    sget-object v7, Lwy;->k:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v6, "device"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v6, "logs"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v6, "data"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-static {p1, v4}, Lacu;->a(Ljava/io/File;Lorg/json/JSONArray;)V

    .line 157
    iget-object v4, p0, Lacp;->a:Landroid/content/Context;

    .line 158
    sget-object v5, Lwy;->h:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v4, v5, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 160
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 161
    const/16 v4, 0x194

    if-ne v3, v4, :cond_4

    .line 162
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 163
    sget-object v4, Lcom/alipay/wandoujia/fa;->f:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v4}, Lcom/alipay/wandoujia/fa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 164
    sget-object v4, Lcom/alipay/wandoujia/fa;->b:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v4}, Lcom/alipay/wandoujia/fa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v3

    if-lez v3, :cond_3

    .line 177
    :cond_0
    if-eqz v2, :cond_1

    .line 179
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :cond_1
    :goto_0
    move v0, v1

    .line 175
    :cond_2
    :goto_1
    return v0

    .line 177
    :cond_3
    if-eqz v2, :cond_2

    .line 179
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 170
    :cond_4
    const/16 v4, 0x190

    if-lt v3, v4, :cond_6

    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_6

    .line 177
    if-eqz v2, :cond_5

    .line 179
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_5
    :goto_2
    move v0, v1

    .line 171
    goto :goto_1

    .line 177
    :cond_6
    if-eqz v2, :cond_2

    .line 179
    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .line 177
    :catch_2
    move-exception v0

    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_7

    .line 179
    :try_start_6
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_7
    :goto_4
    move v0, v1

    .line 175
    goto :goto_1

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    if-eqz v2, :cond_8

    .line 179
    :try_start_7
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 183
    :cond_8
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    .line 177
    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final c()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacu;->e:Z

    .line 34
    return-void
.end method

.method protected final d()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lacu;->e:Z

    .line 39
    invoke-static {}, Lacu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lacu;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    :try_start_0
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->b:Lcom/alipay/android/app/d;

    invoke-interface {v0}, Lcom/alipay/android/app/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    move v2, v1

    .line 47
    :goto_1
    array-length v0, v4

    if-ge v2, v0, :cond_0

    .line 48
    aget-object v5, v4, v2

    .line 49
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Laco;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 51
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    move v0, v1

    .line 54
    :goto_2
    array-length v7, v6

    if-lt v0, v7, :cond_5

    .line 70
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_3

    .line 72
    :cond_2
    invoke-static {v5}, Lacu;->a(Ljava/io/File;)V

    .line 74
    :cond_3
    iget-boolean v0, p0, Lacu;->e:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lacu;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lacu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 55
    :cond_5
    aget-object v7, v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {}, Lade;->a()Lade;

    move-result-object v10

    .line 58
    iget-object v10, v10, Lade;->b:Lcom/alipay/android/app/d;

    invoke-interface {v10}, Lcom/alipay/android/app/d;->b()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    .line 54
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 60
    :cond_7
    invoke-direct {p0, v7}, Lacu;->b(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 61
    invoke-static {v7}, Lacu;->a(Ljava/io/File;)V

    goto :goto_3

    :catch_0
    move-exception v7

    goto :goto_3

    .line 62
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 64
    invoke-static {v7}, Lacu;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method protected final e()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method
