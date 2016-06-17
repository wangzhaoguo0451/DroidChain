.class public Lcom/wandoujia/entities/game/GameDetailInfo$DeveloperBean;
.super Ljava/lang/Object;
.source "GameDetailInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private developerId:J

.field private developerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeveloperId()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/wandoujia/entities/game/GameDetailInfo$DeveloperBean;->developerId:J

    return-wide v0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameDetailInfo$DeveloperBean;->developerName:Ljava/lang/String;

    return-object v0
.end method

.method public setDeveloperId(J)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/wandoujia/entities/game/GameDetailInfo$DeveloperBean;->developerId:J

    .line 81
    return-void
.end method

.method public setDeveloperName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/wandoujia/entities/game/GameDetailInfo$DeveloperBean;->developerName:Ljava/lang/String;

    .line 89
    return-void
.end method
