.class public final Lbws;
.super Ljava/lang/Object;
.source "Call.java"


# instance fields
.field public final a:Lbxh;

.field public b:Z

.field public volatile c:Z

.field d:Lbxj;

.field e:Lbyo;


# direct methods
.method protected constructor <init>(Lbxh;Lbxj;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lbxh;

    invoke-direct {v0, p1}, Lbxh;-><init>(Lbxh;)V

    iget-object v1, v0, Lbxh;->j:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lbxh;->j:Ljava/net/ProxySelector;

    :cond_0
    iget-object v1, v0, Lbxh;->k:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lbxh;->k:Ljava/net/CookieHandler;

    :cond_1
    iget-object v1, v0, Lbxh;->m:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lbxh;->m:Ljavax/net/SocketFactory;

    :cond_2
    iget-object v1, v0, Lbxh;->n:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lbxh;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lbxh;->n:Ljavax/net/ssl/SSLSocketFactory;

    :cond_3
    iget-object v1, v0, Lbxh;->o:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_4

    sget-object v1, Lcam;->a:Lcam;

    iput-object v1, v0, Lbxh;->o:Ljavax/net/ssl/HostnameVerifier;

    :cond_4
    iget-object v1, v0, Lbxh;->p:Lbwv;

    if-nez v1, :cond_5

    sget-object v1, Lbwv;->a:Lbwv;

    iput-object v1, v0, Lbxh;->p:Lbwv;

    :cond_5
    iget-object v1, v0, Lbxh;->q:Lcom/squareup/okhttp/Authenticator;

    if-nez v1, :cond_6

    sget-object v1, Lbyc;->a:Lcom/squareup/okhttp/Authenticator;

    iput-object v1, v0, Lbxh;->q:Lcom/squareup/okhttp/Authenticator;

    :cond_6
    iget-object v1, v0, Lbxh;->r:Lbwz;

    if-nez v1, :cond_7

    invoke-static {}, Lbwz;->a()Lbwz;

    move-result-object v1

    iput-object v1, v0, Lbxh;->r:Lbwz;

    :cond_7
    iget-object v1, v0, Lbxh;->f:Ljava/util/List;

    if-nez v1, :cond_8

    sget-object v1, Lbxh;->a:Ljava/util/List;

    iput-object v1, v0, Lbxh;->f:Ljava/util/List;

    :cond_8
    iget-object v1, v0, Lbxh;->g:Ljava/util/List;

    if-nez v1, :cond_9

    sget-object v1, Lbxh;->b:Ljava/util/List;

    iput-object v1, v0, Lbxh;->g:Ljava/util/List;

    :cond_9
    iget-object v1, v0, Lbxh;->s:Lcom/squareup/okhttp/internal/Network;

    if-nez v1, :cond_a

    sget-object v1, Lcom/squareup/okhttp/internal/Network;->DEFAULT:Lcom/squareup/okhttp/internal/Network;

    iput-object v1, v0, Lbxh;->s:Lcom/squareup/okhttp/internal/Network;

    :cond_a
    iput-object v0, p0, Lbws;->a:Lbxh;

    .line 49
    iput-object p2, p0, Lbws;->d:Lbxj;

    .line 50
    return-void
.end method


# virtual methods
.method final a(Lbxj;Z)Lbxn;
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 239
    move-object/from16 v0, p1

    iget-object v2, v0, Lbxj;->d:Lbxl;

    .line 240
    if-eqz v2, :cond_59

    .line 241
    invoke-virtual/range {p1 .. p1}, Lbxj;->c()Lbxk;

    move-result-object v3

    .line 243
    invoke-virtual {v2}, Lbxl;->a()J

    move-result-wide v4

    .line 249
    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 250
    const-string v2, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    .line 251
    const-string v2, "Transfer-Encoding"

    invoke-virtual {v3, v2}, Lbxk;->a(Ljava/lang/String;)Lbxk;

    .line 257
    :goto_0
    invoke-virtual {v3}, Lbxk;->a()Lbxj;

    move-result-object v4

    .line 261
    :goto_1
    new-instance v2, Lbyo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbws;->a:Lbxh;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lbyo;-><init>(Lbxh;Lbxj;ZZZLbwy;Lbyx;Lbxn;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lbws;->e:Lbyo;

    .line 263
    const/4 v2, 0x0

    move v11, v2

    .line 265
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbws;->c:Z

    if-eqz v2, :cond_2

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lbws;->e:Lbyo;

    invoke-virtual {v2}, Lbyo;->e()V

    .line 267
    const/4 v10, 0x0

    .line 291
    :cond_0
    :goto_3
    return-object v10

    .line 253
    :cond_1
    const-string v2, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v3, v2, v4}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    .line 254
    const-string v2, "Content-Length"

    invoke-virtual {v3, v2}, Lbxk;->a(Ljava/lang/String;)Lbxk;

    goto :goto_0

    .line 271
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lbws;->e:Lbyo;

    iget-object v2, v9, Lbyo;->t:Lbyd;

    if-nez v2, :cond_2e

    iget-object v2, v9, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :catch_0
    move-exception v2

    move-object v12, v2

    .line 274
    move-object/from16 v0, p0

    iget-object v10, v0, Lbws;->e:Lbyo;

    iget-object v2, v10, Lbyo;->e:Lbyx;

    if-eqz v2, :cond_3

    iget-object v2, v10, Lbyo;->c:Lbwy;

    if-eqz v2, :cond_3

    iget-object v2, v10, Lbyo;->e:Lbyx;

    sget-object v3, Lbxr;->b:Lbxr;

    iget-object v4, v10, Lbyo;->c:Lbwy;

    invoke-virtual {v3, v4}, Lbxr;->b(Lbwy;)I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, v10, Lbyo;->c:Lbwy;

    iget-object v3, v3, Lbwy;->b:Lbxq;

    invoke-virtual {v2, v3, v12}, Lbyx;->a(Lbxq;Ljava/io/IOException;)V

    :cond_3
    iget-object v2, v10, Lbyo;->e:Lbyx;

    if-nez v2, :cond_4

    iget-object v2, v10, Lbyo;->c:Lbwy;

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, v10, Lbyo;->e:Lbyx;

    if-eqz v2, :cond_6

    iget-object v2, v10, Lbyo;->e:Lbyx;

    invoke-virtual {v2}, Lbyx;->d()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lbyx;->b()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lbyx;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lbyx;->e()Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_5
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, v10, Lbyo;->b:Lbxh;

    iget-boolean v2, v2, Lbxh;->v:Z

    if-nez v2, :cond_44

    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_49

    :cond_7
    const/4 v2, 0x0

    .line 275
    :goto_6
    if-eqz v2, :cond_4a

    .line 276
    move-object/from16 v0, p0

    iput-object v2, v0, Lbws;->e:Lbyo;

    goto/16 :goto_2

    .line 271
    :cond_8
    :try_start_1
    iget-object v2, v9, Lbyo;->l:Lbxj;

    invoke-virtual {v2}, Lbxj;->c()Lbxk;

    move-result-object v3

    const-string v4, "Host"

    invoke-virtual {v2, v4}, Lbxj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const-string v4, "Host"

    invoke-virtual {v2}, Lbxj;->a()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lbyo;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    :cond_9
    iget-object v4, v9, Lbyo;->c:Lbwy;

    if-eqz v4, :cond_a

    iget-object v4, v9, Lbyo;->c:Lbwy;

    iget-object v4, v4, Lbwy;->g:Lcom/squareup/okhttp/Protocol;

    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-eq v4, v5, :cond_b

    :cond_a
    const-string v4, "Connection"

    invoke-virtual {v2, v4}, Lbxj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    :cond_b
    const-string v4, "Accept-Encoding"

    invoke-virtual {v2, v4}, Lbxj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    iput-boolean v4, v9, Lbyo;->j:Z

    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    :cond_c
    iget-object v4, v9, Lbyo;->b:Lbxh;

    iget-object v4, v4, Lbxh;->k:Ljava/net/CookieHandler;

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lbxk;->a()Lbxj;

    move-result-object v5

    iget-object v5, v5, Lbxj;->c:Lbxf;

    invoke-static {v5}, Lbyt;->b(Lbxf;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lbxj;->b()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v4}, Lbyt;->a(Lbxk;Ljava/util/Map;)V

    :cond_d
    const-string v4, "User-Agent"

    invoke-virtual {v2, v4}, Lbxj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v2, "User-Agent"

    const-string v4, "okhttp/2.3.0"

    invoke-virtual {v3, v2, v4}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    :cond_e
    invoke-virtual {v3}, Lbxk;->a()Lbxj;

    move-result-object v10

    sget-object v2, Lbxr;->b:Lbxr;

    iget-object v3, v9, Lbyo;->b:Lbxh;

    invoke-virtual {v2, v3}, Lbxr;->a(Lbxh;)Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object v12

    if-eqz v12, :cond_12

    invoke-interface {v12, v10}, Lcom/squareup/okhttp/internal/InternalCache;->get(Lbxj;)Lbxn;

    move-result-object v2

    move-object v8, v2

    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v13, Lbye;

    invoke-direct {v13, v2, v3, v10, v8}, Lbye;-><init>(JLbxj;Lbxn;)V

    iget-object v2, v13, Lbye;->c:Lbxn;

    if-nez v2, :cond_13

    new-instance v2, Lbyd;

    iget-object v3, v13, Lbye;->b:Lbxj;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbyd;-><init>(Lbxj;Lbxn;B)V

    :goto_8
    iget-object v3, v2, Lbyd;->a:Lbxj;

    if-eqz v3, :cond_f

    iget-object v3, v13, Lbye;->b:Lbxj;

    invoke-virtual {v3}, Lbxj;->d()Lbwq;

    move-result-object v3

    iget-boolean v3, v3, Lbwq;->i:Z

    if-eqz v3, :cond_f

    new-instance v2, Lbyd;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbyd;-><init>(Lbxj;Lbxn;B)V

    :cond_f
    iput-object v2, v9, Lbyo;->t:Lbyd;

    iget-object v2, v9, Lbyo;->t:Lbyd;

    iget-object v2, v2, Lbyd;->a:Lbxj;

    iput-object v2, v9, Lbyo;->m:Lbxj;

    iget-object v2, v9, Lbyo;->t:Lbyd;

    iget-object v2, v2, Lbyd;->b:Lbxn;

    iput-object v2, v9, Lbyo;->n:Lbxn;

    if-eqz v12, :cond_10

    iget-object v2, v9, Lbyo;->t:Lbyd;

    invoke-interface {v12, v2}, Lcom/squareup/okhttp/internal/InternalCache;->trackResponse(Lbyd;)V

    :cond_10
    if-eqz v8, :cond_11

    iget-object v2, v9, Lbyo;->n:Lbxn;

    if-nez v2, :cond_11

    iget-object v2, v8, Lbxn;->g:Lbxp;

    invoke-static {v2}, Lbya;->a(Ljava/io/Closeable;)V

    :cond_11
    iget-object v2, v9, Lbyo;->m:Lbxj;

    if-eqz v2, :cond_31

    iget-object v2, v9, Lbyo;->c:Lbwy;

    if-nez v2, :cond_2c

    iget-object v2, v9, Lbyo;->c:Lbwy;

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_12
    const/4 v2, 0x0

    move-object v8, v2

    goto :goto_7

    :cond_13
    iget-object v2, v13, Lbye;->b:Lbxj;

    invoke-virtual {v2}, Lbxj;->e()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v13, Lbye;->c:Lbxn;

    iget-object v2, v2, Lbxn;->e:Lbxe;

    if-nez v2, :cond_14

    new-instance v2, Lbyd;

    iget-object v3, v13, Lbye;->b:Lbxj;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbyd;-><init>(Lbxj;Lbxn;B)V

    goto :goto_8

    :cond_14
    iget-object v2, v13, Lbye;->c:Lbxn;

    iget-object v3, v13, Lbye;->b:Lbxj;

    invoke-static {v2, v3}, Lbyd;->a(Lbxn;Lbxj;)Z

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Lbyd;

    iget-object v3, v13, Lbye;->b:Lbxj;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbyd;-><init>(Lbxj;Lbxn;B)V

    goto :goto_8

    :cond_15
    iget-object v2, v13, Lbye;->b:Lbxj;

    invoke-virtual {v2}, Lbxj;->d()Lbwq;

    move-result-object v14

    iget-boolean v2, v14, Lbwq;->a:Z

    if-nez v2, :cond_16

    iget-object v2, v13, Lbye;->b:Lbxj;

    invoke-static {v2}, Lbye;->a(Lbxj;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    new-instance v2, Lbyd;

    iget-object v3, v13, Lbye;->b:Lbxj;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbyd;-><init>(Lbxj;Lbxn;B)V

    goto/16 :goto_8

    :cond_17
    iget-object v2, v13, Lbye;->d:Ljava/util/Date;

    if-eqz v2, :cond_1d

    const-wide/16 v2, 0x0

    iget-wide v4, v13, Lbye;->j:J

    iget-object v6, v13, Lbye;->d:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_9
    iget v4, v13, Lbye;->l:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_18

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, v13, Lbye;->l:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_18
    iget-wide v4, v13, Lbye;->j:J

    iget-wide v6, v13, Lbye;->i:J

    sub-long/2addr v4, v6

    iget-wide v6, v13, Lbye;->a:J

    iget-wide v0, v13, Lbye;->j:J

    move-wide/from16 v16, v0

    sub-long v6, v6, v16

    add-long/2addr v2, v4

    add-long v16, v2, v6

    iget-object v2, v13, Lbye;->c:Lbxn;

    invoke-virtual {v2}, Lbxn;->c()Lbwq;

    move-result-object v2

    iget v3, v2, Lbwq;->c:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v2, v2, Lbwq;->c:I

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_19
    :goto_a
    iget v4, v14, Lbwq;->c:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_58

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, v14, Lbwq;->c:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v6, v2

    :goto_b
    const-wide/16 v2, 0x0

    iget v4, v14, Lbwq;->h:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_57

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, v14, Lbwq;->h:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    move-wide v4, v2

    :goto_c
    const-wide/16 v2, 0x0

    iget-object v15, v13, Lbye;->c:Lbxn;

    invoke-virtual {v15}, Lbxn;->c()Lbwq;

    move-result-object v15

    iget-boolean v0, v15, Lbwq;->f:Z

    move/from16 v18, v0

    if-nez v18, :cond_1a

    iget v0, v14, Lbwq;->g:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, v14, Lbwq;->g:I

    int-to-long v0, v3

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_1a
    iget-boolean v14, v15, Lbwq;->a:Z

    if-nez v14, :cond_25

    add-long v14, v16, v4

    add-long/2addr v2, v6

    cmp-long v2, v14, v2

    if-gez v2, :cond_25

    iget-object v2, v13, Lbye;->c:Lbxn;

    invoke-virtual {v2}, Lbxn;->a()Lbxo;

    move-result-object v3

    add-long v4, v4, v16

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1b

    const-string v2, "Warning"

    const-string v4, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v3, v2, v4}, Lbxo;->b(Ljava/lang/String;Ljava/lang/String;)Lbxo;

    :cond_1b
    const-wide/32 v4, 0x5265c00

    cmp-long v2, v16, v4

    if-lez v2, :cond_1c

    iget-object v2, v13, Lbye;->c:Lbxn;

    invoke-virtual {v2}, Lbxn;->c()Lbwq;

    move-result-object v2

    iget v2, v2, Lbwq;->c:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_24

    iget-object v2, v13, Lbye;->h:Ljava/util/Date;

    if-nez v2, :cond_24

    const/4 v2, 0x1

    :goto_d
    if-eqz v2, :cond_1c

    const-string v2, "Warning"

    const-string v4, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v3, v2, v4}, Lbxo;->b(Ljava/lang/String;Ljava/lang/String;)Lbxo;

    :cond_1c
    new-instance v2, Lbyd;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lbxo;->a()Lbxn;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lbyd;-><init>(Lbxj;Lbxn;B)V

    goto/16 :goto_8

    :cond_1d
    const-wide/16 v2, 0x0

    goto/16 :goto_9

    :cond_1e
    iget-object v2, v13, Lbye;->h:Ljava/util/Date;

    if-eqz v2, :cond_20

    iget-object v2, v13, Lbye;->d:Ljava/util/Date;

    if-eqz v2, :cond_1f

    iget-object v2, v13, Lbye;->d:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_e
    iget-object v4, v13, Lbye;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_19

    const-wide/16 v2, 0x0

    goto/16 :goto_a

    :cond_1f
    iget-wide v2, v13, Lbye;->j:J

    goto :goto_e

    :cond_20
    iget-object v2, v13, Lbye;->f:Ljava/util/Date;

    if-eqz v2, :cond_23

    iget-object v2, v13, Lbye;->c:Lbxn;

    iget-object v2, v2, Lbxn;->a:Lbxj;

    invoke-virtual {v2}, Lbxj;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    iget-object v2, v13, Lbye;->d:Ljava/util/Date;

    if-eqz v2, :cond_21

    iget-object v2, v13, Lbye;->d:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_f
    iget-object v4, v13, Lbye;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_22

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    goto/16 :goto_a

    :cond_21
    iget-wide v2, v13, Lbye;->i:J

    goto :goto_f

    :cond_22
    const-wide/16 v2, 0x0

    goto/16 :goto_a

    :cond_23
    const-wide/16 v2, 0x0

    goto/16 :goto_a

    :cond_24
    const/4 v2, 0x0

    goto :goto_d

    :cond_25
    iget-object v2, v13, Lbye;->b:Lbxj;

    invoke-virtual {v2}, Lbxj;->c()Lbxk;

    move-result-object v2

    iget-object v3, v13, Lbye;->k:Ljava/lang/String;

    if-eqz v3, :cond_27

    const-string v3, "If-None-Match"

    iget-object v4, v13, Lbye;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    :cond_26
    :goto_10
    invoke-virtual {v2}, Lbxk;->a()Lbxj;

    move-result-object v3

    invoke-static {v3}, Lbye;->a(Lbxj;)Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance v2, Lbyd;

    iget-object v4, v13, Lbye;->c:Lbxn;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbyd;-><init>(Lbxj;Lbxn;B)V

    goto/16 :goto_8

    :cond_27
    iget-object v3, v13, Lbye;->f:Ljava/util/Date;

    if-eqz v3, :cond_28

    const-string v3, "If-Modified-Since"

    iget-object v4, v13, Lbye;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    goto :goto_10

    :cond_28
    iget-object v3, v13, Lbye;->d:Ljava/util/Date;

    if-eqz v3, :cond_26

    const-string v3, "If-Modified-Since"

    iget-object v4, v13, Lbye;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    goto :goto_10

    :cond_29
    new-instance v2, Lbyd;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbyd;-><init>(Lbxj;Lbxn;B)V

    goto/16 :goto_8

    :cond_2a
    iget-object v2, v9, Lbyo;->e:Lbyx;

    if-nez v2, :cond_2b

    iget-object v2, v9, Lbyo;->b:Lbxh;

    iget-object v3, v9, Lbyo;->m:Lbxj;

    invoke-static {v2, v3}, Lbyo;->a(Lbxh;Lbxj;)Lbwp;

    move-result-object v2

    iput-object v2, v9, Lbyo;->d:Lbwp;

    iget-object v2, v9, Lbyo;->d:Lbwp;

    iget-object v3, v9, Lbyo;->m:Lbxj;

    iget-object v4, v9, Lbyo;->b:Lbxh;

    new-instance v5, Lbyx;

    invoke-virtual {v3}, Lbxj;->b()Ljava/net/URI;

    move-result-object v6

    invoke-direct {v5, v2, v6, v4, v3}, Lbyx;-><init>(Lbwp;Ljava/net/URI;Lbxh;Lbxj;)V

    iput-object v5, v9, Lbyo;->e:Lbyx;

    :cond_2b
    invoke-virtual {v9}, Lbyo;->a()Lbwy;

    move-result-object v2

    sget-object v3, Lbxr;->b:Lbxr;

    iget-object v4, v9, Lbyo;->b:Lbxh;

    iget-object v5, v9, Lbyo;->m:Lbxj;

    invoke-virtual {v3, v4, v2, v9, v5}, Lbxr;->a(Lbxh;Lbwy;Lbyo;Lbxj;)V

    iput-object v2, v9, Lbyo;->c:Lbwy;

    iget-object v2, v9, Lbyo;->c:Lbwy;

    iget-object v2, v2, Lbwy;->b:Lbxq;

    iput-object v2, v9, Lbyo;->f:Lbxq;

    :cond_2c
    sget-object v2, Lbxr;->b:Lbxr;

    iget-object v3, v9, Lbyo;->c:Lbwy;

    invoke-virtual {v2, v3, v9}, Lbxr;->a(Lbwy;Lbyo;)Lcom/squareup/okhttp/internal/http/Transport;

    move-result-object v2

    iput-object v2, v9, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    iget-boolean v2, v9, Lbyo;->q:Z

    if-eqz v2, :cond_2e

    invoke-virtual {v9}, Lbyo;->c()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v9, Lbyo;->p:Lhtg;

    if-nez v2, :cond_2e

    invoke-static {v10}, Lbyt;->a(Lbxj;)J

    move-result-wide v2

    iget-boolean v4, v9, Lbyo;->k:Z

    if-eqz v4, :cond_30

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_2d

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2f

    iget-object v4, v9, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v5, v9, Lbyo;->m:Lbxj;

    invoke-interface {v4, v5}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestHeaders(Lbxj;)V

    new-instance v4, Lbyw;

    long-to-int v2, v2

    invoke-direct {v4, v2}, Lbyw;-><init>(I)V

    iput-object v4, v9, Lbyo;->p:Lhtg;

    .line 272
    :cond_2e
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lbws;->e:Lbyo;

    iget-object v2, v3, Lbyo;->o:Lbxn;

    if-nez v2, :cond_36

    iget-object v2, v3, Lbyo;->m:Lbxj;

    if-nez v2, :cond_34

    iget-object v2, v3, Lbyo;->n:Lbxn;

    if-nez v2, :cond_34

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call sendRequest() first!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_2f
    new-instance v2, Lbyw;

    invoke-direct {v2}, Lbyw;-><init>()V

    iput-object v2, v9, Lbyo;->p:Lhtg;

    goto :goto_11

    :cond_30
    iget-object v4, v9, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v5, v9, Lbyo;->m:Lbxj;

    invoke-interface {v4, v5}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestHeaders(Lbxj;)V

    iget-object v4, v9, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v5, v9, Lbyo;->m:Lbxj;

    invoke-interface {v4, v5, v2, v3}, Lcom/squareup/okhttp/internal/http/Transport;->createRequestBody(Lbxj;J)Lhtg;

    move-result-object v2

    iput-object v2, v9, Lbyo;->p:Lhtg;

    goto :goto_11

    :cond_31
    iget-object v2, v9, Lbyo;->c:Lbwy;

    if-eqz v2, :cond_32

    sget-object v2, Lbxr;->b:Lbxr;

    iget-object v3, v9, Lbyo;->b:Lbxh;

    iget-object v3, v3, Lbxh;->r:Lbwz;

    iget-object v4, v9, Lbyo;->c:Lbwy;

    invoke-virtual {v2, v3, v4}, Lbxr;->a(Lbwz;Lbwy;)V

    const/4 v2, 0x0

    iput-object v2, v9, Lbyo;->c:Lbwy;

    :cond_32
    iget-object v2, v9, Lbyo;->n:Lbxn;

    if-eqz v2, :cond_33

    iget-object v2, v9, Lbyo;->n:Lbxn;

    invoke-virtual {v2}, Lbxn;->a()Lbxo;

    move-result-object v2

    iget-object v3, v9, Lbyo;->l:Lbxj;

    iput-object v3, v2, Lbxo;->a:Lbxj;

    iget-object v3, v9, Lbyo;->g:Lbxn;

    invoke-static {v3}, Lbyo;->a(Lbxn;)Lbxn;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbxo;->c(Lbxn;)Lbxo;

    move-result-object v2

    iget-object v3, v9, Lbyo;->n:Lbxn;

    invoke-static {v3}, Lbyo;->a(Lbxn;)Lbxn;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbxo;->b(Lbxn;)Lbxo;

    move-result-object v2

    invoke-virtual {v2}, Lbxo;->a()Lbxn;

    move-result-object v2

    iput-object v2, v9, Lbyo;->o:Lbxn;

    :goto_12
    iget-object v2, v9, Lbyo;->o:Lbxn;

    invoke-virtual {v9, v2}, Lbyo;->b(Lbxn;)Lbxn;

    move-result-object v2

    iput-object v2, v9, Lbyo;->o:Lbxn;

    goto :goto_11

    :cond_33
    new-instance v2, Lbxo;

    invoke-direct {v2}, Lbxo;-><init>()V

    iget-object v3, v9, Lbyo;->l:Lbxj;

    iput-object v3, v2, Lbxo;->a:Lbxj;

    iget-object v3, v9, Lbyo;->g:Lbxn;

    invoke-static {v3}, Lbyo;->a(Lbxn;)Lbxn;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbxo;->c(Lbxn;)Lbxo;

    move-result-object v2

    sget-object v3, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    iput-object v3, v2, Lbxo;->b:Lcom/squareup/okhttp/Protocol;

    const/16 v3, 0x1f8

    iput v3, v2, Lbxo;->c:I

    const-string v3, "Unsatisfiable Request (only-if-cached)"

    iput-object v3, v2, Lbxo;->d:Ljava/lang/String;

    sget-object v3, Lbyo;->a:Lbxp;

    iput-object v3, v2, Lbxo;->g:Lbxp;

    invoke-virtual {v2}, Lbxo;->a()Lbxn;

    move-result-object v2

    iput-object v2, v9, Lbyo;->o:Lbxn;

    goto :goto_12

    .line 272
    :cond_34
    iget-object v2, v3, Lbyo;->m:Lbxj;

    if-eqz v2, :cond_36

    iget-boolean v2, v3, Lbyo;->r:Z

    if-eqz v2, :cond_37

    iget-object v2, v3, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v4, v3, Lbyo;->m:Lbxj;

    invoke-interface {v2, v4}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestHeaders(Lbxj;)V

    :cond_35
    :goto_13
    invoke-virtual {v3}, Lbyo;->g()Lbxn;

    move-result-object v2

    :goto_14
    iget-object v4, v2, Lbxn;->f:Lbxf;

    invoke-virtual {v3, v4}, Lbyo;->a(Lbxf;)V

    iget-object v4, v3, Lbyo;->n:Lbxn;

    if-eqz v4, :cond_3c

    iget-object v4, v3, Lbyo;->n:Lbxn;

    invoke-static {v4, v2}, Lbyo;->a(Lbxn;Lbxn;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v3, Lbyo;->n:Lbxn;

    invoke-virtual {v4}, Lbxn;->a()Lbxo;

    move-result-object v4

    iget-object v5, v3, Lbyo;->l:Lbxj;

    iput-object v5, v4, Lbxo;->a:Lbxj;

    iget-object v5, v3, Lbyo;->g:Lbxn;

    invoke-static {v5}, Lbyo;->a(Lbxn;)Lbxn;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbxo;->c(Lbxn;)Lbxo;

    move-result-object v4

    iget-object v5, v3, Lbyo;->n:Lbxn;

    iget-object v5, v5, Lbxn;->f:Lbxf;

    iget-object v6, v2, Lbxn;->f:Lbxf;

    invoke-static {v5, v6}, Lbyo;->a(Lbxf;Lbxf;)Lbxf;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbxo;->a(Lbxf;)Lbxo;

    move-result-object v4

    iget-object v5, v3, Lbyo;->n:Lbxn;

    invoke-static {v5}, Lbyo;->a(Lbxn;)Lbxn;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbxo;->b(Lbxn;)Lbxo;

    move-result-object v4

    invoke-static {v2}, Lbyo;->a(Lbxn;)Lbxn;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbxo;->a(Lbxn;)Lbxo;

    move-result-object v4

    invoke-virtual {v4}, Lbxo;->a()Lbxn;

    move-result-object v4

    iput-object v4, v3, Lbyo;->o:Lbxn;

    iget-object v2, v2, Lbxn;->g:Lbxp;

    invoke-virtual {v2}, Lbxp;->close()V

    invoke-virtual {v3}, Lbyo;->e()V

    sget-object v2, Lbxr;->b:Lbxr;

    iget-object v4, v3, Lbyo;->b:Lbxh;

    invoke-virtual {v2, v4}, Lbxr;->a(Lbxh;)Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/InternalCache;->trackConditionalCacheHit()V

    iget-object v4, v3, Lbyo;->n:Lbxn;

    iget-object v5, v3, Lbyo;->o:Lbxn;

    invoke-static {v5}, Lbyo;->a(Lbxn;)Lbxn;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/squareup/okhttp/internal/InternalCache;->update(Lbxn;Lbxn;)V

    iget-object v2, v3, Lbyo;->o:Lbxn;

    invoke-virtual {v3, v2}, Lbyo;->b(Lbxn;)Lbxn;

    move-result-object v2

    iput-object v2, v3, Lbyo;->o:Lbxn;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    :cond_36
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lbws;->e:Lbyo;

    invoke-virtual {v2}, Lbyo;->d()Lbxn;

    move-result-object v10

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lbws;->e:Lbyo;

    iget-object v2, v3, Lbyo;->o:Lbxn;

    if-nez v2, :cond_4b

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 272
    :cond_37
    :try_start_2
    iget-boolean v2, v3, Lbyo;->q:Z

    if-nez v2, :cond_38

    new-instance v2, Lbyr;

    const/4 v4, 0x0

    iget-object v5, v3, Lbyo;->m:Lbxj;

    invoke-direct {v2, v3, v4, v5}, Lbyr;-><init>(Lbyo;ILbxj;)V

    iget-object v4, v3, Lbyo;->m:Lbxj;

    invoke-virtual {v2, v4}, Lbyr;->proceed(Lbxj;)Lbxn;

    move-result-object v2

    goto/16 :goto_14

    :cond_38
    iget-wide v4, v3, Lbyo;->i:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_3a

    iget-object v2, v3, Lbyo;->m:Lbxj;

    invoke-static {v2}, Lbyt;->a(Lbxj;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_39

    iget-object v2, v3, Lbyo;->p:Lhtg;

    instance-of v2, v2, Lbyw;

    if-eqz v2, :cond_39

    iget-object v2, v3, Lbyo;->p:Lhtg;

    check-cast v2, Lbyw;

    iget-object v2, v2, Lbyw;->a:Lhsp;

    iget-wide v4, v2, Lhsp;->b:J

    iget-object v2, v3, Lbyo;->m:Lbxj;

    invoke-virtual {v2}, Lbxj;->c()Lbxk;

    move-result-object v2

    const-string v6, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    move-result-object v2

    invoke-virtual {v2}, Lbxk;->a()Lbxj;

    move-result-object v2

    iput-object v2, v3, Lbyo;->m:Lbxj;

    :cond_39
    iget-object v2, v3, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v4, v3, Lbyo;->m:Lbxj;

    invoke-interface {v2, v4}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestHeaders(Lbxj;)V

    :cond_3a
    iget-object v2, v3, Lbyo;->p:Lhtg;

    if-eqz v2, :cond_35

    iget-object v2, v3, Lbyo;->p:Lhtg;

    invoke-interface {v2}, Lhtg;->close()V

    iget-object v2, v3, Lbyo;->p:Lhtg;

    instance-of v2, v2, Lbyw;

    if-eqz v2, :cond_35

    iget-object v4, v3, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v2, v3, Lbyo;->p:Lhtg;

    check-cast v2, Lbyw;

    invoke-interface {v4, v2}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestBody(Lbyw;)V

    goto/16 :goto_13

    :cond_3b
    iget-object v4, v3, Lbyo;->n:Lbxn;

    iget-object v4, v4, Lbxn;->g:Lbxp;

    invoke-static {v4}, Lbya;->a(Ljava/io/Closeable;)V

    :cond_3c
    invoke-virtual {v2}, Lbxn;->a()Lbxo;

    move-result-object v4

    iget-object v5, v3, Lbyo;->l:Lbxj;

    iput-object v5, v4, Lbxo;->a:Lbxj;

    iget-object v5, v3, Lbyo;->g:Lbxn;

    invoke-static {v5}, Lbyo;->a(Lbxn;)Lbxn;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbxo;->c(Lbxn;)Lbxo;

    move-result-object v4

    iget-object v5, v3, Lbyo;->n:Lbxn;

    invoke-static {v5}, Lbyo;->a(Lbxn;)Lbxn;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbxo;->b(Lbxn;)Lbxo;

    move-result-object v4

    invoke-static {v2}, Lbyo;->a(Lbxn;)Lbxn;

    move-result-object v2

    invoke-virtual {v4, v2}, Lbxo;->a(Lbxn;)Lbxo;

    move-result-object v2

    invoke-virtual {v2}, Lbxo;->a()Lbxn;

    move-result-object v2

    iput-object v2, v3, Lbyo;->o:Lbxn;

    iget-object v2, v3, Lbyo;->o:Lbxn;

    invoke-static {v2}, Lbyo;->c(Lbxn;)Z

    move-result v2

    if-eqz v2, :cond_36

    sget-object v2, Lbxr;->b:Lbxr;

    iget-object v4, v3, Lbyo;->b:Lbxh;

    invoke-virtual {v2, v4}, Lbxr;->a(Lbxh;)Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object v4

    if-eqz v4, :cond_3e

    iget-object v2, v3, Lbyo;->o:Lbxn;

    iget-object v5, v3, Lbyo;->m:Lbxj;

    invoke-static {v2, v5}, Lbyd;->a(Lbxn;Lbxj;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, v3, Lbyo;->m:Lbxj;

    iget-object v2, v2, Lbxj;->b:Ljava/lang/String;

    const-string v5, "POST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    const-string v5, "PATCH"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    const-string v5, "PUT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    const-string v5, "DELETE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_40

    :cond_3d
    const/4 v2, 0x1

    :goto_16
    if-eqz v2, :cond_3e

    :try_start_3
    iget-object v2, v3, Lbyo;->m:Lbxj;

    invoke-interface {v4, v2}, Lcom/squareup/okhttp/internal/InternalCache;->remove(Lbxj;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3e
    :goto_17
    :try_start_4
    iget-object v4, v3, Lbyo;->s:Lcom/squareup/okhttp/internal/http/CacheRequest;

    iget-object v2, v3, Lbyo;->o:Lbxn;

    if-nez v4, :cond_42

    :cond_3f
    :goto_18
    invoke-virtual {v3, v2}, Lbyo;->b(Lbxn;)Lbxn;

    move-result-object v2

    iput-object v2, v3, Lbyo;->o:Lbxn;

    goto/16 :goto_15

    :cond_40
    const/4 v2, 0x0

    goto :goto_16

    :cond_41
    iget-object v2, v3, Lbyo;->o:Lbxn;

    invoke-static {v2}, Lbyo;->a(Lbxn;)Lbxn;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/squareup/okhttp/internal/InternalCache;->put(Lbxn;)Lcom/squareup/okhttp/internal/http/CacheRequest;

    move-result-object v2

    iput-object v2, v3, Lbyo;->s:Lcom/squareup/okhttp/internal/http/CacheRequest;

    goto :goto_17

    :cond_42
    invoke-interface {v4}, Lcom/squareup/okhttp/internal/http/CacheRequest;->body()Lhtg;

    move-result-object v5

    if-eqz v5, :cond_3f

    iget-object v6, v2, Lbxn;->g:Lbxp;

    invoke-virtual {v6}, Lbxp;->b()Lhss;

    move-result-object v6

    invoke-static {v5}, Lhsx;->a(Lhtg;)Lhsr;

    move-result-object v5

    new-instance v7, Lbyq;

    invoke-direct {v7, v6, v4, v5}, Lbyq;-><init>(Lhss;Lcom/squareup/okhttp/internal/http/CacheRequest;Lhsr;)V

    invoke-virtual {v2}, Lbxn;->a()Lbxo;

    move-result-object v4

    new-instance v5, Lbyv;

    iget-object v2, v2, Lbxn;->f:Lbxf;

    invoke-static {v7}, Lhsx;->a(Lhth;)Lhss;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lbyv;-><init>(Lbxf;Lhss;)V

    iput-object v5, v4, Lbxo;->g:Lbxp;

    invoke-virtual {v4}, Lbxo;->a()Lbxn;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    goto :goto_18

    .line 274
    :cond_43
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_44
    instance-of v2, v12, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_45

    instance-of v2, v12, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_46

    invoke-virtual {v12}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_46

    :cond_45
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_46
    instance-of v2, v12, Ljava/net/ProtocolException;

    if-eqz v2, :cond_47

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_47
    instance-of v2, v12, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_48

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_48
    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_49
    invoke-virtual {v10}, Lbyo;->f()Lbwy;

    move-result-object v8

    new-instance v2, Lbyo;

    iget-object v3, v10, Lbyo;->b:Lbxh;

    iget-object v4, v10, Lbyo;->l:Lbxj;

    iget-boolean v5, v10, Lbyo;->k:Z

    iget-boolean v6, v10, Lbyo;->q:Z

    iget-boolean v7, v10, Lbyo;->r:Z

    iget-object v9, v10, Lbyo;->e:Lbyx;

    iget-object v10, v10, Lbyo;->g:Lbxn;

    invoke-direct/range {v2 .. v10}, Lbyo;-><init>(Lbxh;Lbxj;ZZZLbwy;Lbyx;Lbxn;)V

    goto/16 :goto_6

    .line 281
    :cond_4a
    throw v12

    .line 285
    :cond_4b
    iget-object v2, v3, Lbyo;->f:Lbxq;

    if-eqz v2, :cond_4d

    iget-object v2, v3, Lbyo;->f:Lbxq;

    iget-object v2, v2, Lbxq;->b:Ljava/net/Proxy;

    :goto_19
    iget-object v4, v3, Lbyo;->o:Lbxn;

    iget v4, v4, Lbxn;->c:I

    sparse-switch v4, :sswitch_data_0

    :cond_4c
    const/4 v4, 0x0

    .line 287
    :goto_1a
    if-nez v4, :cond_54

    .line 288
    if-nez p2, :cond_0

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lbws;->e:Lbyo;

    invoke-virtual {v2}, Lbyo;->e()V

    goto/16 :goto_3

    .line 285
    :cond_4d
    iget-object v2, v3, Lbyo;->b:Lbxh;

    iget-object v2, v2, Lbxh;->e:Ljava/net/Proxy;

    goto :goto_19

    :sswitch_0
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_4e

    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4e
    :sswitch_1
    iget-object v4, v3, Lbyo;->b:Lbxh;

    iget-object v4, v4, Lbxh;->q:Lcom/squareup/okhttp/Authenticator;

    iget-object v3, v3, Lbyo;->o:Lbxn;

    invoke-static {v4, v3, v2}, Lbyt;->a(Lcom/squareup/okhttp/Authenticator;Lbxn;Ljava/net/Proxy;)Lbxj;

    move-result-object v4

    goto :goto_1a

    :sswitch_2
    iget-object v2, v3, Lbyo;->l:Lbxj;

    iget-object v2, v2, Lbxj;->b:Ljava/lang/String;

    const-string v4, "GET"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, v3, Lbyo;->l:Lbxj;

    iget-object v2, v2, Lbxj;->b:Ljava/lang/String;

    const-string v4, "HEAD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_4f
    :sswitch_3
    iget-object v2, v3, Lbyo;->b:Lbxh;

    iget-boolean v2, v2, Lbxh;->u:Z

    if-eqz v2, :cond_4c

    iget-object v2, v3, Lbyo;->o:Lbxn;

    const-string v4, "Location"

    invoke-virtual {v2, v4}, Lbxn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4c

    new-instance v4, Ljava/net/URL;

    iget-object v5, v3, Lbyo;->l:Lbxj;

    invoke-virtual {v5}, Lbxj;->a()Ljava/net/URL;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v5, "https"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v5, "http"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_50
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v3, Lbyo;->l:Lbxj;

    invoke-virtual {v5}, Lbxj;->a()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    iget-object v2, v3, Lbyo;->b:Lbxh;

    iget-boolean v2, v2, Lbxh;->t:Z

    if-eqz v2, :cond_4c

    :cond_51
    iget-object v2, v3, Lbyo;->l:Lbxj;

    invoke-virtual {v2}, Lbxj;->c()Lbxk;

    move-result-object v2

    iget-object v5, v3, Lbyo;->l:Lbxj;

    iget-object v5, v5, Lbxj;->b:Ljava/lang/String;

    invoke-static {v5}, Ld;->o(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    const-string v5, "GET"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lbxk;->a(Ljava/lang/String;Lbxl;)Lbxk;

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v2, v5}, Lbxk;->a(Ljava/lang/String;)Lbxk;

    const-string v5, "Content-Length"

    invoke-virtual {v2, v5}, Lbxk;->a(Ljava/lang/String;)Lbxk;

    const-string v5, "Content-Type"

    invoke-virtual {v2, v5}, Lbxk;->a(Ljava/lang/String;)Lbxk;

    :cond_52
    invoke-virtual {v3, v4}, Lbyo;->b(Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_53

    const-string v3, "Authorization"

    invoke-virtual {v2, v3}, Lbxk;->a(Ljava/lang/String;)Lbxk;

    :cond_53
    invoke-virtual {v2, v4}, Lbxk;->a(Ljava/net/URL;)Lbxk;

    move-result-object v2

    invoke-virtual {v2}, Lbxk;->a()Lbxj;

    move-result-object v4

    goto/16 :goto_1a

    .line 294
    :cond_54
    add-int/lit8 v11, v11, 0x1

    const/16 v2, 0x14

    if-le v11, v2, :cond_55

    .line 295
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Too many follow-up requests: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    :cond_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lbws;->e:Lbyo;

    invoke-virtual {v4}, Lbxj;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbyo;->b(Ljava/net/URL;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lbws;->e:Lbyo;

    invoke-virtual {v2}, Lbyo;->e()V

    .line 302
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lbws;->e:Lbyo;

    invoke-virtual {v2}, Lbyo;->f()Lbwy;

    move-result-object v8

    .line 304
    new-instance v2, Lbyo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbws;->a:Lbxh;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lbyo;-><init>(Lbxh;Lbxj;ZZZLbwy;Lbyx;Lbxn;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lbws;->e:Lbyo;

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_17

    :cond_57
    move-wide v4, v2

    goto/16 :goto_c

    :cond_58
    move-wide v6, v2

    goto/16 :goto_b

    :cond_59
    move-object/from16 v4, p1

    goto/16 :goto_1

    .line 285
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbws;->c:Z

    .line 122
    iget-object v0, p0, Lbws;->e:Lbyo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbws;->e:Lbyo;

    iget-object v1, v0, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, v0, Lbyo;->h:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/http/Transport;->disconnect(Lbyo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    iget-boolean v0, p0, Lbws;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "canceled call"

    .line 190
    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lbws;->d:Lbxj;

    invoke-virtual {v2}, Lbxj;->a()Ljava/net/URL;

    move-result-object v2

    const-string v3, "/..."

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_1
    return-object v0

    .line 188
    :cond_0
    const-string v0, "call"

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    goto :goto_1
.end method
