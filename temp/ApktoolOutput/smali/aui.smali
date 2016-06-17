.class final Laui;
.super Lass;
.source "ResizeAndRotateProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lass",
        "<",
        "Laqx;",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Laue;

.field b:Z

.field final c:Lcom/facebook/imagepipeline/producers/JobScheduler;

.field final synthetic e:Lauh;


# direct methods
.method public constructor <init>(Lauh;Lask;Laue;)V
    .locals 4
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
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Laui;->e:Lauh;

    .line 82
    invoke-direct {p0, p2}, Lass;-><init>(Lask;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Laui;->b:Z

    .line 84
    iput-object p3, p0, Laui;->a:Laue;

    .line 86
    new-instance v0, Lauj;

    invoke-direct {v0, p0}, Lauj;-><init>(Laui;)V

    .line 92
    new-instance v1, Lcom/facebook/imagepipeline/producers/JobScheduler;

    iget-object v2, p1, Lauh;->a:Ljava/util/concurrent/Executor;

    const/16 v3, 0x64

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lath;I)V

    iput-object v1, p0, Laui;->c:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 94
    iget-object v0, p0, Laui;->a:Laue;

    new-instance v1, Lauk;

    invoke-direct {v1, p0, p2}, Lauk;-><init>(Laui;Lask;)V

    invoke-interface {v0, v1}, Laue;->a(Lauf;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 72
    check-cast p1, Laqx;

    iget-boolean v2, p0, Laui;->b:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lass;->d:Lask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lask;->b(Ljava/lang/Object;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Laui;->a:Laue;

    invoke-interface {v2}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    if-eqz p1, :cond_2

    iget-object v3, p1, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;

    sget-object v4, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-ne v3, v4, :cond_4

    :cond_2
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    :goto_1
    if-nez p2, :cond_3

    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-eq v0, v1, :cond_0

    :cond_3
    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1, p2}, Lask;->b(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p1, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;

    sget-object v4, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-eq v3, v4, :cond_5

    sget-object v0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    goto :goto_1

    :cond_5
    invoke-static {v2, p1}, Lauh;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Laqx;)I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_6

    move v2, v0

    :goto_2
    if-eqz v2, :cond_7

    :goto_3
    invoke-static {v0}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object v0

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Laui;->c:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a(Laqx;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_9

    iget-object v0, p0, Laui;->a:Laue;

    invoke-interface {v0}, Laue;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    iget-object v0, p0, Laui;->c:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b()Z

    goto :goto_0
.end method
