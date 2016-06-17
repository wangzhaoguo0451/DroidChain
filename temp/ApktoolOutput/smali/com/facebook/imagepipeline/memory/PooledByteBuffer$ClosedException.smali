.class public Lcom/facebook/imagepipeline/memory/PooledByteBuffer$ClosedException;
.super Ljava/lang/RuntimeException;
.source "PooledByteBuffer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "Invalid bytebuf. Already closed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method
