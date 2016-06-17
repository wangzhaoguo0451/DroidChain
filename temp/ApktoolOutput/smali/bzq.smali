.class public final Lbzq;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/PushObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onData(ILhss;IZ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lhss;->f(J)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public final onHeaders(ILjava/util/List;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public final onRequest(ILjava/util/List;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public final onReset(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    return-void
.end method
