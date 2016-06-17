.class public final Laha;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lagn;


# static fields
.field private static a:Z

.field private static b:I

.field private static c:I


# instance fields
.field private d:Lahh;

.field private e:Lahb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lagx;->a:Z

    sput-boolean v0, Laha;->a:Z

    .line 58
    const/16 v0, 0xbb8

    sput v0, Laha;->b:I

    .line 60
    const/16 v0, 0x1000

    sput v0, Laha;->c:I

    return-void
.end method

.method public constructor <init>(Lahh;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    new-instance v0, Lahb;

    sget v1, Laha;->c:I

    invoke-direct {v0, v1}, Lahb;-><init>(I)V

    invoke-direct {p0, p1, v0}, Laha;-><init>(Lahh;Lahb;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lahh;Lahb;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Laha;->d:Lahh;

    .line 81
    iput-object p2, p0, Laha;->e:Lahb;

    .line 82
    return-void
.end method

.method private static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 234
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 235
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    iget-object v0, p1, Lcom/android/volley/Request;->j:Lagw;

    .line 172
    iget-object v3, p1, Lcom/android/volley/Request;->j:Lagw;

    iget v3, v3, Lagw;->a:I

    .line 175
    :try_start_0
    iget v4, v0, Lagw;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lagw;->b:I

    iget v4, v0, Lagw;->a:I

    int-to-float v4, v4

    iget v5, v0, Lagw;->a:I

    int-to-float v5, v5

    iget v6, v0, Lagw;->d:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Lagw;->a:I

    iget v4, v0, Lagw;->b:I

    iget v0, v0, Lagw;->c:I

    if-gt v4, v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    throw p2
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v4, "%s-timeout-giveup [timeout=%s]"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 179
    throw v0

    :cond_0
    move v0, v2

    .line 175
    goto :goto_0

    .line 181
    :cond_1
    const-string v0, "%s-retry [timeout=%s]"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0}, Lcom/android/volley/ServerError;-><init>()V

    throw v0

    .line 212
    :cond_0
    :try_start_0
    iget-object v1, p0, Laha;->e:Lahb;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ld;->a(Lahb;Ljava/io/InputStream;IZ)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 220
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    :goto_0
    return-object v0

    .line 224
    :catch_0
    move-exception v1

    const-string v1, "Error occured when calling consumingContent"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lagx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 216
    :try_start_2
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :catch_2
    move-exception v0

    const-string v0, "Error occured when calling consumingContent"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lagx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 218
    :catchall_0
    move-exception v0

    .line 220
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 225
    :goto_2
    throw v0

    .line 224
    :catch_3
    move-exception v1

    const-string v1, "Error occured when calling consumingContent"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lagx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/android/volley/Request;)Lagp;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lagp;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 88
    :goto_0
    const/4 v3, 0x0

    .line 89
    const/4 v2, 0x0

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 93
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    iget-object v6, p1, Lcom/android/volley/Request;->k:Lagi;

    if-eqz v6, :cond_1

    iget-object v7, v6, Lagi;->b:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string v7, "If-None-Match"

    iget-object v8, v6, Lagi;->b:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v8, v6, Lagi;->c:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    new-instance v7, Ljava/util/Date;

    iget-wide v8, v6, Lagi;->c:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    const-string v6, "If-Modified-Since"

    invoke-static {v7}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    iget-object v6, p0, Laha;->d:Lahh;

    invoke-interface {v6, p1, v0}, Lahh;->a(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 96
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 97
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 99
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Laha;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v1

    .line 101
    const/16 v0, 0x130

    if-ne v7, v0, :cond_2

    .line 102
    new-instance v0, Lagp;

    iget-object v6, p1, Lcom/android/volley/Request;->k:Lagi;

    iget-object v6, v6, Lagi;->a:[B

    const/4 v7, 0x1

    invoke-direct {v0, v6, v1, v7}, Lagp;-><init>([BLjava/util/Map;Z)V

    .line 114
    :goto_1
    return-object v0

    .line 106
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Laha;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 109
    sget-boolean v0, Laha;->a:Z

    if-nez v0, :cond_3

    sget v0, Laha;->b:I

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    :cond_3
    const-string v10, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v11, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v0

    const/4 v8, 0x2

    if-eqz v2, :cond_5

    array-length v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    aput-object v0, v11, v8

    const/4 v0, 0x3

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v0

    const/4 v0, 0x4

    iget-object v6, p1, Lcom/android/volley/Request;->j:Lagw;

    iget v6, v6, Lagw;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v0

    invoke-static {v10, v11}, Lagx;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :cond_4
    const/16 v0, 0xc8

    if-eq v7, v0, :cond_6

    const/16 v0, 0xcc

    if-eq v7, v0, :cond_6

    .line 112
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    .line 116
    :catch_0
    move-exception v0

    const-string v0, "socket"

    new-instance v1, Lcom/android/volley/TimeoutError;

    invoke-direct {v1}, Lcom/android/volley/TimeoutError;-><init>()V

    invoke-static {v0, p1, v1}, Laha;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 109
    :cond_5
    :try_start_1
    const-string v0, "null"

    goto :goto_2

    .line 114
    :cond_6
    new-instance v0, Lagp;

    const/4 v6, 0x0

    invoke-direct {v0, v2, v1, v6}, Lagp;-><init>([BLjava/util/Map;Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    const-string v0, "connection"

    new-instance v1, Lcom/android/volley/TimeoutError;

    invoke-direct {v1}, Lcom/android/volley/TimeoutError;-><init>()V

    invoke-static {v0, p1, v1}, Laha;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 119
    :catch_2
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/volley/Request;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 121
    :catch_3
    move-exception v0

    .line 122
    if-eqz v3, :cond_8

    .line 125
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 129
    const-string v3, "Unexpected response code %d for %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lcom/android/volley/Request;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lagx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    if-eqz v2, :cond_a

    .line 131
    new-instance v3, Lagp;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v1, v6}, Lagp;-><init>([BLjava/util/Map;Z)V

    .line 133
    const/16 v1, 0x191

    if-eq v0, v1, :cond_7

    const/16 v1, 0x193

    if-ne v0, v1, :cond_9

    .line 135
    :cond_7
    const-string v0, "auth"

    new-instance v1, Lcom/android/volley/AuthFailureError;

    invoke-direct {v1, v3}, Lcom/android/volley/AuthFailureError;-><init>(Lagp;)V

    invoke-static {v0, p1, v1}, Laha;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 127
    :cond_8
    new-instance v1, Lcom/android/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :cond_9
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0, v3}, Lcom/android/volley/ServerError;-><init>(Lagp;)V

    throw v0

    .line 142
    :cond_a
    new-instance v0, Lcom/android/volley/NetworkError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/volley/NetworkError;-><init>(Lagp;)V

    throw v0

    .line 146
    :catch_4
    move-exception v0

    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0}, Lcom/android/volley/ParseError;-><init>()V

    throw v0
.end method
