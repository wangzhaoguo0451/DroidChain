.class public Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;
.super Ljava/lang/Object;
.source "CommunityTopicModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final USER_PERMISSION_ADD_BLACKUSER:Ljava/lang/String; = "ADD_GROUP_BLACKUSER"

.field private static final USER_PERMISSION_ADD_REPLY:Ljava/lang/String; = "ADD_REPLY"

.field private static final USER_PERMISSION_DELETE:Ljava/lang/String; = "DELETE"

.field private static final USER_PERMISSION_FEATURE:Ljava/lang/String; = "FEATURE"

.field private static final USER_PERMISSION_STICK:Ljava/lang/String; = "STICK"

.field private static final USER_PERMISSION_VOTE:Ljava/lang/String; = "VOTE"

.field private static final serialVersionUID:J = -0x438c53b6c7deb7f2L


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

.field private group:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

.field private id:Ljava/lang/String;

.field private isCurUserLiked:Z

.field private isFeatured:Z

.field private isSticky:Z

.field private likesCount:I

.field private message:Ljava/lang/String;

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private repliesCount:I

.field private updatedTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentUserCanAddBlackUser()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    const-string v1, "ADD_GROUP_BLACKUSER"

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

.method public currentUserCanAddReply()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    const-string v1, "ADD_REPLY"

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

.method public currentUserCanDelete()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

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

.method public currentUserCanFeature()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    const-string v1, "FEATURE"

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

.method public currentUserCanStick()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    const-string v1, "STICK"

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

.method public currentUserCanVote()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    const-string v1, "VOTE"

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

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 189
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 194
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->author:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->createdTime:J

    return-wide v0
.end method

.method public getCurUserPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->group:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLikesCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->likesCount:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->pictures:Ljava/util/List;

    return-object v0
.end method

.method public getRepliesCount()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->repliesCount:I

    return v0
.end method

.method public getUpdatedTime()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->updatedTime:J

    return-wide v0
.end method

.method public isCurUserLiked()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isCurUserLiked:Z

    return v0
.end method

.method public isFeatured()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isFeatured:Z

    return v0
.end method

.method public isSticky()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isSticky:Z

    return v0
.end method

.method public setCurUserLiked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isCurUserLiked:Z

    .line 88
    return-void
.end method

.method public setCurUserPermissions(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    .line 108
    return-void
.end method

.method public setData(Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    iget-object v0, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->author:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->author:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    .line 176
    iget-wide v0, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->createdTime:J

    iput-wide v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->createdTime:J

    .line 177
    iget-boolean v0, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isCurUserLiked:Z

    iput-boolean v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isCurUserLiked:Z

    .line 178
    iget-object v0, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->group:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->group:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    .line 179
    iget v0, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->likesCount:I

    iput v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->likesCount:I

    .line 180
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->message:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->pictures:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->pictures:Ljava/util/List;

    .line 182
    iget v0, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->repliesCount:I

    iput v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->repliesCount:I

    .line 183
    iget-wide v0, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->updatedTime:J

    iput-wide v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->updatedTime:J

    .line 184
    iget-object v0, p1, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->curUserPermissions:Ljava/util/List;

    .line 185
    return-void
.end method

.method public setGroup(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->group:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    .line 100
    return-void
.end method

.method public setLikesCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->likesCount:I

    .line 92
    return-void
.end method

.method public setRepliesCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->repliesCount:I

    .line 112
    return-void
.end method

.method public setSticky(Z)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isSticky:Z

    .line 96
    return-void
.end method
