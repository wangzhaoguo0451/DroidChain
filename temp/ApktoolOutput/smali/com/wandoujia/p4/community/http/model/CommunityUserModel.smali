.class public Lcom/wandoujia/p4/community/http/model/CommunityUserModel;
.super Ljava/lang/Object;
.source "CommunityUserModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x76088bb809d96e91L


# instance fields
.field private avatar:Ljava/lang/String;

.field private joinTime:Ljava/lang/Long;

.field private nick:Ljava/lang/String;

.field private role:Ljava/lang/String;

.field private uid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->joinTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->uid:Ljava/lang/Long;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->role:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->role:Ljava/lang/String;

    const-string v1, "GROUP_ADMIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOwner()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->role:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->role:Ljava/lang/String;

    const-string v1, "GROUP_OWNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->avatar:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setJoinTime(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->joinTime:Ljava/lang/Long;

    .line 60
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->nick:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->role:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setUid(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->uid:Ljava/lang/Long;

    .line 44
    return-void
.end method
