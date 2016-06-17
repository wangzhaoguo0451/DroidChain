.class public Lcom/twmacinta/util/MD5State;
.super Ljava/lang/Object;
.source "MD5State.java"


# instance fields
.field buffer:[B

.field count:J

.field state:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/twmacinta/util/MD5State;->buffer:[B

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twmacinta/util/MD5State;->count:J

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/twmacinta/util/MD5State;->state:[I

    .line 54
    iget-object v0, p0, Lcom/twmacinta/util/MD5State;->state:[I

    const/4 v1, 0x0

    const v2, 0x67452301

    aput v2, v0, v1

    .line 55
    iget-object v0, p0, Lcom/twmacinta/util/MD5State;->state:[I

    const/4 v1, 0x1

    const v2, -0x10325477

    aput v2, v0, v1

    .line 56
    iget-object v0, p0, Lcom/twmacinta/util/MD5State;->state:[I

    const/4 v1, 0x2

    const v2, -0x67452302

    aput v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/twmacinta/util/MD5State;->state:[I

    const/4 v1, 0x3

    const v2, 0x10325476

    aput v2, v0, v1

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/twmacinta/util/MD5State;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/twmacinta/util/MD5State;-><init>()V

    move v0, v1

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/twmacinta/util/MD5State;->buffer:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/twmacinta/util/MD5State;->buffer:[B

    iget-object v3, p1, Lcom/twmacinta/util/MD5State;->buffer:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/twmacinta/util/MD5State;->state:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/twmacinta/util/MD5State;->state:[I

    iget-object v2, p1, Lcom/twmacinta/util/MD5State;->state:[I

    aget v2, v2, v1

    aput v2, v0, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_1
    iget-wide v0, p1, Lcom/twmacinta/util/MD5State;->count:J

    iput-wide v0, p0, Lcom/twmacinta/util/MD5State;->count:J

    .line 74
    return-void
.end method
