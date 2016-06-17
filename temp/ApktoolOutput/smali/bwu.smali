.class public final Lbwu;
.super Lbxs;
.source "Call.java"


# instance fields
.field private final a:Lcom/squareup/okhttp/Callback;

.field private final b:Z

.field private synthetic c:Lbws;


# direct methods
.method private constructor <init>(Lbws;Lcom/squareup/okhttp/Callback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 133
    iput-object p1, p0, Lbwu;->c:Lbws;

    .line 134
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lbws;->d:Lbxj;

    iget-object v2, v2, Lbxj;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lbxs;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iput-object p2, p0, Lbwu;->a:Lcom/squareup/okhttp/Callback;

    .line 136
    iput-boolean v3, p0, Lbwu;->b:Z

    .line 137
    return-void
.end method

.method public synthetic constructor <init>(Lbws;Lcom/squareup/okhttp/Callback;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lbwu;-><init>(Lbws;Lcom/squareup/okhttp/Callback;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lbwu;->c:Lbws;

    iget-object v0, v0, Lbws;->d:Lbxj;

    invoke-virtual {v0}, Lbxj;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    .line 162
    :try_start_0
    iget-object v0, p0, Lbwu;->c:Lbws;

    new-instance v3, Lbwt;

    const/4 v4, 0x0

    iget-object v5, v0, Lbws;->d:Lbxj;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Lbwt;-><init>(Lbws;ILbxj;Z)V

    iget-object v0, v0, Lbws;->d:Lbxj;

    invoke-interface {v3, v0}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lbxj;)Lbxn;

    move-result-object v0

    .line 163
    iget-object v3, p0, Lbwu;->c:Lbws;

    iget-boolean v2, v3, Lbws;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 165
    :try_start_1
    iget-object v0, p0, Lbwu;->a:Lcom/squareup/okhttp/Callback;

    iget-object v2, p0, Lbwu;->c:Lbws;

    iget-object v2, v2, Lbws;->d:Lbxj;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/squareup/okhttp/Callback;->onFailure(Lbxj;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :goto_0
    iget-object v0, p0, Lbwu;->c:Lbws;

    iget-object v0, v0, Lbws;->a:Lbxh;

    iget-object v0, v0, Lbxh;->d:Lbxd;

    invoke-virtual {v0, p0}, Lbxd;->b(Lbwu;)V

    .line 179
    :goto_1
    return-void

    .line 168
    :cond_0
    :try_start_2
    iget-object v2, p0, Lbwu;->a:Lcom/squareup/okhttp/Callback;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/Callback;->onResponse(Lbxn;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :goto_2
    if-eqz v1, :cond_1

    .line 173
    :try_start_3
    sget-object v1, Lbxr;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Callback failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lbwu;->c:Lbws;

    invoke-virtual {v4}, Lbws;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :goto_3
    iget-object v0, p0, Lbwu;->c:Lbws;

    iget-object v0, v0, Lbws;->a:Lbxh;

    iget-object v0, v0, Lbxh;->d:Lbxd;

    invoke-virtual {v0, p0}, Lbxd;->b(Lbwu;)V

    goto :goto_1

    .line 175
    :cond_1
    :try_start_4
    iget-object v1, p0, Lbwu;->a:Lcom/squareup/okhttp/Callback;

    iget-object v2, p0, Lbwu;->c:Lbws;

    iget-object v2, v2, Lbws;->e:Lbyo;

    iget-object v2, v2, Lbyo;->l:Lbxj;

    invoke-interface {v1, v2, v0}, Lcom/squareup/okhttp/Callback;->onFailure(Lbxj;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 178
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbwu;->c:Lbws;

    iget-object v1, v1, Lbws;->a:Lbxh;

    iget-object v1, v1, Lbxh;->d:Lbxd;

    invoke-virtual {v1, p0}, Lbxd;->b(Lbwu;)V

    throw v0

    .line 170
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method
