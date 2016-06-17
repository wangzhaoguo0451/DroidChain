.class public Lasg;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheProducer.java"

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
.field final a:Lapm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapm",
            "<",
            "Laip;",
            "Laqv;",
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
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
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
            "Laqv;",
            ">;",
            "Lapa;",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lasg;->a:Lapm;

    .line 39
    iput-object p2, p0, Lasg;->b:Lapa;

    .line 40
    iput-object p3, p0, Lasg;->c:Laud;

    .line 41
    return-void
.end method


# virtual methods
.method protected a(Lask;Laip;)Lask;
    .locals 1
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
            "Laip;",
            ")",
            "Lask",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lash;

    invoke-direct {v0, p0, p1, p2}, Lash;-><init>(Lasg;Lask;Laip;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "BitmapMemoryCacheProducer"

    return-object v0
.end method

.method public final a(Lask;Laue;)V
    .locals 9
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
    const/4 v1, 0x0

    .line 48
    invoke-interface {p2}, Laue;->c()Laug;

    move-result-object v2

    .line 49
    invoke-interface {p2}, Laue;->b()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {p0}, Lasg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Laug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {p2}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 52
    iget-object v4, p0, Lasg;->b:Lapa;

    invoke-interface {v4, v0}, Lapa;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Laip;

    move-result-object v4

    .line 54
    iget-object v0, p0, Lasg;->a:Lapm;

    invoke-interface {v0, v4}, Lapm;->a(Ljava/lang/Object;)Lakk;

    move-result-object v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    invoke-virtual {v5}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqv;

    invoke-virtual {v0}, Laqv;->g()Lara;

    move-result-object v0

    invoke-interface {v0}, Lara;->c()Z

    move-result v6

    .line 58
    if-eqz v6, :cond_0

    .line 59
    invoke-virtual {p0}, Lasg;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3}, Laug;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cached_value_found"

    const-string v8, "true"

    invoke-static {v0, v8}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v7, v0}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Lask;->b(F)V

    .line 65
    :cond_0
    invoke-virtual {p1, v5, v6}, Lask;->b(Ljava/lang/Object;Z)V

    .line 66
    invoke-virtual {v5}, Lakk;->close()V

    .line 67
    if-eqz v6, :cond_2

    .line 88
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 59
    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {p2}, Laue;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    sget-object v5, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v5

    if-lt v0, v5, :cond_4

    .line 74
    invoke-virtual {p0}, Lasg;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Laug;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "cached_value_found"

    const-string v5, "false"

    invoke-static {v0, v5}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v3, v4, v0}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lask;->b(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 74
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {p0, p1, v4}, Lasg;->a(Lask;Laip;)Lask;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lasg;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Laug;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v1, "cached_value_found"

    const-string v5, "false"

    invoke-static {v1, v5}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    :cond_5
    invoke-virtual {v2, v3, v4, v1}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    iget-object v1, p0, Lasg;->c:Laud;

    invoke-interface {v1, v0, p2}, Laud;->a(Lask;Laue;)V

    goto :goto_1
.end method
