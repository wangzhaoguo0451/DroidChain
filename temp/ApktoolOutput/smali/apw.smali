.class public final Lapw;
.super Ljava/lang/Object;
.source "ImagePipeline.java"


# static fields
.field private static final a:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final b:Laqi;

.field private final c:Laug;

.field private final d:Lakd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakd",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lapw;->a:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>(Laqi;Ljava/util/Set;Lakd;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqi;",
            "Ljava/util/Set",
            "<",
            "Laug;",
            ">;",
            "Lakd",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lapw;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 78
    iput-object p1, p0, Lapw;->b:Laqi;

    .line 79
    new-instance v0, Laug;

    invoke-direct {v0, p2}, Laug;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lapw;->c:Laug;

    .line 80
    iput-object p3, p0, Lapw;->d:Lakd;

    .line 81
    return-void
.end method

.method private a(Laud;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lalb;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lalb",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    :try_start_0
    iget-object v0, p2, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-static {v0, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    .line 393
    new-instance v0, Laul;

    invoke-direct {p0}, Lapw;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lapw;->c:Laug;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Laul;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Laug;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    .line 402
    iget-object v2, p0, Lapw;->c:Laug;

    new-instance v1, Laqn;

    invoke-direct {v1, p1, v0, v2}, Laqn;-><init>(Laud;Laul;Laug;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 406
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->c(Ljava/lang/Throwable;)Lalb;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Laud;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lalb;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Laud",
            "<",
            "Lakk",
            "<TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            ")",
            "Lalb",
            "<",
            "Lakk",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 360
    :try_start_0
    iget-object v0, p2, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-static {v0, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    .line 364
    new-instance v0, Laul;

    invoke-direct {p0}, Lapw;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lapw;->c:Laug;

    const/4 v6, 0x0

    iget-object v1, p2, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    invoke-static {v1}, Ld;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v7, 0x1

    :cond_0
    iget-object v8, p2, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Lcom/facebook/imagepipeline/common/Priority;

    move-object v1, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Laul;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Laug;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    .line 374
    iget-object v2, p0, Lapw;->c:Laug;

    new-instance v1, Laqm;

    invoke-direct {v1, p1, v0, v2}, Laqm;-><init>(Laud;Laul;Laug;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 378
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->c(Ljava/lang/Throwable;)Lalb;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lapw;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lalb;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lalb",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lapw;->d:Lakd;

    invoke-interface {v0}, Lakd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    sget-object v0, Lapw;->a:Ljava/util/concurrent/CancellationException;

    invoke-static {v0}, Ld;->c(Ljava/lang/Throwable;)Lalb;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 224
    :cond_0
    :try_start_0
    iget-object v0, p0, Lapw;->b:Laqi;

    invoke-virtual {v0, p1}, Laqi;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Laud;

    move-result-object v1

    invoke-virtual {v0, v1}, Laqi;->a(Laud;)Laud;

    move-result-object v0

    .line 226
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-direct {p0, v0, p1, v1}, Lapw;->a(Laud;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lalb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->c(Ljava/lang/Throwable;)Lalb;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lalb;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lalb",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lapw;->b:Laqi;

    invoke-virtual {v0, p1}, Laqi;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Laud;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-direct {p0, v0, p1, v1, p2}, Lapw;->a(Laud;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lalb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->c(Ljava/lang/Throwable;)Lalb;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lalb;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lalb",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lapw;->b:Laqi;

    invoke-virtual {v0, p1}, Laqi;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Laud;

    move-result-object v0

    .line 163
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-direct {p0, v0, p1, v1, p2}, Lapw;->a(Laud;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lalb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->c(Ljava/lang/Throwable;)Lalb;

    move-result-object v0

    goto :goto_0
.end method
