.class public Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;
.super Lcom/wandoujia/base/http/HttpClientWrapper;
.source "PhoenixHttpClient.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final SOCKET_TIMEOUT_MS:I = 0xea60


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    const v0, 0xea60

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lcom/wandoujia/rpc/http/client/HttpClientFactory;->newInstance(II)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/base/http/HttpClientWrapper;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 17
    return-void
.end method
