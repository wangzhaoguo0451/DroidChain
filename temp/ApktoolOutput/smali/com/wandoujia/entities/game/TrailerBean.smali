.class public Lcom/wandoujia/entities/game/TrailerBean;
.super Ljava/lang/Object;
.source "TrailerBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private coverUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private duration:I

.field private isPortrait:Z

.field private trailerId:J

.field private trailerName:Ljava/lang/String;

.field private trailerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/entities/game/TrailerBean;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/entities/game/TrailerBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/wandoujia/entities/game/TrailerBean;->duration:I

    return v0
.end method

.method public getTrailerId()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/wandoujia/entities/game/TrailerBean;->trailerId:J

    return-wide v0
.end method

.method public getTrailerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/entities/game/TrailerBean;->trailerName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrailerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/entities/game/TrailerBean;->trailerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/wandoujia/entities/game/TrailerBean;->isPortrait:Z

    return v0
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wandoujia/entities/game/TrailerBean;->coverUrl:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/wandoujia/entities/game/TrailerBean;->description:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/wandoujia/entities/game/TrailerBean;->duration:I

    .line 51
    return-void
.end method

.method public setPortrait(Z)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/wandoujia/entities/game/TrailerBean;->isPortrait:Z

    .line 59
    return-void
.end method

.method public setTrailerId(J)V
    .locals 1
    .parameter

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/wandoujia/entities/game/TrailerBean;->trailerId:J

    .line 27
    return-void
.end method

.method public setTrailerName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/wandoujia/entities/game/TrailerBean;->trailerName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTrailerUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/wandoujia/entities/game/TrailerBean;->trailerUrl:Ljava/lang/String;

    .line 75
    return-void
.end method
