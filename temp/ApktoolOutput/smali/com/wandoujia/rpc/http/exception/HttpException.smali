.class public Lcom/wandoujia/rpc/http/exception/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# static fields
.field private static final serialVersionUID:J = -0x2aa57333d42501abL


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    iput p1, p0, Lcom/wandoujia/rpc/http/exception/HttpException;->statusCode:I

    .line 17
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/wandoujia/rpc/http/exception/HttpException;->statusCode:I

    return v0
.end method
