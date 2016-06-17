.class public Lcom/wandoujia/p4/account/http/model/AuthorInfo;
.super Ljava/lang/Object;
.source "AuthorInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private phoneicon:Ljava/lang/String;

.field private phonename:Ljava/lang/String;

.field private verified:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/p4/account/http/model/AuthorInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/wandoujia/p4/account/http/model/AuthorInfo;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/account/http/model/AuthorInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneicon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/p4/account/http/model/AuthorInfo;->phoneicon:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/p4/account/http/model/AuthorInfo;->phonename:Ljava/lang/String;

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/wandoujia/p4/account/http/model/AuthorInfo;->verified:Z

    return v0
.end method
