.class public Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;
.super Ljava/lang/Object;
.source "CommunityRankingModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private likesCount:J

.field private rank:J

.field private user:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLikesCount()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;->likesCount:J

    return-wide v0
.end method

.method public getRank()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;->rank:J

    return-wide v0
.end method

.method public getUser()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;->user:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    return-object v0
.end method
