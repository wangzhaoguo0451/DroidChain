.class public interface abstract Lcom/wandoujia/rpc/http/delegate/ApiDelegate;
.super Ljava/lang/Object;
.source "ApiDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
.end method

.method public abstract processResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;^TE;"
        }
    .end annotation
.end method
