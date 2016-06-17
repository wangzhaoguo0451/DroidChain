.class public final Lasf;
.super Latw;
.source "BitmapMemoryCacheKeyMultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Latw",
        "<",
        "Landroid/util/Pair",
        "<",
        "Laip;",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        ">;",
        "Lakk",
        "<",
        "Laqv;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final b:Lapa;


# direct methods
.method public constructor <init>(Lapa;Laud;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p2}, Latw;-><init>(Laud;)V

    .line 33
    iput-object p1, p0, Lasf;->b:Lapa;

    .line 34
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 1
    .parameter

    .prologue
    .line 23
    check-cast p1, Lakk;

    invoke-static {p1}, Lakk;->b(Lakk;)Lakk;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Laue;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lasf;->b:Lapa;

    invoke-interface {p1}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lapa;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Laip;

    move-result-object v0

    invoke-interface {p1}, Laue;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
