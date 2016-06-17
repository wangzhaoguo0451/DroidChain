.class public Lcom/wandoujia/p4/webdownload/core/JsIntercepter;
.super Ljava/lang/Object;
.source "JsIntercepter.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static k:Lcom/wandoujia/p4/webdownload/core/JsIntercepter;


# instance fields
.field private b:[Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgrv;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/Integer;

.field private i:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/wandoujia/p4/webdownload/core/JsIntercepter$OnlineJsConfig;",
            ">;"
        }
    .end annotation
.end field

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->j:J

    .line 69
    return-void
.end method

.method public static declared-synchronized a()Lcom/wandoujia/p4/webdownload/core/JsIntercepter;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->k:Lcom/wandoujia/p4/webdownload/core/JsIntercepter;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;

    invoke-direct {v0}, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->k:Lcom/wandoujia/p4/webdownload/core/JsIntercepter;

    .line 66
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->k:Lcom/wandoujia/p4/webdownload/core/JsIntercepter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/core/JsIntercepter;Ljava/io/BufferedReader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->a(Ljava/io/BufferedReader;)V

    return-void
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 214
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->c:Ljava/util/List;

    .line 216
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 217
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 218
    aget-object v3, v2, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 219
    iget-object v4, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->c:Ljava/util/List;

    new-instance v5, Lgrv;

    aget-object v6, v3, v1

    aget-object v3, v3, v7

    invoke-direct {v5, v6, v3, v1}, Lgrv;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->b:[Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->f:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->d:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->e:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 240
    :cond_1
    return-void

    .line 234
    :cond_2
    aget-object v2, v0, v1

    iput-object v2, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->g:Ljava/lang/String;

    .line 235
    aget-object v0, v0, v7

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 236
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/Integer;

    iput-object v2, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->h:[Ljava/lang/Integer;

    .line 237
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->h:[Ljava/lang/Integer;

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private declared-synchronized b(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->i:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->i:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 248
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 249
    iget-wide v2, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->j:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 253
    iput-wide v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->j:J

    .line 254
    new-instance v0, Lgrt;

    invoke-direct {v0, p0, p1}, Lgrt;-><init>(Lcom/wandoujia/p4/webdownload/core/JsIntercepter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->i:Landroid/os/AsyncTask;

    .line 301
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->i:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgrv;

    .line 77
    iget-object v3, v0, Lgrv;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    iget-object v0, v0, Lgrv;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgrs;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 113
    monitor-enter p0

    move v0, v2

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v4

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    move-object v0, v1

    .line 178
    :cond_1
    :goto_2
    monitor-exit p0

    return-object v0

    .line 113
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 117
    :cond_4
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 121
    const-string v3, "{validateJS HttpGet:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "}\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v3, "Referer"

    invoke-virtual {v0, v3, p3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v3, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;

    invoke-direct {v3}, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;-><init>()V

    .line 126
    invoke-virtual {v3, v0}, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 127
    const-string v3, "{validateJS HttpResponse status:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "}\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_a

    .line 131
    new-instance v3, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;

    invoke-direct {v3}, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;-><init>()V

    invoke-virtual {v3, v0}, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;->process(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 132
    sget-object v3, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "receive js : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const-string v3, "{validateJS HttpResponse length:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_5

    const-string v3, "null"

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "}\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 137
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 138
    sget-object v6, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "has key word "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "new Audio"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 140
    sget-object v6, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "js matches : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-string v6, "{validateJS jsMatch}\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v6, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->h:[Ljava/lang/Integer;

    array-length v6, v6

    if-gt v6, v4, :cond_6

    .line 144
    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->h:[Ljava/lang/Integer;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/wandoujia/rpc/http/exception/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 170
    :goto_4
    if-eqz p4, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 171
    sget-object v1, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_JAVA_SCRIPT_INTERCEPTER:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, p3, v1, v2}, Lgrs;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_5
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_3

    .line 146
    :cond_6
    iget-object v4, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->h:[Ljava/lang/Integer;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 147
    :goto_5
    array-length v6, v4

    if-ge v2, v6, :cond_7

    .line 148
    iget-object v6, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->h:[Ljava/lang/Integer;

    add-int/lit8 v7, v2, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 150
    :cond_7
    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->g:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v4, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->h:[Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 154
    :cond_8
    const-string v2, "{validateJS jsNotMatch}\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/wandoujia/rpc/http/exception/HttpException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 160
    :catch_0
    move-exception v0

    .line 161
    :try_start_5
    const-string v2, "{validateJS IOError:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 170
    if-eqz p4, :cond_9

    :try_start_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 171
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_JAVA_SCRIPT_INTERCEPTER:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, p3, v0, v2}, Lgrs;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_9
    :goto_6
    move-object v0, v1

    .line 178
    goto/16 :goto_2

    .line 158
    :cond_a
    :try_start_7
    sget-object v0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http failed on : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/wandoujia/rpc/http/exception/HttpException; {:try_start_7 .. :try_end_7} :catch_1

    .line 170
    if-eqz p4, :cond_9

    :try_start_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 171
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_JAVA_SCRIPT_INTERCEPTER:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, p3, v0, v2}, Lgrs;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 164
    :catch_1
    move-exception v0

    .line 165
    :try_start_9
    const-string v2, "{validateJS HttpError:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wandoujia/rpc/http/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 170
    if-eqz p4, :cond_9

    :try_start_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 171
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_JAVA_SCRIPT_INTERCEPTER:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, p3, v0, v2}, Lgrs;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    goto :goto_6

    .line 170
    :catchall_1
    move-exception v0

    if-eqz p4, :cond_b

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 171
    sget-object v1, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_JAVA_SCRIPT_INTERCEPTER:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, p3, v1, v2}, Lgrs;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V

    :cond_b
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 182
    monitor-enter p0

    const/4 v0, 0x0

    .line 184
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v3, "wandoujia/walkman/walkman_web.cf"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 198
    :goto_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->a(Ljava/io/BufferedReader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 210
    :cond_0
    :goto_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->b(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    monitor-exit p0

    return-void

    .line 188
    :cond_1
    :try_start_4
    invoke-static {p1}, Lgxm;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lgxm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lgxm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    goto :goto_0

    .line 194
    :cond_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "walkman_web.cf"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 204
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 206
    :catch_1
    move-exception v0

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    if-eqz v1, :cond_3

    .line 204
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 206
    :cond_3
    :goto_3
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 182
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 206
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_3

    .line 202
    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
