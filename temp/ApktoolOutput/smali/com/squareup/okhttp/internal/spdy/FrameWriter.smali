.class public interface abstract Lcom/squareup/okhttp/internal/spdy/FrameWriter;
.super Ljava/lang/Object;
.source "FrameWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract ackSettings(Lbzr;)V
.end method

.method public abstract connectionPreface()V
.end method

.method public abstract data(ZILhsp;I)V
.end method

.method public abstract flush()V
.end method

.method public abstract goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V
.end method

.method public abstract headers(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract maxDataLength()I
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
.end method

.method public abstract settings(Lbzr;)V
.end method

.method public abstract synReply(ZILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract synStream(ZZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract windowUpdate(IJ)V
.end method
