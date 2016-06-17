.class public final Larc;
.super Ljava/lang/Object;
.source "BitmapCounter.java"


# instance fields
.field private a:I

.field private b:J

.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {v0}, Ld;->a(Z)V

    .line 34
    if-lez p1, :cond_0

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 35
    iput p1, p0, Larc;->c:I

    .line 37
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-static {p0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/graphics/Bitmap;)Z
    .locals 6
    .parameter

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Larc;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 48
    iget v1, p0, Larc;->a:I

    const/16 v2, 0x180

    if-ge v1, v2, :cond_0

    iget-wide v2, p0, Larc;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget v1, p0, Larc;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    monitor-exit p0

    return v0

    .line 52
    :cond_1
    :try_start_1
    iget v1, p0, Larc;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Larc;->a:I

    .line 53
    iget-wide v2, p0, Larc;->b:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Larc;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Larc;->c(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 64
    int-to-long v4, v3

    iget-wide v6, p0, Larc;->b:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Ld;->a(Z)V

    .line 65
    iget v2, p0, Larc;->a:I

    if-lez v2, :cond_1

    :goto_1
    invoke-static {v0}, Ld;->a(Z)V

    .line 67
    iget-wide v0, p0, Larc;->b:J

    int-to-long v2, v3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Larc;->b:J

    .line 68
    iget v0, p0, Larc;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Larc;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :cond_0
    move v2, v1

    .line 64
    goto :goto_0

    :cond_1
    move v0, v1

    .line 65
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
