.class public Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;
.super Ljava/lang/Object;
.source "CommunityReplyModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final USER_PERMISSION_DELETE:Ljava/lang/String; = "DELETE"

.field private static final serialVersionUID:J = 0x18a88c6f63484d50L


# instance fields
.field private author:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

.field private createdTime:J

.field private curUserPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groupId:J

.field private id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private parentReply:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

.field private picture:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

.field private sequence:I

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentUserCanDelete()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->curUserPermissions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->curUserPermissions:Ljava/util/List;

    const-string v1, "DELETE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->author:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    return-object v0
.end method

.method public getCreatTime()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->createdTime:J

    return-wide v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->groupId:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getParentReply()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->parentReply:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    return-object v0
.end method

.method public getPicture()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->picture:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->sequence:I

    return v0
.end method

.method public isReplyDeleted()Z
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthor(Lcom/wandoujia/p4/community/http/model/CommunityUserModel;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->author:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    .line 38
    return-void
.end method

.method public setCreatTime(J)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->createdTime:J

    .line 46
    return-void
.end method

.method public setGroupId(J)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->groupId:J

    .line 62
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->message:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPicture(Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->picture:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    .line 70
    return-void
.end method

.method public setSequence(I)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->sequence:I

    .line 90
    return-void
.end method
