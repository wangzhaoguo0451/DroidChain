.class public interface abstract Lcom/squareup/okhttp/internal/http/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field public static final DISCARD_STREAM_TIMEOUT_MILLIS:I = 0x64


# virtual methods
.method public abstract canReuseConnection()Z
.end method

.method public abstract createRequestBody(Lbxj;J)Lhtg;
.end method

.method public abstract disconnect(Lbyo;)V
.end method

.method public abstract finishRequest()V
.end method

.method public abstract openResponseBody(Lbxn;)Lbxp;
.end method

.method public abstract readResponseHeaders()Lbxo;
.end method

.method public abstract releaseConnectionOnIdle()V
.end method

.method public abstract writeRequestBody(Lbyw;)V
.end method

.method public abstract writeRequestHeaders(Lbxj;)V
.end method
