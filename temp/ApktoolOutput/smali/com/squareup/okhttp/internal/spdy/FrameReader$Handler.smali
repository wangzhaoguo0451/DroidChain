.class public interface abstract Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
.super Ljava/lang/Object;
.source "FrameReader.java"


# virtual methods
.method public abstract ackSettings()V
.end method

.method public abstract alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
.end method

.method public abstract data(ZILhss;I)V
.end method

.method public abstract goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lokio/ByteString;)V
.end method

.method public abstract headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;",
            "Lcom/squareup/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
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

.method public abstract settings(ZLbzr;)V
.end method

.method public abstract windowUpdate(IJ)V
.end method
