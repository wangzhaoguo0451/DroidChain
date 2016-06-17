.class public Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
.super Ljava/lang/Object;
.source "CommunityGroupModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final STATUS_BALLOTING:Ljava/lang/String; = "BALLOTING"

.field private static final USER_PERMISSION_ADD_TOPIC:Ljava/lang/String; = "ADD_TOPIC"

.field private static final serialVersionUID:J = 0x50a19eda77db0719L


# instance fields
.field private aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private author:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

.field private ballotCount:I

.field private banner:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

.field private curUserBalloted:Z

.field private curUserJoinTime:J

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

.field private curUserRole:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private icon:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

.field private id:Ljava/lang/String;

.field private itemStatus:Ljava/lang/String;

.field private membersCount:I

.field private slogan:Ljava/lang/String;

.field private subjectIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subjectType:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private todayTopicsCount:I

.field private totalTopicsCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentGroupBalloting()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->itemStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "BALLOTING"

    iget-object v1, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->itemStatus:Ljava/lang/String;

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

.method public currentUserCanAddTopic()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->curUserPermissions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->curUserPermissions:Ljava/util/List;

    const-string v1, "ADD_TOPIC"

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
    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->author:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    return-object v0
.end method

.method public getBallotCount()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->ballotCount:I

    return v0
.end method

.method public getBanner()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->banner:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    return-object v0
.end method

.method public getCurUserJoinTime()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->curUserJoinTime:J

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
    .line 112
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->curUserPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getCurUserRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->curUserRole:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->icon:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMembersCount()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->membersCount:I

    return v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->slogan:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectIds()Ljava/util/List;
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
    .line 76
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->subjectIds:Ljava/util/List;

    return-object v0
.end method

.method public getSubjectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->subjectType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTodayTopicCount()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->todayTopicsCount:I

    return v0
.end method

.method public getTotalTopicCount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->totalTopicsCount:I

    return v0
.end method

.method public isCurUserBalloted()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->curUserBalloted:Z

    return v0
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
    .line 124
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->curUserPermissions:Ljava/util/List;

    .line 125
    return-void
.end method

.method public setCurUserRole(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->curUserRole:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->id:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setMembersCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput p1, p0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->membersCount:I

    .line 129
    return-void
.end method
