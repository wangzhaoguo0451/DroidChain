.class public interface abstract Lcom/squareup/okhttp/internal/spdy/PushObserver;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final CANCEL:Lcom/squareup/okhttp/internal/spdy/PushObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lbzq;

    invoke-direct {v0}, Lbzq;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/PushObserver;->CANCEL:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    return-void
.end method


# virtual methods
.method public abstract onData(ILhss;IZ)Z
.end method

.method public abstract onHeaders(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract onRequest(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onReset(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
.end method
