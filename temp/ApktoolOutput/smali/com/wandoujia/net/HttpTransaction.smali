.class public abstract Lcom/wandoujia/net/HttpTransaction;
.super Ljava/lang/Object;
.source "HttpTransaction.java"


# instance fields
.field private a:Lcom/wandoujia/net/HttpTransaction$State;

.field public b:Lepj;

.field public final c:Lcom/wandoujia/net/AsyncHttpRequest;

.field public final d:Lepb;

.field public final e:J

.field public f:Landroid/net/Uri;

.field public g:Leqj;

.field public h:I

.field public i:Lepq;

.field public j:J

.field private k:Leqn;

.field private l:Ljava/io/ByteArrayOutputStream;

.field private m:Lepz;

.field private n:Z


# direct methods
.method public constructor <init>(Lepb;JLcom/wandoujia/net/AsyncHttpRequest;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/wandoujia/net/HttpTransaction;->h:I

    .line 54
    iput-object p1, p0, Lcom/wandoujia/net/HttpTransaction;->d:Lepb;

    .line 55
    iput-object p4, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    .line 56
    iput-wide p2, p0, Lcom/wandoujia/net/HttpTransaction;->e:J

    .line 57
    new-instance v0, Lepz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lepz;-><init>(Lcom/wandoujia/net/HttpTransaction;B)V

    iput-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->m:Lepz;

    .line 58
    new-instance v0, Lepj;

    invoke-direct {v0}, Lepj;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    .line 59
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->d:Lepb;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lepb;->a(I[Ljava/lang/Object;)V

    .line 87
    new-instance v0, Leqn;

    invoke-direct {v0}, Leqn;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->k:Leqn;

    .line 88
    iput-object p1, p0, Lcom/wandoujia/net/HttpTransaction;->f:Landroid/net/Uri;

    .line 89
    sget-object v0, Lcom/wandoujia/net/HttpTransaction$State;->READ_HEADER:Lcom/wandoujia/net/HttpTransaction$State;

    iput-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->a:Lcom/wandoujia/net/HttpTransaction$State;

    .line 93
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eq v0, v4, :cond_3

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 100
    new-instance v2, Lepw;

    invoke-direct {v2, p0}, Lepw;-><init>(Lcom/wandoujia/net/HttpTransaction;)V

    .line 139
    const-string v3, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 140
    new-instance v3, Lepk;

    invoke-direct {v3, v2}, Lepk;-><init>(Lepr;)V

    iput-object v3, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    .line 146
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_7

    .line 148
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "no addresses for host"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 154
    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->RESOLVE_IP_FAILED:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    .line 160
    :cond_2
    :goto_2
    return-void

    .line 93
    :cond_3
    const/16 v0, 0x50

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v0, v4, :cond_0

    const/16 v0, 0x1bb

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->INVALID_URL:Lcom/wandoujia/net/HttpException$Type;

    const-string v3, "scheme %s is not support"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->INVALID_URL:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_2

    .line 142
    :cond_6
    new-instance v3, Lepm;

    iget-object v4, p0, Lcom/wandoujia/net/HttpTransaction;->f:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lepm;-><init>(Lepr;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    goto :goto_1

    .line 150
    :cond_7
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wandoujia/net/HttpTransaction;->j:J

    .line 151
    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->d:Lepb;

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lepb;->a(I[Ljava/lang/Object;)V

    .line 153
    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-direct {v2, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    invoke-interface {v0, v2}, Lepq;->a(Ljava/net/InetSocketAddress;)V

    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->m:Lepz;

    iget-object v1, v0, Lepz;->a:Landroid/os/Handler;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lepz;->a:Landroid/os/Handler;

    iget-object v1, v0, Lepz;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 156
    :catch_2
    move-exception v0

    .line 158
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->RESOLVE_IP_FAILED:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    goto/16 :goto_2
.end method

.method public static synthetic a(Lcom/wandoujia/net/HttpTransaction;)V
    .locals 6
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "Host"

    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->f:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lepv;->a(Ljava/lang/String;Ljava/lang/String;)Lepv;

    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->b:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    sget-object v1, Lcom/wandoujia/net/AsyncHttpRequest$Method;->POST:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->d:Leqh;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "Content-Length"

    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v2, v2, Lcom/wandoujia/net/AsyncHttpRequest;->d:Leqh;

    invoke-virtual {v2}, Leqh;->a()V

    iget-object v2, v2, Leqh;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lepv;->a(Ljava/lang/String;Ljava/lang/String;)Lepv;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v2, v2, Lcom/wandoujia/net/AsyncHttpRequest;->d:Leqh;

    iget-object v2, v2, Leqh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lepv;->a(Ljava/lang/String;Ljava/lang/String;)Lepv;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v1, v0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v0, "/"

    :cond_2
    iget-object v3, p0, Lcom/wandoujia/net/HttpTransaction;->f:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v3, "%s %s HTTP/1.1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v2, v2, Lcom/wandoujia/net/AsyncHttpRequest;->b:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    invoke-virtual {v2}, Lcom/wandoujia/net/AsyncHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lepv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    invoke-interface {v0, v1}, Lepq;->a(Ljava/nio/ByteBuffer;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->REQUEST_BODY_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "Content-Length"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lepv;->a(Ljava/lang/String;Ljava/lang/String;)Lepv;

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/net/HttpTransaction;Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    .line 28
    sget-object v0, Lepy;->a:[I

    iget-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->a:Lcom/wandoujia/net/HttpTransaction$State;

    invoke-virtual {v1}, Lcom/wandoujia/net/HttpTransaction$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->k:Leqn;

    iget-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7

    iget-object v2, v0, Leqn;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lepj;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, " "

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-ge v3, v6, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not HTTP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->NOT_HTTP:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v2, v3

    iput-object v3, v1, Lepj;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x1

    :try_start_2
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lepj;->d:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v0, Leqn;->b:Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lepj;->a:Lepv;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-ne v4, v6, :cond_4

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lepv;->b(Ljava/lang/String;Ljava/lang/String;)Lepv;

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lepv;->b(Ljava/lang/String;Ljava/lang/String;)Lepv;

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, v0, Leqn;->a:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->k:Leqn;

    iget-boolean v0, v0, Leqn;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/net/HttpTransaction;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {p0}, Lcom/wandoujia/net/HttpTransaction;->e()V
    :try_end_4
    .catch Lcom/wandoujia/net/HttpException; {:try_start_4 .. :try_end_4} :catch_2

    sget-object v0, Lcom/wandoujia/net/HttpTransaction$State;->READ_BODY:Lcom/wandoujia/net/HttpTransaction$State;

    iput-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->a:Lcom/wandoujia/net/HttpTransaction$State;

    :pswitch_1
    :try_start_5
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->g:Leqj;

    invoke-interface {v0, p1}, Leqj;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/wandoujia/net/HttpTransaction;->c()V
    :try_end_5
    .catch Lcom/wandoujia/net/HttpException; {:try_start_5 .. :try_end_5} :catch_3

    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->g:Leqj;

    invoke-interface {v0}, Leqj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/wandoujia/net/HttpTransaction;->m()V

    goto/16 :goto_0

    :cond_7
    :try_start_6
    iget-object v3, v0, Leqn;->b:Ljava/lang/StringBuilder;

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic b(Lcom/wandoujia/net/HttpTransaction;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->d:Leqh;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->d:Leqh;

    invoke-virtual {v0}, Leqh;->a()V

    iget-object v0, v0, Leqh;->b:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    invoke-interface {v1, v0}, Lepq;->a(Ljava/nio/ByteBuffer;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->REQUEST_BODY_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/net/HttpTransaction;)V
    .locals 4
    .parameter

    .prologue
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/wandoujia/net/HttpTransaction;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v1, Lcom/wandoujia/net/HttpException;

    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    invoke-interface {v0}, Lepq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/wandoujia/net/HttpException$Type;->TRANSPORT_TIMEOUT:Lcom/wandoujia/net/HttpException$Type;

    :goto_0
    const-string v2, "Timeout"

    invoke-direct {v1, v0, v2}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/wandoujia/net/HttpException$Type;->CONNECTION_TIMEOUT:Lcom/wandoujia/net/HttpException$Type;

    goto :goto_0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    invoke-interface {v0}, Lepq;->a()V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    .line 383
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget v0, v0, Lepj;->d:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget v0, v0, Lepj;->d:I

    const/16 v1, 0xce

    if-ne v0, v1, :cond_1

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/net/HttpTransaction;->f()V

    .line 390
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    invoke-virtual {p0}, Lcom/wandoujia/net/HttpTransaction;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lepj;->c:Ljava/lang/String;

    .line 387
    new-instance v0, Lcom/wandoujia/net/HttpException;

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->BAD_RESPONSE:Lcom/wandoujia/net/HttpException$Type;

    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget v2, v2, Lepj;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->a:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/wandoujia/net/HttpTransaction;->a(Landroid/net/Uri;)V

    .line 63
    return-void
.end method

.method public final a(Landroid/net/Uri;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "Range"

    invoke-virtual {v0, v1}, Lepv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "Accept-Ranges"

    invoke-virtual {v0, v1}, Lepv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    invoke-interface {v0}, Lepq;->a()V

    .line 168
    invoke-direct {p0, p1}, Lcom/wandoujia/net/HttpTransaction;->a(Landroid/net/Uri;)V

    .line 169
    return-void
.end method

.method public final a(Lcom/wandoujia/net/HttpException;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 357
    iget-boolean v1, p0, Lcom/wandoujia/net/HttpTransaction;->n:Z

    if-eqz v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 361
    :cond_0
    iput-boolean v0, p0, Lcom/wandoujia/net/HttpTransaction;->n:Z

    .line 363
    iget-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    invoke-interface {v1}, Lepq;->a()V

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    .line 368
    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/net/HttpException;->getType()Lcom/wandoujia/net/HttpException$Type;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->CHUNK_ERROR:Lcom/wandoujia/net/HttpException$Type;

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/net/HttpException;->getType()Lcom/wandoujia/net/HttpException$Type;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->DOWNLOAD_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    if-eq v1, v2, :cond_2

    .line 370
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iput-object p1, v1, Lepj;->e:Lcom/wandoujia/net/HttpException;

    .line 371
    invoke-virtual {p0, v0}, Lcom/wandoujia/net/HttpTransaction;->a(Z)V

    goto :goto_0

    .line 368
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract a(Z)V
.end method

.method public b()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    invoke-interface {v0}, Lepq;->a()V

    .line 69
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 218
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->d:Lepb;

    const/4 v1, 0x5

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/wandoujia/net/HttpTransaction;->g:Leqj;

    invoke-interface {v4}, Leqj;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lepb;->a(I[Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public d()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 271
    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget v2, v2, Lepj;->d:I

    sparse-switch v2, :sswitch_data_0

    .line 302
    :cond_0
    :sswitch_0
    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget-object v3, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    invoke-virtual {v3}, Lepj;->b()J

    move-result-wide v4

    iput-wide v4, v2, Lepj;->g:J

    .line 303
    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v2, v2, Lcom/wandoujia/net/AsyncHttpRequest;->b:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    sget-object v3, Lcom/wandoujia/net/AsyncHttpRequest$Method;->HEAD:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    if-ne v2, v3, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/wandoujia/net/HttpTransaction;->m()V

    .line 307
    :goto_0
    return v0

    .line 273
    :sswitch_1
    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v2, v2, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v3, "Range"

    invoke-virtual {v2, v3}, Lepv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->f:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Lcom/wandoujia/net/HttpTransaction;->a(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 284
    :sswitch_2
    iget-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget-object v1, v1, Lepj;->a:Lepv;

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Lepv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    if-nez v1, :cond_1

    .line 286
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->NOT_HTTP:Lcom/wandoujia/net/HttpException$Type;

    const-string v3, "no location"

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 290
    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v2, Lepj;->b:Ljava/lang/String;

    iput v0, v2, Lepj;->d:I

    new-instance v3, Lepv;

    invoke-direct {v3}, Lepv;-><init>()V

    iput-object v3, v2, Lepj;->a:Lepv;

    .line 291
    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/net/HttpTransaction;->a(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 294
    :sswitch_3
    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v2, v2, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v3, "Range"

    invoke-virtual {v2, v3}, Lepv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->f:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Lcom/wandoujia/net/HttpTransaction;->a(Landroid/net/Uri;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 307
    goto :goto_0

    .line 271
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xce -> :sswitch_0
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x133 -> :sswitch_2
        0x1a0 -> :sswitch_3
    .end sparse-switch
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()Lcom/wandoujia/net/HttpTransaction;
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/wandoujia/net/HttpTransaction;->e:J

    return-wide v0
.end method

.method public final i()Lepj;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    return-object v0
.end method

.method public final j()V
    .locals 6

    .prologue
    .line 313
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->l:Ljava/io/ByteArrayOutputStream;

    .line 314
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->l:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    .line 315
    new-instance v1, Lepx;

    invoke-direct {v1, v0}, Lepx;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    .line 322
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    invoke-virtual {v0}, Lepj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Lcom/wandoujia/net/codec/ChunkDecoder;

    invoke-direct {v0, v1}, Lcom/wandoujia/net/codec/ChunkDecoder;-><init>(Leqk;)V

    iput-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->g:Leqj;

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    invoke-virtual {v0}, Lepj;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 325
    new-instance v0, Leqm;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    invoke-virtual {v4}, Lepj;->b()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Leqm;-><init>(Leqk;JJ)V

    iput-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->g:Leqj;

    goto :goto_0

    .line 328
    :cond_1
    new-instance v0, Lcom/wandoujia/net/HttpException;

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->UNSUPPORT_TRANSFER_ENCODING:Lcom/wandoujia/net/HttpException$Type;

    const-string v2, "Identity NOT Support"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->l:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_0

    .line 345
    :goto_0
    return-object v0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget-object v1, v1, Lepj;->a:Lepv;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lepv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/net/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/wandoujia/net/Multimap;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "charset"

    invoke-virtual {v1, v2}, Lcom/wandoujia/net/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    :goto_1
    if-nez v1, :cond_2

    .line 339
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 337
    goto :goto_1

    .line 342
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/net/HttpTransaction;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/net/HttpTransaction;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget v0, v0, Lepj;->d:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/net/HttpTransaction;->b:Lepj;

    iget v0, v0, Lepj;->d:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/wandoujia/net/HttpTransaction;->h:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
