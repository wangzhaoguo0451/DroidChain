.class public final Labl;
.super Ljava/lang/Object;
.source "UrlConnectionLoader.java"

# interfaces
.implements Lcom/alipay/squareup/picasso/Loader;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labl;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Labl;->c:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public final load(Landroid/net/Uri;Z)Laay;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Labl;->c:Landroid/content/Context;

    sget-object v1, Labl;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    :try_start_0
    sget-object v1, Labl;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Labl;->b:Ljava/lang/Object;

    if-nez v2, :cond_0

    invoke-static {v0}, Ld;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Labl;->b:Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 41
    if-eqz p2, :cond_2

    .line 42
    const-string v1, "Cache-Control"

    const-string v2, "only-if-cached"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2
    const-string v1, "X-Android-Response-Source"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labm;->b(Ljava/lang/String;)Z

    move-result v1

    .line 47
    new-instance v2, Laay;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Laay;-><init>(Ljava/io/InputStream;Z)V

    return-object v2

    .line 36
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
