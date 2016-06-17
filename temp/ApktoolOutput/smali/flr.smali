.class public abstract Lflr;
.super Lfxx;
.source "CommunityPostRequestBuilder.java"


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lfxx;-><init>()V

    .line 13
    sget-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->POST:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    invoke-virtual {p0, v0}, Lflr;->setMethod(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lflr;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lflr;
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lflr;->a:Ljava/lang/String;

    .line 19
    return-object p0
.end method
