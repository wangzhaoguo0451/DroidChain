.class public final Laqw;
.super Laqu;
.source "CloseableStaticBitmap.java"


# instance fields
.field public volatile a:Landroid/graphics/Bitmap;

.field public final b:I

.field private c:Lakk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lara;


# direct methods
.method public constructor <init>(Lakk;Lara;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lara;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Laqu;-><init>()V

    .line 67
    invoke-virtual {p1}, Lakk;->c()Lakk;

    move-result-object v0

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;

    iput-object v0, p0, Laqw;->c:Lakk;

    .line 68
    iget-object v0, p0, Laqw;->c:Lakk;

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Laqw;->a:Landroid/graphics/Bitmap;

    .line 69
    iput-object p2, p0, Laqw;->d:Lara;

    .line 70
    iput p3, p0, Laqw;->b:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lakn;Lara;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lakn",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lara;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Laqu;-><init>()V

    .line 49
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Laqw;->a:Landroid/graphics/Bitmap;

    .line 50
    iget-object v1, p0, Laqw;->a:Landroid/graphics/Bitmap;

    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakn;

    invoke-static {v1, v0}, Lakk;->a(Ljava/lang/Object;Lakn;)Lakk;

    move-result-object v0

    iput-object v0, p0, Laqw;->c:Lakk;

    .line 53
    iput-object p3, p0, Laqw;->d:Lara;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Laqw;->b:I

    .line 55
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Laqw;->a:Landroid/graphics/Bitmap;

    .line 122
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Laqw;->a:Landroid/graphics/Bitmap;

    .line 131
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqw;->c:Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Laqw;->c:Lakk;

    if-nez v0, :cond_0

    .line 81
    monitor-exit p0

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Laqw;->c:Lakk;

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Laqw;->c:Lakk;

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Laqw;->a:Landroid/graphics/Bitmap;

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Lakk;->close()V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Laqw;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Ld;->b(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public final f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Laqw;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final g()Lara;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Laqw;->d:Lara;

    return-object v0
.end method
