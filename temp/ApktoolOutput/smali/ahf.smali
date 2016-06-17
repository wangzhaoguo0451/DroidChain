.class public final Lahf;
.super Ljava/io/FilterInputStream;
.source "DiskBasedCache.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 475
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lahf;->a:I

    .line 476
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 2

    .prologue
    .line 480
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 481
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 482
    iget v1, p0, Lahf;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lahf;->a:I

    .line 484
    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 489
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 490
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 491
    iget v1, p0, Lahf;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lahf;->a:I

    .line 493
    :cond_0
    return v0
.end method
