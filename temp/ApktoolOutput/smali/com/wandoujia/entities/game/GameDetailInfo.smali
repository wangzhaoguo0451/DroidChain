.class public Lcom/wandoujia/entities/game/GameDetailInfo;
.super Ljava/lang/Object;
.source "GameDetailInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5248fafc37651e68L


# instance fields
.field private basic:Lcom/wandoujia/entities/game/GameBasicBean;

.field private developer:Lcom/wandoujia/entities/game/GameDetailInfo$DeveloperBean;

.field private extraProfile:Lcom/wandoujia/entities/game/GameExtraProfile;

.field private review:Lcom/wandoujia/entities/game/ReviewBean;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/game/GameTag;",
            ">;"
        }
    .end annotation
.end field

.field private trailer:Lcom/wandoujia/entities/game/TrailerBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public getBasic()Lcom/wandoujia/entities/game/GameBasicBean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->basic:Lcom/wandoujia/entities/game/GameBasicBean;

    return-object v0
.end method

.method public getDeveloper()Lcom/wandoujia/entities/game/GameDetailInfo$DeveloperBean;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->developer:Lcom/wandoujia/entities/game/GameDetailInfo$DeveloperBean;

    return-object v0
.end method

.method public getExtraProfile()Lcom/wandoujia/entities/game/GameExtraProfile;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->extraProfile:Lcom/wandoujia/entities/game/GameExtraProfile;

    return-object v0
.end method

.method public getReview()Lcom/wandoujia/entities/game/ReviewBean;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->review:Lcom/wandoujia/entities/game/ReviewBean;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/game/GameTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTrailer()Lcom/wandoujia/entities/game/TrailerBean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->trailer:Lcom/wandoujia/entities/game/TrailerBean;

    return-object v0
.end method

.method public setBasic(Lcom/wandoujia/entities/game/GameBasicBean;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->basic:Lcom/wandoujia/entities/game/GameBasicBean;

    .line 28
    return-void
.end method

.method public setDeveloper(Lcom/wandoujia/entities/game/GameDetailInfo$DeveloperBean;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->developer:Lcom/wandoujia/entities/game/GameDetailInfo$DeveloperBean;

    .line 52
    return-void
.end method

.method public setExtraProfile(Lcom/wandoujia/entities/game/GameExtraProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->extraProfile:Lcom/wandoujia/entities/game/GameExtraProfile;

    .line 36
    return-void
.end method

.method public setReview(Lcom/wandoujia/entities/game/ReviewBean;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->review:Lcom/wandoujia/entities/game/ReviewBean;

    .line 68
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/game/GameTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->tags:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setTrailer(Lcom/wandoujia/entities/game/TrailerBean;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/wandoujia/entities/game/GameDetailInfo;->trailer:Lcom/wandoujia/entities/game/TrailerBean;

    .line 60
    return-void
.end method
