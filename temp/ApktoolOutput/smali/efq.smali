.class public final Lefq;
.super Ljava/lang/Object;
.source "RawDelegate.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/delegate/ApiDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/delegate/ApiDelegate",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lefq;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method public final bridge synthetic processResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .parameter

    .prologue
    .line 14
    return-object p1
.end method
