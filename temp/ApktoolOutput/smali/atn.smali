.class public abstract Latn;
.super Ljava/lang/Object;
.source "LocalFetchProducer.java"

# interfaces
.implements Laud;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laud",
        "<",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Larv;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Larv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Latn;->a:Ljava/util/concurrent/Executor;

    .line 36
    iput-object p2, p0, Latn;->b:Larv;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/facebook/imagepipeline/request/ImageRequest;)Laqx;
.end method

.method protected final a(Ljava/io/InputStream;I)Laqx;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    if-gez p2, :cond_0

    .line 87
    :try_start_0
    iget-object v0, p0, Latn;->b:Larv;

    invoke-virtual {v0, p1}, Larv;->a(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lakk;->a(Ljava/io/Closeable;)Lakk;

    move-result-object v1

    .line 91
    :goto_0
    new-instance v0, Laqx;

    invoke-direct {v0, v1}, Laqx;-><init>(Lakk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {p1}, Lajy;->a(Ljava/io/InputStream;)V

    .line 94
    invoke-static {v1}, Lakk;->c(Lakk;)V

    return-object v0

    .line 89
    :cond_0
    :try_start_1
    iget-object v0, p0, Latn;->b:Larv;

    invoke-virtual {v0, p1, p2}, Larv;->a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lakk;->a(Ljava/io/Closeable;)Lakk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lajy;->a(Ljava/io/InputStream;)V

    .line 94
    invoke-static {v1}, Lakk;->c(Lakk;)V

    throw v0
.end method

.method protected final a(Ljava/lang/String;I)Laqx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v0, p2}, Latn;->a(Ljava/io/InputStream;I)Laqx;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Lask;Laue;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Laqx;",
            ">;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-interface {p2}, Laue;->c()Laug;

    move-result-object v3

    .line 45
    invoke-interface {p2}, Laue;->b()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-interface {p2}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v6

    .line 47
    new-instance v0, Lato;

    invoke-virtual {p0}, Latn;->a()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lato;-><init>(Latn;Lask;Laug;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 70
    new-instance v1, Latp;

    invoke-direct {v1, v0}, Latp;-><init>(Laum;)V

    invoke-interface {p2, v1}, Laue;->a(Lauf;)V

    .line 77
    iget-object v1, p0, Latn;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method
