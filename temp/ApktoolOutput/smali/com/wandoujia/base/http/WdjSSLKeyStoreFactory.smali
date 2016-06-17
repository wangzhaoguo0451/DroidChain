.class public Lcom/wandoujia/base/http/WdjSSLKeyStoreFactory;
.super Ljava/lang/Object;
.source "WdjSSLKeyStoreFactory.java"


# static fields
.field private static final SSL_KEYSTORE_PASSWORD:Ljava/lang/String; = "aiEQx4NmaaJ9or"

.field private static volatile keyStore:Ljava/security/KeyStore;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyStore()Ljava/security/KeyStore;
    .locals 4

    .prologue
    .line 31
    sget-object v0, Lcom/wandoujia/base/http/WdjSSLKeyStoreFactory;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/wandoujia/base/http/WdjSSLKeyStoreFactory;->keyStore:Ljava/security/KeyStore;

    .line 57
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-class v2, Lcom/wandoujia/base/http/WdjSSLKeyStoreFactory;

    monitor-enter v2

    .line 35
    :try_start_0
    sget-object v0, Lcom/wandoujia/base/http/WdjSSLKeyStoreFactory;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lcom/wandoujia/base/http/WdjSSLKeyStoreFactory;->keyStore:Ljava/security/KeyStore;

    monitor-exit v2

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 41
    :try_start_1
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/base/http/WdjSSLKeyStoreFactory;->keyStore:Ljava/security/KeyStore;

    .line 42
    const-class v0, Lcom/wandoujia/base/http/WdjSSLKeyStoreFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "res/raw/wdjssl.bks"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 46
    sget-object v0, Lcom/wandoujia/base/http/WdjSSLKeyStoreFactory;->keyStore:Ljava/security/KeyStore;

    const-string v3, "aiEQx4NmaaJ9or"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    if-eqz v1, :cond_2

    .line 51
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    :cond_2
    :goto_1
    :try_start_3
    sget-object v0, Lcom/wandoujia/base/http/WdjSSLKeyStoreFactory;->keyStore:Ljava/security/KeyStore;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 49
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    .line 51
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 53
    :cond_3
    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method
