.class public final Laba;
.super Ljava/lang/Object;
.source "OkHttpLoader.java"

# interfaces
.implements Lcom/alipay/squareup/picasso/Loader;


# instance fields
.field private final a:Lcom/alipay/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-static {p1}, Labm;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Laba;-><init>(Ljava/io/File;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Lcom/alipay/squareup/okhttp/OkHttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Laba;->a:Lcom/alipay/squareup/okhttp/OkHttpClient;

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Labm;->a(Ljava/io/File;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Laba;-><init>(Ljava/io/File;I)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/io/File;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v0, Lcom/alipay/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/alipay/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {p0, v0}, Laba;-><init>(Lcom/alipay/squareup/okhttp/OkHttpClient;)V

    .line 58
    :try_start_0
    iget-object v0, p0, Laba;->a:Lcom/alipay/squareup/okhttp/OkHttpClient;

    new-instance v1, Lcom/alipay/squareup/okhttp/HttpResponseCache;

    int-to-long v2, p2

    invoke-direct {v1, p1, v2, v3}, Lcom/alipay/squareup/okhttp/HttpResponseCache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lcom/alipay/squareup/okhttp/OkHttpClient;->setResponseCache(Ljava/net/ResponseCache;)Lcom/alipay/squareup/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final load(Landroid/net/Uri;Z)Laay;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Laba;->a:Lcom/alipay/squareup/okhttp/OkHttpClient;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/squareup/okhttp/OkHttpClient;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 74
    if-eqz p2, :cond_0

    .line 75
    const-string v1, "Cache-Control"

    const-string v2, "only-if-cached"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    const-string v1, "X-Android-Response-Source"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labm;->b(Ljava/lang/String;)Z

    move-result v1

    .line 80
    new-instance v2, Laay;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Laay;-><init>(Ljava/io/InputStream;Z)V

    return-object v2
.end method
