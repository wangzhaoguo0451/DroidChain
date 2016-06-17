.class public Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;
.super Ljava/lang/Object;
.source "MarketAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private detail:Ljava/lang/String;

.field private expireTime:J

.field private startTime:J

.field private summary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->expireTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->startTime:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->summary:Ljava/lang/String;

    return-object v0
.end method
