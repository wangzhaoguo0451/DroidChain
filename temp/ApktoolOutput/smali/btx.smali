.class public final Lbtx;
.super Lbtv;
.source "StringBody.java"


# instance fields
.field private final b:[B

.field private final c:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p2}, Lbtv;-><init>(Ljava/lang/String;)V

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    if-nez p3, :cond_1

    .line 94
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 96
    :cond_1
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lbtx;->b:[B

    .line 97
    iput-object p3, p0, Lbtx;->c:Ljava/nio/charset/Charset;

    .line 98
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lbtx;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lbtx;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 138
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 140
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 141
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 144
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "8bit"

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lbtx;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method
