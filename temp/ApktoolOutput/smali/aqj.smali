.class public abstract Laqj;
.super Lalb;
.source "AbstractProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lalb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Laul;

.field private final b:Laug;


# direct methods
.method protected constructor <init>(Laud;Laul;Laug;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<TT;>;",
            "Laul;",
            "Laug;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lalb;-><init>()V

    .line 38
    iput-object p2, p0, Laqj;->a:Laul;

    .line 39
    iput-object p3, p0, Laqj;->b:Laug;

    .line 40
    iget-object v0, p0, Laqj;->b:Laug;

    iget-object v1, p2, Lasd;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Laqj;->a:Laul;

    iget-object v2, v2, Lasd;->c:Ljava/lang/Object;

    iget-object v3, p0, Laqj;->a:Laul;

    iget-object v3, v3, Lasd;->b:Ljava/lang/String;

    iget-object v4, p0, Laqj;->a:Laul;

    invoke-virtual {v4}, Laul;->f()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Laug;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 45
    new-instance v0, Laqk;

    invoke-direct {v0, p0}, Laqk;-><init>(Laqj;)V

    invoke-interface {p1, v0, p2}, Laud;->a(Lask;Laue;)V

    .line 46
    return-void
.end method

.method static synthetic a(Laqj;Ljava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lalb;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqj;->b:Laug;

    iget-object v1, p0, Laqj;->a:Laul;

    iget-object v1, v1, Lasd;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Laqj;->a:Laul;

    iget-object v2, v2, Lasd;->b:Ljava/lang/String;

    iget-object v3, p0, Laqj;->a:Laul;

    invoke-virtual {v3}, Laul;->f()Z

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Laug;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;Z)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lalb;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    if-eqz p2, :cond_0

    .line 75
    iget-object v0, p0, Laqj;->b:Laug;

    iget-object v1, p0, Laqj;->a:Laul;

    iget-object v1, v1, Lasd;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Laqj;->a:Laul;

    iget-object v2, v2, Lasd;->b:Ljava/lang/String;

    iget-object v3, p0, Laqj;->a:Laul;

    invoke-virtual {v3}, Laul;->f()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Laug;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lalb;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-super {p0}, Lalb;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Laqj;->b:Laug;

    iget-object v1, p0, Laqj;->a:Laul;

    iget-object v1, v1, Lasd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laug;->b(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Laqj;->a:Laul;

    invoke-virtual {v0}, Laul;->i()V

    .line 106
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final declared-synchronized h()V
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Laqj;->g()Z

    move-result v0

    invoke-static {v0}, Ld;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
