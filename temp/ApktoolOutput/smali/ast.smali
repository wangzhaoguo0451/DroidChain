.class public final Last;
.super Ljava/lang/Object;
.source "DiskCacheProducer.java"

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
.field private final a:Laox;

.field private final b:Laox;

.field private final c:Lapa;

.field private final d:Laud;
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
.method public constructor <init>(Laox;Laox;Lapa;Laud;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laox;",
            "Laox;",
            "Lapa;",
            "Laud",
            "<",
            "Laqx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Last;->a:Laox;

    .line 54
    iput-object p2, p0, Last;->b:Laox;

    .line 55
    iput-object p3, p0, Last;->c:Lapa;

    .line 56
    iput-object p4, p0, Last;->d:Laud;

    .line 57
    return-void
.end method

.method static a(Laug;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laug;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Laug;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cached_value_found"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a(Lask;Lask;Laue;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Laqx;",
            ">;",
            "Lask",
            "<",
            "Laqx;",
            ">;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-interface {p3}, Laue;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lask;->b(Ljava/lang/Object;Z)V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Last;->d:Laud;

    invoke-interface {v0, p2, p3}, Laud;->a(Lask;Laue;)V

    goto :goto_0
.end method

.method public final a(Lask;Laue;)V
    .locals 8
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
    .line 62
    invoke-interface {p2}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 63
    iget-boolean v1, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0, p1, p1, p2}, Last;->a(Lask;Lask;Laue;)V

    .line 121
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-interface {p2}, Laue;->c()Laug;

    move-result-object v2

    .line 69
    invoke-interface {p2}, Laue;->b()Ljava/lang/String;

    move-result-object v3

    .line 70
    const-string v1, "DiskCacheProducer"

    invoke-virtual {v2, v3, v1}, Laug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Last;->c:Lapa;

    invoke-interface {v1, v0}, Lapa;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)Laip;

    move-result-object v6

    .line 73
    iget-object v0, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    if-ne v0, v1, :cond_1

    iget-object v5, p0, Last;->b:Laox;

    .line 77
    :goto_1
    new-instance v0, Lasu;

    move-object v1, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lasu;-><init>(Last;Laug;Ljava/lang/String;Lask;Laox;Laip;Laue;)V

    .line 116
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 117
    invoke-virtual {v5, v6, v1}, Laox;->a(Laip;Ljava/util/concurrent/atomic/AtomicBoolean;)Lwd;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v0}, Lwd;->a(Lwc;)Lwd;

    .line 120
    new-instance v0, Lasv;

    invoke-direct {v0, v1}, Lasv;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Laue;->a(Lauf;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v5, p0, Last;->a:Laox;

    goto :goto_1
.end method
