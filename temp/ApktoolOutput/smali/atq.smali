.class public final Latq;
.super Latn;
.source "LocalFileFetchProducer.java"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Larv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Latn;-><init>(Ljava/util/concurrent/Executor;Larv;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/imagepipeline/request/ImageRequest;)Laqx;
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Latq;->a(Ljava/lang/String;I)Laqx;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "LocalFileFetchProducer"

    return-object v0
.end method
