.class public final Lasy;
.super Ljava/lang/Object;
.source "EncodedMemoryCacheProducer.java"

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
.field final a:Lapm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapm",
            "<",
            "Laip;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lapa;

.field private final c:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Laqx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lapm;Lapa;Laud;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapm",
            "<",
            "Laip;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;",
            "Lapa;",
            "Laud",
            "<",
            "Laqx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lasy;->a:Lapm;

    .line 39
    iput-object p2, p0, Lasy;->b:Lapa;

    .line 40
    iput-object p3, p0, Lasy;->c:Laud;

    .line 41
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
    const/4 v0, 0x0

    .line 48
    invoke-interface {p2}, Laue;->b()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-interface {p2}, Laue;->c()Laug;

    move-result-object v2

    .line 50
    const-string v3, "EncodedMemoryCacheProducer"

    invoke-virtual {v2, v1, v3}, Laug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {p2}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v3

    .line 52
    iget-object v4, p0, Lasy;->b:Lapa;

    invoke-interface {v4, v3}, Lapa;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)Laip;

    move-result-object v3

    .line 54
    iget-object v4, p0, Lasy;->a:Lapm;

    invoke-interface {v4, v3}, Lapm;->a(Ljava/lang/Object;)Lakk;

    move-result-object v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    :try_start_0
    new-instance v3, Laqx;

    invoke-direct {v3, v4}, Laqx;-><init>(Lakk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    const-string v5, "EncodedMemoryCacheProducer"

    invoke-virtual {v2, v1}, Laug;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "cached_value_found"

    const-string v6, "true"

    invoke-static {v0, v6}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v1, v5, v0}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Lask;->b(F)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0}, Lask;->b(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    invoke-static {v3}, Laqx;->d(Laqx;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    invoke-static {v4}, Lakk;->c(Lakk;)V

    .line 128
    :goto_0
    return-void

    .line 67
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v3}, Laqx;->d(Laqx;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :catchall_1
    move-exception v0

    invoke-static {v4}, Lakk;->c(Lakk;)V

    throw v0

    .line 71
    :cond_1
    :try_start_4
    invoke-interface {p2}, Laue;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v5

    sget-object v6, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->ENCODED_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {v6}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 73
    const-string v3, "EncodedMemoryCacheProducer"

    invoke-virtual {v2, v1}, Laug;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v0, "cached_value_found"

    const-string v5, "false"

    invoke-static {v0, v5}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v1, v3, v0}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lask;->b(Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    invoke-static {v4}, Lakk;->c(Lakk;)V

    goto :goto_0

    .line 81
    :cond_3
    :try_start_5
    new-instance v5, Lasz;

    invoke-direct {v5, p0, p1, v3}, Lasz;-><init>(Lasy;Lask;Laip;)V

    .line 121
    const-string v3, "EncodedMemoryCacheProducer"

    invoke-virtual {v2, v1}, Laug;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v0, "cached_value_found"

    const-string v6, "false"

    invoke-static {v0, v6}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :cond_4
    invoke-virtual {v2, v1, v3, v0}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    iget-object v0, p0, Lasy;->c:Laud;

    invoke-interface {v0, v5, p2}, Laud;->a(Lask;Laue;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    invoke-static {v4}, Lakk;->c(Lakk;)V

    goto :goto_0
.end method
