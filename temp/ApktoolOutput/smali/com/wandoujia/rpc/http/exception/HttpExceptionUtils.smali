.class public Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;
.super Ljava/lang/Object;
.source "HttpExceptionUtils.java"


# static fields
.field private static final KEY_SERVER_UNAVAILABLE_INFO:Ljava/lang/String; = "info"

.field private static final STATUS_CODE_BLACK_LIST:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATUS_CODE_SERVER_UNAVAILABLE:I = 0x103

.field private static final STATUS_CODE_WHITE_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->STATUS_CODE_WHITE_LIST:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->STATUS_CODE_BLACK_LIST:Ljava/util/Set;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRetry(Ljava/lang/Throwable;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-static {p0}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getRealCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    move v0, v1

    .line 49
    :goto_0
    return v0

    .line 39
    :cond_0
    instance-of v3, v0, Lcom/wandoujia/rpc/http/exception/HttpException;

    if-eqz v3, :cond_4

    .line 40
    check-cast v0, Lcom/wandoujia/rpc/http/exception/HttpException;

    invoke-virtual {v0}, Lcom/wandoujia/rpc/http/exception/HttpException;->getStatusCode()I

    move-result v0

    .line 41
    sget-object v3, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->STATUS_CODE_WHITE_LIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    sget-object v3, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->STATUS_CODE_BLACK_LIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    const/16 v3, 0x1f4

    if-lt v0, v3, :cond_3

    const/16 v3, 0x1fe

    if-gt v0, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method private static getHttpExceptionMessage(Lcom/wandoujia/rpc/http/exception/HttpException;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/rpc/http/exception/HttpException;->getStatusCode()I

    move-result v1

    .line 87
    const/4 v0, 0x0

    .line 88
    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return-object p1

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lcom/wandoujia/rpc/http/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getServerUnavailableMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 93
    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x103
        :pswitch_0
    .end packed-switch
.end method

.method public static getMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getRealCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object p1

    .line 57
    :cond_1
    instance-of v1, v0, Lcom/wandoujia/rpc/http/exception/HttpException;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/wandoujia/rpc/http/exception/HttpException;

    invoke-static {v0, p1}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getHttpExceptionMessage(Lcom/wandoujia/rpc/http/exception/HttpException;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getRealCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter

    .prologue
    .line 112
    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 115
    :cond_0
    return-object p0
.end method

.method private static getServerUnavailableMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    new-instance v1, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils$1;

    invoke-direct {v1}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils$1;-><init>()V

    invoke-virtual {v1}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 101
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :goto_0
    return-object p1

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public static is404NotFound(Ljava/lang/Throwable;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-static {p0}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getRealCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 79
    :cond_0
    instance-of v2, v0, Lcom/wandoujia/rpc/http/exception/HttpException;

    if-eqz v2, :cond_2

    .line 80
    check-cast v0, Lcom/wandoujia/rpc/http/exception/HttpException;

    invoke-virtual {v0}, Lcom/wandoujia/rpc/http/exception/HttpException;->getStatusCode()I

    move-result v0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public static isServerUnavailable(Ljava/lang/Throwable;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {p0}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getRealCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    move v0, v1

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    instance-of v2, v0, Lcom/wandoujia/rpc/http/exception/HttpException;

    if-eqz v2, :cond_2

    .line 69
    check-cast v0, Lcom/wandoujia/rpc/http/exception/HttpException;

    invoke-virtual {v0}, Lcom/wandoujia/rpc/http/exception/HttpException;->getStatusCode()I

    move-result v0

    const/16 v2, 0x103

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 71
    goto :goto_0
.end method
