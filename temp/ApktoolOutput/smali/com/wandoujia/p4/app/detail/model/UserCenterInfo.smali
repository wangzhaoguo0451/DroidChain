.class public Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;
.super Ljava/lang/Object;
.source "UserCenterInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private activeSina:Z

.field private avatar:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;->uid:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;->username:Ljava/lang/String;

    .line 19
    iput-boolean p3, p0, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;->activeSina:Z

    .line 20
    iput-object p4, p0, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;->avatar:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isActiveSina()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;->activeSina:Z

    return v0
.end method
