.class public final Lcom/squareup/wire/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# static fields
.field public static final EMPTY:Lcom/squareup/wire/ByteString;


# instance fields
.field private final data:[B

.field private transient hashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/squareup/wire/ByteString;->of([B)Lcom/squareup/wire/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/ByteString;->EMPTY:Lcom/squareup/wire/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/squareup/wire/ByteString;->data:[B

    .line 81
    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/squareup/wire/ByteString;
    .locals 2
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/squareup/wire/ByteString;

    invoke-static {p0}, Lcay;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static varargs of([B)Lcom/squareup/wire/ByteString;
    .locals 2
    .parameter

    .prologue
    .line 42
    new-instance v1, Lcom/squareup/wire/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/squareup/wire/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static of([BII)Lcom/squareup/wire/ByteString;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    new-array v0, p2, [B

    .line 51
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    new-instance v1, Lcom/squareup/wire/ByteString;

    invoke-direct {v1, v0}, Lcom/squareup/wire/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static read(Ljava/io/InputStream;I)Lcom/squareup/wire/ByteString;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 70
    new-array v1, p1, [B

    .line 71
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 72
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 73
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    add-int/2addr v0, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Lcom/squareup/wire/ByteString;

    invoke-direct {v0, v1}, Lcom/squareup/wire/ByteString;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final byteAt(I)B
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 113
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/squareup/wire/ByteString;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/squareup/wire/ByteString;

    iget-object v0, p1, Lcom/squareup/wire/ByteString;->data:[B

    iget-object v1, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/squareup/wire/ByteString;->hashCode:I

    .line 120
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/squareup/wire/ByteString;->hashCode:I

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public final toByteArray()[B
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-static {v0}, Lcay;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 104
    return-void
.end method

.method public final write(Ljava/io/OutputStream;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 109
    return-void
.end method
