.class final Latc;
.super Ljava/lang/Object;
.source "HttpUrlConnectionNetworkFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lata;

.field private synthetic b:Lauc;


# direct methods
.method constructor <init>(Lata;Lauc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Latc;->a:Lata;

    iput-object p2, p0, Latc;->b:Lauc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 50
    .line 51
    iget-object v0, p0, Latc;->a:Lata;

    invoke-virtual {v0}, Lata;->c()Landroid/net/Uri;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v0, p0, Latc;->a:Lata;

    invoke-virtual {v0}, Lata;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v4

    .line 59
    :goto_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :try_start_1
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    if-nez v1, :cond_2

    move-object v3, v4

    .line 63
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 65
    iget-object v2, p0, Latc;->b:Lauc;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lauc;->a(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    :cond_1
    :goto_2
    return-void

    .line 62
    :cond_2
    :try_start_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_1

    .line 74
    :cond_3
    if-eqz v0, :cond_5

    .line 75
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 71
    :goto_3
    :try_start_3
    iget-object v2, p0, Latc;->b:Lauc;

    invoke-virtual {v2, v0}, Lauc;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 74
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_4
    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 78
    goto :goto_0

    .line 74
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 70
    :catch_1
    move-exception v0

    goto :goto_3
.end method
