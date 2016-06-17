.class public Lcom/wandoujia/net/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# instance fields
.field private final message:Ljava/lang/String;

.field private final type:Lcom/wandoujia/net/HttpException$Type;


# direct methods
.method public constructor <init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wandoujia/net/HttpException;->type:Lcom/wandoujia/net/HttpException$Type;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/net/HttpException;->message:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/wandoujia/net/HttpException;->type:Lcom/wandoujia/net/HttpException$Type;

    .line 35
    iput-object p2, p0, Lcom/wandoujia/net/HttpException;->message:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/net/HttpException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/wandoujia/net/HttpException$Type;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/net/HttpException;->type:Lcom/wandoujia/net/HttpException$Type;

    return-object v0
.end method
