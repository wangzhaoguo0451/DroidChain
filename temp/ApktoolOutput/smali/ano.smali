.class public final Lano;
.super Ljava/lang/Object;
.source "AnimatedImageResult.java"


# instance fields
.field public final a:Lanm;

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

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lanp;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v0, p1, Lanp;->a:Lanm;

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanm;

    iput-object v0, p0, Lano;->a:Lanm;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lano;->b:I

    .line 35
    iget-object v0, p1, Lanp;->b:Lakk;

    invoke-static {v0}, Lakk;->b(Lakk;)Lakk;

    move-result-object v0

    iput-object v0, p0, Lano;->c:Lakk;

    .line 36
    iget-object v0, p1, Lanp;->c:Ljava/util/List;

    invoke-static {v0}, Lakk;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lano;->d:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lakk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lano;->c:Lakk;

    invoke-static {v0}, Lakk;->b(Lakk;)Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)Lakk;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lano;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lano;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;

    invoke-static {v0}, Lakk;->b(Lakk;)Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 95
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lano;->c:Lakk;

    invoke-static {v0}, Lakk;->c(Lakk;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lano;->c:Lakk;

    .line 126
    iget-object v0, p0, Lano;->d:Ljava/util/List;

    invoke-static {v0}, Lakk;->a(Ljava/lang/Iterable;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lano;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lano;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lano;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

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
