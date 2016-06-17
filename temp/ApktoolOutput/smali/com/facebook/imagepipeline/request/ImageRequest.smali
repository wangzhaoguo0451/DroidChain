.class public final Lcom/facebook/imagepipeline/request/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# instance fields
.field public final a:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

.field public final b:Landroid/net/Uri;

.field public final c:Laps;

.field public d:Lapu;

.field public final e:Lcom/facebook/imagepipeline/common/Priority;

.field public final f:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field public final g:Z

.field private h:Ljava/io/File;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    .line 74
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    .line 75
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    .line 77
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d:Laps;

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Laps;

    .line 82
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c:Lapu;

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    .line 83
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f:Lcom/facebook/imagepipeline/common/Priority;

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Lcom/facebook/imagepipeline/common/Priority;

    .line 86
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 87
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-static {v0}, Ld;->a(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 89
    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .parameter

    .prologue
    .line 66
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    iget v0, v0, Lapu;->a:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    iget v0, v0, Lapu;->b:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final declared-synchronized c()Ljava/io/File;
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Ljava/io/File;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Ljava/io/File;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
