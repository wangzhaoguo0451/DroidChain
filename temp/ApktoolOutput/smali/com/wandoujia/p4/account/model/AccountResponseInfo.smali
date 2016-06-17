.class public Lcom/wandoujia/p4/account/model/AccountResponseInfo;
.super Ljava/lang/Object;
.source "AccountResponseInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private error:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/wandoujia/p4/account/model/AccountResponseInfo;->error:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/wandoujia/p4/account/model/AccountResponseInfo;->msg:Ljava/lang/String;

    return-object v0
.end method
