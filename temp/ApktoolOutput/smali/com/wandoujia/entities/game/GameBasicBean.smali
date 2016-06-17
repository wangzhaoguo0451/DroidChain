.class public Lcom/wandoujia/entities/game/GameBasicBean;
.super Ljava/lang/Object;
.source "GameBasicBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6189ba01338c4471L


# instance fields
.field private crashWithoutGsf:I

.field private gameId:J

.field private inAppPurchase:I

.field private isOnlineGame:I

.field private language:Ljava/lang/String;

.field private needNetwork:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrashWithoutGsf()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/wandoujia/entities/game/GameBasicBean;->crashWithoutGsf:I

    return v0
.end method

.method public getGameId()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/wandoujia/entities/game/GameBasicBean;->gameId:J

    return-wide v0
.end method

.method public getInAppPurchase()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/wandoujia/entities/game/GameBasicBean;->inAppPurchase:I

    return v0
.end method

.method public getIsOnlineGame()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/wandoujia/entities/game/GameBasicBean;->isOnlineGame:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameBasicBean;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedNetwork()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/wandoujia/entities/game/GameBasicBean;->needNetwork:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameBasicBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setGameId(J)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/wandoujia/entities/game/GameBasicBean;->gameId:J

    .line 37
    return-void
.end method

.method public setIsOnlineGame(I)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/wandoujia/entities/game/GameBasicBean;->isOnlineGame:I

    .line 53
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/wandoujia/entities/game/GameBasicBean;->packageName:Ljava/lang/String;

    .line 45
    return-void
.end method
