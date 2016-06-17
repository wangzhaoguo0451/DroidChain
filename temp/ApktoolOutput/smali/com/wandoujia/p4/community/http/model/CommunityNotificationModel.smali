.class public Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;
.super Ljava/lang/Object;
.source "CommunityNotificationModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7ff2a1e4008224aL


# instance fields
.field private comment:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

.field private commentType:Ljava/lang/String;

.field private createdTime:J

.field private id:Ljava/lang/String;

.field private parentCommentContent:Ljava/lang/String;

.field private parentCommentId:Ljava/lang/String;

.field private parentCommentType:Ljava/lang/String;

.field private topic_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->comment:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    return-object v0
.end method

.method public getCommentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->commentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->createdTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCommentContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->parentCommentContent:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->parentCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCommentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->parentCommentType:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->topic_id:Ljava/lang/String;

    return-object v0
.end method
