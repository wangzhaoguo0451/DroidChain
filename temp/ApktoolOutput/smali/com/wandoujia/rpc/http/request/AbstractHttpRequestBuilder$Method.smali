.class public final enum Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;
.super Ljava/lang/Enum;
.source "AbstractHttpRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

.field public static final enum GET:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

.field public static final enum POST:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->GET:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    new-instance v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->POST:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    sget-object v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->GET:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->POST:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->$VALUES:[Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;
    .locals 1
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->$VALUES:[Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    invoke-virtual {v0}, [Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    return-object v0
.end method
