.class public Lcom/wandoujia/base/http/WdjSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "WdjSSLSocketFactory.java"


# static fields
.field private static volatile defaultInstance:Lorg/apache/http/conn/ssl/SSLSocketFactory;


# instance fields
.field private sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/wandoujia/base/http/WdjSSLSocketFactory;->defaultInstance:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 23
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/base/http/WdjSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 37
    new-instance v0, Lcom/wandoujia/base/http/WdjTrustManager;

    invoke-direct {v0, p1}, Lcom/wandoujia/base/http/WdjTrustManager;-><init>(Ljava/security/KeyStore;)V

    .line 38
    iget-object v1, p0, Lcom/wandoujia/base/http/WdjSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 39
    return-void
.end method

.method public static getSSLSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 69
    sget-object v0, Lcom/wandoujia/base/http/WdjSSLSocketFactory;->defaultInstance:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/wandoujia/base/http/WdjSSLSocketFactory;->defaultInstance:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 97
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const-class v2, Lcom/wandoujia/base/http/WdjSSLSocketFactory;

    monitor-enter v2

    .line 73
    :try_start_0
    sget-object v0, Lcom/wandoujia/base/http/WdjSSLSocketFactory;->defaultInstance:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/wandoujia/base/http/WdjSSLSocketFactory;->defaultInstance:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    monitor-exit v2

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 78
    :cond_1
    :try_start_1
    new-instance v0, Lcom/wandoujia/base/http/WdjSSLSocketFactory;

    invoke-static {}, Lcom/wandoujia/base/http/WdjSSLKeyStoreFactory;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/wandoujia/base/http/WdjSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :try_start_2
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 81
    sput-object v0, Lcom/wandoujia/base/http/WdjSSLSocketFactory;->defaultInstance:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    :goto_1
    if-nez v0, :cond_2

    .line 90
    :try_start_3
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 91
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 92
    new-instance v0, Lcom/wandoujia/base/http/EasySSLSocketFactory;

    invoke-direct {v0, v1}, Lcom/wandoujia/base/http/EasySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 93
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 97
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/base/http/WdjSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/base/http/WdjSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
