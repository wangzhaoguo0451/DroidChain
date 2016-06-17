.class public final Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;
.super Lgcs;
.source "PostSubscribeRequest.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest$SubscribePublisherItem;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lgcs;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;->a:Ljava/util/List;

    .line 48
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 49
    iget-object v3, p0, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;->a:Ljava/util/List;

    new-instance v4, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest$SubscribePublisherItem;

    sget-object v5, Lcom/wandoujia/p4/subscribe/core/SubscribePublisherType;->ACCOUNT:Lcom/wandoujia/p4/subscribe/core/SubscribePublisherType;

    invoke-direct {v4, v5, v2}, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest$SubscribePublisherItem;-><init>(Lcom/wandoujia/p4/subscribe/core/SubscribePublisherType;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iput-boolean p1, p0, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;->b:Z

    .line 52
    sget-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->POST:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;->setMethod(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;->enableParamsInUrl()Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 54
    return-void
.end method


# virtual methods
.method protected final genEntity(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)Lorg/apache/http/HttpEntity;
    .locals 3
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;->a:Ljava/util/List;

    new-instance v2, Lgcr;

    invoke-direct {v2}, Lgcr;-><init>()V

    invoke-virtual {v2}, Lgcr;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "http://subscribe.wandoujia.com/api/v2/subscriber/subscribe"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://subscribe.wandoujia.com/api/v2/subscriber/unsubscribe"

    goto :goto_0
.end method
