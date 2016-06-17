.class public final Lakw;
.super Ljava/lang/Object;
.source "SecureHashUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 46
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 48
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 49
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
