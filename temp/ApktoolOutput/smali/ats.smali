.class public final Lats;
.super Ljava/lang/Object;
.source "LocalVideoThumbnailProducer.java"

# interfaces
.implements Laud;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laud",
        "<",
        "Lakk",
        "<",
        "Laqv;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lats;->a:Ljava/util/concurrent/Executor;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lask;Laue;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-interface {p2}, Laue;->c()Laug;

    move-result-object v2

    .line 52
    invoke-interface {p2}, Laue;->b()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-interface {p2}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v5

    .line 54
    new-instance v0, Latt;

    const-string v3, "VideoThumbnailProducer"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Latt;-><init>(Lask;Laug;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 93
    new-instance v1, Latv;

    invoke-direct {v1, v0}, Latv;-><init>(Laum;)V

    invoke-interface {p2, v1}, Laue;->a(Lauf;)V

    .line 100
    iget-object v1, p0, Lats;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method
