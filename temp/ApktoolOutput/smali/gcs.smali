.class public abstract Lgcs;
.super Lfxm;
.source "SubscribeBaseRequest.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgcs;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgcs;->a:Ljava/util/Map;

    .line 31
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lgcs;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;)Lgcs;
    .locals 2
    .parameter

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string v0, "source"

    invoke-virtual {p1}, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgcs;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-object p0
.end method

.method protected setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 85
    const-string v0, "api_version"

    invoke-static {}, Lgcb;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgcs;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lgcs;->a:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->putAll(Ljava/util/Map;)V

    .line 87
    return-void
.end method
