.class public final enum Lcom/wandoujia/net/AsyncHttpRequest$Method;
.super Ljava/lang/Enum;
.source "AsyncHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/net/AsyncHttpRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/net/AsyncHttpRequest$Method;

.field public static final enum GET:Lcom/wandoujia/net/AsyncHttpRequest$Method;

.field public static final enum HEAD:Lcom/wandoujia/net/AsyncHttpRequest$Method;

.field public static final enum POST:Lcom/wandoujia/net/AsyncHttpRequest$Method;


# instance fields
.field private method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/wandoujia/net/AsyncHttpRequest$Method;

    const-string v1, "HEAD"

    const-string v2, "HEAD"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/net/AsyncHttpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/net/AsyncHttpRequest$Method;->HEAD:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    new-instance v0, Lcom/wandoujia/net/AsyncHttpRequest$Method;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/net/AsyncHttpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/net/AsyncHttpRequest$Method;->GET:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    new-instance v0, Lcom/wandoujia/net/AsyncHttpRequest$Method;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/net/AsyncHttpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/net/AsyncHttpRequest$Method;->POST:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/net/AsyncHttpRequest$Method;

    sget-object v1, Lcom/wandoujia/net/AsyncHttpRequest$Method;->HEAD:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/net/AsyncHttpRequest$Method;->GET:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/net/AsyncHttpRequest$Method;->POST:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/net/AsyncHttpRequest$Method;->$VALUES:[Lcom/wandoujia/net/AsyncHttpRequest$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/wandoujia/net/AsyncHttpRequest$Method;->method:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/net/AsyncHttpRequest$Method;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/wandoujia/net/AsyncHttpRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/net/AsyncHttpRequest$Method;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/net/AsyncHttpRequest$Method;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/wandoujia/net/AsyncHttpRequest$Method;->$VALUES:[Lcom/wandoujia/net/AsyncHttpRequest$Method;

    invoke-virtual {v0}, [Lcom/wandoujia/net/AsyncHttpRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/net/AsyncHttpRequest$Method;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/net/AsyncHttpRequest$Method;->method:Ljava/lang/String;

    return-object v0
.end method
