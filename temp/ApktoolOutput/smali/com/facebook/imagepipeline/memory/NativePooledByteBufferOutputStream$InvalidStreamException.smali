.class public Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream$InvalidStreamException;
.super Ljava/lang/RuntimeException;
.source "NativePooledByteBufferOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    const-string v0, "OutputStream no longer valid"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 166
    return-void
.end method
