.class public final Latk;
.super Ljava/lang/Object;
.source "LocalExifThumbnailProducer.java"

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
.field final a:Larv;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Larv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Latk;->b:Ljava/util/concurrent/Executor;

    .line 50
    iput-object p2, p0, Latk;->a:Larv;

    .line 51
    return-void
.end method


# virtual methods
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
    .line 58
    invoke-interface {p2}, Laue;->c()Laug;

    move-result-object v3

    .line 59
    invoke-interface {p2}, Laue;->b()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-interface {p2}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v6

    .line 62
    new-instance v0, Latl;

    const-string v4, "LocalExifThumbnailProducer"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Latl;-><init>(Latk;Lask;Laug;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 92
    new-instance v1, Latm;

    invoke-direct {v1, v0}, Latm;-><init>(Laum;)V

    invoke-interface {p2, v1}, Laue;->a(Lauf;)V

    .line 99
    iget-object v1, p0, Latk;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method
