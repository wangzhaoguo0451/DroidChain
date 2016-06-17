.class final Laok;
.super Ljava/lang/Object;
.source "OkHttpNetworkFetcher.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# instance fields
.field private synthetic a:Laol;

.field private synthetic b:Lauc;

.field private synthetic c:Lbws;


# direct methods
.method constructor <init>(Laol;Lauc;Lbws;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Laok;->a:Laol;

    iput-object p2, p0, Laok;->b:Lauc;

    iput-object p3, p0, Laok;->c:Lbws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lbxj;Ljava/io/IOException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Laok;->c:Lbws;

    iget-object v1, p0, Laok;->b:Lauc;

    invoke-static {v0, p2, v1}, Laoh;->a(Lbws;Ljava/lang/Exception;Lauc;)V

    .line 132
    return-void
.end method

.method public final onResponse(Lbxn;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 110
    iget-object v2, p0, Laok;->a:Laol;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Laol;->b:J

    .line 111
    iget-object v4, p1, Lbxn;->g:Lbxp;

    .line 113
    :try_start_0
    invoke-virtual {v4}, Lbxp;->a()J

    move-result-wide v2

    .line 114
    cmp-long v5, v2, v0

    if-gez v5, :cond_0

    .line 117
    :goto_0
    iget-object v2, p0, Laok;->b:Lauc;

    invoke-virtual {v4}, Lbxp;->b()Lhss;

    move-result-object v3

    invoke-interface {v3}, Lhss;->d()Ljava/io/InputStream;

    move-result-object v3

    long-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Lauc;->a(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :try_start_1
    invoke-virtual {v4}, Lbxp;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :goto_1
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "OkHttpNetworkFetchProducer"

    const-string v2, "Exception when closing response body"

    invoke-static {v1, v2, v0}, Lakf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    .line 119
    :try_start_2
    iget-object v1, p0, Laok;->c:Lbws;

    iget-object v2, p0, Laok;->b:Lauc;

    invoke-static {v1, v0, v2}, Laoh;->a(Lbws;Ljava/lang/Exception;Lauc;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :try_start_3
    invoke-virtual {v4}, Lbxp;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 123
    :catch_2
    move-exception v0

    .line 124
    const-string v1, "OkHttpNetworkFetchProducer"

    const-string v2, "Exception when closing response body"

    invoke-static {v1, v2, v0}, Lakf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    :try_start_4
    invoke-virtual {v4}, Lbxp;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 125
    :goto_2
    throw v0

    .line 123
    :catch_3
    move-exception v1

    .line 124
    const-string v2, "OkHttpNetworkFetchProducer"

    const-string v3, "Exception when closing response body"

    invoke-static {v2, v3, v1}, Lakf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method
