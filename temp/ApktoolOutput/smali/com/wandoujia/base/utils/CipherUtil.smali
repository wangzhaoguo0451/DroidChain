.class public Lcom/wandoujia/base/utils/CipherUtil;
.super Ljava/lang/Object;
.source "CipherUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 94
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 95
    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 98
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 99
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 101
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 102
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 105
    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v2

    .line 106
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 107
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :goto_1
    return-void

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->close()V

    .line 112
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static decrypt([B[B)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 120
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 121
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 122
    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 125
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 126
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 127
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 128
    return-object v0

    .line 122
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 68
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 69
    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 72
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 73
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 75
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 76
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 79
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 80
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 81
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :goto_1
    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static encrypt(Ljava/lang/String;[B)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wandoujia/base/utils/CipherUtil;->encrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([B[B)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 55
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 56
    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 59
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 61
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 62
    return-object v0

    .line 56
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getAESKey(Landroid/content/Context;)[B
    .locals 1
    .parameter

    .prologue
    .line 23
    const-string v0, "cipher"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadLibrarySafety(Landroid/content/Context;Ljava/lang/String;)Z

    .line 24
    :try_start_0
    invoke-static {p0}, Lcom/wandoujia/base/utils/CipherUtil;->getAESKeyNative(Landroid/content/Context;)[B
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native getAESKeyNative(Landroid/content/Context;)[B
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-string v0, "cipher"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadLibrarySafety(Landroid/content/Context;Ljava/lang/String;)Z

    .line 44
    invoke-static {p0}, Lcom/wandoujia/base/utils/CipherUtil;->getAndroidIdNative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getAndroidIdNative(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static getAuthKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-string v0, "cipher"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadLibrarySafety(Landroid/content/Context;Ljava/lang/String;)Z

    .line 37
    invoke-static {p0}, Lcom/wandoujia/base/utils/CipherUtil;->getAuthKeyNative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getAuthKeyNative(Landroid/content/Context;)Ljava/lang/String;
.end method
