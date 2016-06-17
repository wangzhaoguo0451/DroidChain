.class public final Lfvt;
.super Ljava/lang/Object;
.source "RpcHelper.java"


# static fields
.field private static final a:Lcvo;


# instance fields
.field private final b:Lcom/wandoujia/rpc/http/client/DataApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v0

    sput-object v0, Lfvt;->a:Lcvo;

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/rpc/http/client/DataApi;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lfvt;->b:Lcom/wandoujia/rpc/http/client/DataApi;

    .line 39
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    sget-object v0, Lfvt;->a:Lcvo;

    invoke-virtual {v0, p0, p1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Lcom/wandoujia/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lfwu;

    invoke-direct {v0}, Lfwu;-><init>()V

    check-cast p1, Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p1, v0, Lfwu;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v1, p0, Lfvt;->b:Lcom/wandoujia/rpc/http/client/DataApi;

    invoke-interface {v1, v0}, Lcom/wandoujia/rpc/http/client/DataApi;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponse;

    .line 66
    :try_start_0
    new-instance v1, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;

    invoke-direct {v1}, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;-><init>()V

    invoke-virtual {v1, v0}, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;->process(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0, p2}, Lfvt;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/wandoujia/rpc/http/exception/ContentParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/wandoujia/rpc/http/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
