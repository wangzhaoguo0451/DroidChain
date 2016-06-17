.class public final Lepm;
.super Ljava/lang/Object;
.source "AsyncSSLSocket.java"

# interfaces
.implements Lepq;


# static fields
.field private static a:Ljavax/net/ssl/SSLContext;


# instance fields
.field private b:Z

.field private c:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private d:Ljava/nio/ByteBuffer;

.field private e:Ljava/nio/ByteBuffer;

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/nio/ByteBuffer;

.field private final h:Lepq;

.field private final i:Ljavax/net/ssl/SSLEngine;

.field private final j:Ljava/lang/String;

.field private final k:Lepr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 41
    :try_start_1
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Lepm;->a:Ljavax/net/ssl/SSLContext;

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lepn;

    invoke-direct {v2}, Lepn;-><init>()V

    aput-object v2, v0, v1

    .line 56
    sget-object v1, Lepm;->a:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    :goto_0
    return-void

    .line 38
    :cond_0
    :try_start_2
    const-string v0, "Default"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Lepm;->a:Ljavax/net/ssl/SSLContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lepr;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lepm;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    iput-object v0, p0, Lepm;->i:Ljavax/net/ssl/SSLEngine;

    .line 78
    iget-object v0, p0, Lepm;->i:Ljavax/net/ssl/SSLEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 79
    iput-object p1, p0, Lepm;->k:Lepr;

    .line 80
    iput-object p2, p0, Lepm;->j:Ljava/lang/String;

    .line 82
    invoke-static {v2}, Lepm;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lepm;->d:Ljava/nio/ByteBuffer;

    .line 83
    invoke-static {v2}, Lepm;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    .line 84
    invoke-static {v2}, Lepm;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lepm;->f:Ljava/nio/ByteBuffer;

    .line 85
    const/high16 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lepm;->g:Ljava/nio/ByteBuffer;

    .line 87
    new-instance v0, Lepk;

    new-instance v1, Lepo;

    invoke-direct {v1, p0}, Lepo;-><init>(Lepm;)V

    invoke-direct {v0, v1}, Lepk;-><init>(Lepr;)V

    iput-object v0, p0, Lepm;->h:Lepq;

    .line 136
    return-void
.end method

.method private static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 218
    mul-int/lit8 v0, p0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 219
    if-nez v0, :cond_0

    .line 220
    const/16 v0, 0x2000

    .line 221
    :cond_0
    return v0
.end method

.method static synthetic a(Lepm;)V
    .locals 4
    .parameter

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lepm;->i:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    iget-object v0, p0, Lepm;->i:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lepm;->c:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0}, Lepm;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lepm;->k:Lepr;

    new-instance v2, Lcom/wandoujia/net/HttpException;

    sget-object v3, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0
.end method

.method static synthetic a(Lepm;Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 25
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lepm;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :try_start_0
    iget-object v0, p0, Lepm;->i:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lepm;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v1}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    sget-object v1, Lepp;->a:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lepm;->k:Lepr;

    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    const-string v3, "unwrapFail"

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lepm;->k:Lepr;

    new-instance v2, Lcom/wandoujia/net/HttpException;

    sget-object v3, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lepm;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lepm;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lepm;->g:Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lepm;->k:Lepr;

    iget-object v2, p0, Lepm;->g:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Lepr;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lepm;->d()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lepm;)Lepr;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lepm;->k:Lepr;

    return-object v0
.end method

