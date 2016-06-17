.class public Lcom/facebook/imagepipeline/gif/GifFrame;
.super Ljava/lang/Object;
.source "GifFrame.java"

# interfaces
.implements Lann;


# instance fields
.field private mNativeContext:J
    .annotation build Laka;
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .locals 1
    .parameter
    .annotation build Laka;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/facebook/imagepipeline/gif/GifFrame;->mNativeContext:J

    .line 38
    return-void
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetDurationMs()I
.end method

.method private native nativeHasTransparency()Z
.end method

.method private native nativeRenderFrame(IILandroid/graphics/Bitmap;)V
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/gif/GifFrame;->nativeDispose()V

    .line 48
    return-void
.end method

.method public final a(IILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/gif/GifFrame;->nativeRenderFrame(IILandroid/graphics/Bitmap;)V

    .line 53
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/gif/GifFrame;->nativeGetWidth()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/gif/GifFrame;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/gif/GifFrame;->nativeGetXOffset()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/gif/GifFrame;->nativeGetYOffset()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/imagepipeline/gif/GifFrame;->nativeFinalize()V

    .line 43
    return-void
.end method

.method native nativeDispose()V
.end method

.method native nativeGetDisposalMode()I
.end method

.method native nativeGetHeight()I
.end method

.method native nativeGetWidth()I
.end method

.method native nativeGetXOffset()I
.end method

.method native nativeGetYOffset()I
.end method
