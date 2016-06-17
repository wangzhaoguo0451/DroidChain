.class public final Laks;
.super Ljava/io/FilterInputStream;
.source "TailAppendingInputStream.java"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30
    :cond_0
    if-nez p2, :cond_1

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33
    :cond_1
    iput-object p2, p0, Laks;->a:[B

    .line 34
    return-void
.end method

.method private a()I
    .locals 3

    .prologue
    .line 92
    iget v0, p0, Laks;->b:I

    iget-object v1, p0, Laks;->a:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 93
    const/4 v0, -0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laks;->a:[B

    iget v1, p0, Laks;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Laks;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method


# virtual methods
.method public final mark(I)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Laks;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 87
    iget v0, p0, Laks;->b:I

    iput v0, p0, Laks;->c:I

    .line 89
    :cond_0
    return-void
.end method

.method public final read()I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Laks;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 39
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Laks;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Laks;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 52
    iget-object v0, p0, Laks;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 53
    if-eq v0, v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    if-nez p3, :cond_2

    move v0, v1

    .line 58
    goto :goto_0

    :cond_2
    move v0, v1

    .line 62
    :goto_1
    if-ge v0, p3, :cond_3

    .line 63
    invoke-direct {p0}, Laks;->a()I

    move-result v1

    .line 64
    if-eq v1, v2, :cond_3

    .line 65
    add-int v3, p2, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Laks;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Laks;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 77
    iget v0, p0, Laks;->c:I

    iput v0, p0, Laks;->b:I

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