.method static synthetic b(Lepm;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lepm;->d:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private c()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    :goto_0
    :pswitch_0
    iget-boolean v1, p0, Lepm;->b:Z

    if-nez v1, :cond_0

    .line 236
    sget-object v1, Lepp;->b:[I

    iget-object v4, p0, Lepm;->c:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ssl.invalidStatus"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :pswitch_1
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 243
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 244
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 251
    array-length v7, v6

    move v4, v3

    move-object v5, v0

    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v0, v6, v4

    .line 253
    :try_start_1
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 254
    iget-object v1, p0, Lepm;->i:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    .line 256
    const-string v8, "SSL"

    invoke-interface {v0, v1, v8}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 258
    iget-object v8, p0, Lepm;->j:Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-static {v9}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v1, v1, v10

    invoke-static {v1}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v9, v1}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 268
    :goto_2
    if-eqz v0, :cond_1

    .line 269
    iput-boolean v2, p0, Lepm;->b:Z

    .line 270
    iget-object v0, p0, Lepm;->k:Lepr;

    invoke-interface {v0}, Lepr;->a()V

    .line 329
    :cond_0
    :goto_3
    :pswitch_2
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    iget-object v1, p0, Lepm;->k:Lepr;

    new-instance v2, Lcom/wandoujia/net/HttpException;

    sget-object v3, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_3

    .line 264
    :catch_1
    move-exception v0

    .line 251
    :goto_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v5, v0

    goto :goto_1

    .line 272
    :cond_1
    iget-object v0, p0, Lepm;->k:Lepr;

    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v5}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_3

    .line 278
    :pswitch_3
    iget-object v1, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 279
    iget-object v1, p0, Lepm;->i:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lepm;->f:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v5}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 280
    iget-object v4, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 281
    sget-object v4, Lepp;->a:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 283
    :pswitch_4
    iget-object v1, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Lepm;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 288
    :pswitch_5
    iget-object v0, p0, Lepm;->k:Lepr;

    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    const-string v3, "wrapFailed"

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_3

    .line 291
    :pswitch_6
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lepm;->c:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 292
    iget-object v0, p0, Lepm;->h:Lepq;

    iget-object v1, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lepq;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_3

    .line 298
    :pswitch_7
    iget-object v1, p0, Lepm;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-nez v1, :cond_2

    .line 300
    iget-object v0, p0, Lepm;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_3

    .line 303
    :cond_2
    iget-object v1, p0, Lepm;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 304
    iget-object v1, p0, Lepm;->i:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lepm;->d:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lepm;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v5}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 305
    iget-object v4, p0, Lepm;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 306
    sget-object v4, Lepp;->a:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 321
    :goto_5
    :pswitch_8
    invoke-direct {p0}, Lepm;->d()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lepm;->c:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto/16 :goto_0

    .line 308
    :pswitch_9
    iget-object v1, p0, Lepm;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Lepm;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lepm;->g:Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 313
    :pswitch_a
    iget-object v0, p0, Lepm;->k:Lepr;

    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    const-string v3, "unwrapFailed"

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto/16 :goto_3

    .line 316
    :pswitch_b
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lepm;->c:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto/16 :goto_0

    .line 262
    :catch_2
    move-exception v0

    goto/16 :goto_4

    :cond_3
    move v0, v3

    goto/16 :goto_2

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 281
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 306
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_b
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic c(Lepm;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lepm;->b:Z

    return v0
.end method

.method static synthetic d(Lepm;)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lepm;->f:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private d()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    .prologue
    .line 333
    :goto_0
    iget-object v0, p0, Lepm;->i:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lepm;->i:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lepm;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lepm;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lepm;->h:Lepq;

    invoke-interface {v0}, Lepq;->a()V

    .line 174
    return-void
.end method

.method public final a(Ljava/net/InetSocketAddress;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lepm;->h:Lepq;

    invoke-interface {v0, p1}, Lepq;->a(Ljava/net/InetSocketAddress;)V

    .line 141
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lepm;->f:Ljava/nio/ByteBuffer;

    .line 146
    iget-object v0, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 149
    :try_start_0
    iget-object v0, p0, Lepm;->i:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    iget-object v1, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 155
    iget-object v1, p0, Lepm;->h:Lepq;

    iget-object v2, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Lepq;->a(Ljava/nio/ByteBuffer;)V

    .line 156
    sget-object v1, Lepp;->a:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 166
    iget-object v0, p0, Lepm;->k:Lepr;

    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    const-string v3, "wrapFail"

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    iget-object v1, p0, Lepm;->k:Lepr;

    new-instance v2, Lcom/wandoujia/net/HttpException;

    sget-object v3, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0

    .line 158
    :pswitch_0
    iget-object v0, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lepm;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lepm;->e:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 161
    :pswitch_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    .line 162
    invoke-direct {p0}, Lepm;->d()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lepm;->h:Lepq;

    invoke-interface {v0}, Lepq;->b()Z

    move-result v0

    return v0
.end method
