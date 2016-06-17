.class public final Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;
.super Ljava/lang/Object;
.source "AbstractHttpRequestBuilder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1f919394d0e16350L


# instance fields
.field public final isCacheableParam:Z

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-boolean p1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->isCacheableParam:Z

    .line 385
    iput-object p2, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->value:Ljava/lang/String;

    .line 386
    return-void
.end method
