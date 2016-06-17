.class public final Lgaq;
.super Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
.source "GetPublicInfosRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getTimeout()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x1388

    return v0
.end method

.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lgaq;->a:Ljava/lang/String;

    return-object v0
.end method
