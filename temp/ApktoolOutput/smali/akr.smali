.class public final Lakr;
.super Ljava/io/FilterInputStream;
.source "LimitedInputStream.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28
    :cond_0
    if-gez p2, :cond_1

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    iput p2, p0, Lakr;->a:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lakr;->b:I

    .line 33
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lakr;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lakr;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final mark(I)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lakr;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lakr;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 81
    iget v0, p0, Lakr;->a:I

    iput v0, p0, Lakr;->b:I

    .line 83
    :cond_0
    return-void
.end method

.method public final read()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 37
    iget v1, p0, Lakr;->a:I

    if-nez v1, :cond_0

    .line 46
    :goto_0
    return v0

    .line 41
    :cond_0
    iget-object v1, p0, Lakr;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 42
    if-eq v1, v0, :cond_1

    .line 43
    iget v0, p0, Lakr;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lakr;->a:I

    :cond_1
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public final read([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lakr;->a:I

    if-nez v0, :cond_1

    .line 52
    const/4 v0, -0x1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    iget v0, p0, Lakr;->a:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 56
    iget-object v1, p0, Lakr;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 57
    if-lez v0, :cond_0

    .line 58
    iget v1, p0, Lakr;->a:I

    sub-int/2addr v1, v0

    iput v1, p0, Lakr;->a:I

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lakr;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget v0, p0, Lakr;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 92
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    iget-object v0, p0, Lakr;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 96
    iget v0, p0, Lakr;->b:I

    iput v0, p0, Lakr;->a:I

    .line 97
    return-void
.end method

.method public final skip(J)J
    .locals 5
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lakr;->a:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 67
    iget-object v2, p0, Lakr;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 68
    iget v2, p0, Lakr;->a:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lakr;->a:I

    .line 69
    return-wide v0
.end method
