.class public Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;
.super Ljava/lang/Object;
.source "LocalAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6acb911910f69b5dL


# instance fields
.field appType:Ljava/lang/String;

.field changeLog:Ljava/lang/String;

.field detailUrl:Ljava/lang/String;

.field downloadCount:I

.field fullMD5:Ljava/lang/String;

.field fullSize:J

.field fullUrl:Ljava/lang/String;

.field hasPatch:Z

.field importantLevel:I

.field importantUpdate:Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

.field lastModified:J

.field lastModifiedTime:Ljava/lang/String;

.field market:Ljava/lang/String;

.field notRecommendReason:Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;

.field notificationModel:Lcom/wandoujia/push/protocol/NotificationModel;

.field patchMD5:Ljava/lang/String;

.field patchSize:J

.field patchUrl:Ljava/lang/String;

.field recommendedType:Ljava/lang/String;

.field superior:Z

.field upgradeType:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

.field upgradeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field versionCode:I

.field versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->NONE:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    iput-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->upgradeType:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->upgradeTypes:Ljava/util/List;

    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 440
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 456
    :goto_0
    return-object v0

    .line 443
    :cond_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 445
    :try_start_0
    new-instance v2, Lcqi;

    invoke-direct {v2}, Lcqi;-><init>()V

    invoke-virtual {v2}, Lcqi;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    throw v0

    :catch_1
    move-exception v0

    :cond_1
    :goto_1
    move-object v0, v1

    .line 456
    goto :goto_0

    .line 454
    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->changeLog:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->detailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCount()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->downloadCount:I

    return v0
.end method

.method public getFullMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->fullMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getFullSize()J
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->fullSize:J

    return-wide v0
.end method

.method public getFullUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->fullUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImportantLevel()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->importantLevel:I

    return v0
.end method

.method public getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->importantUpdate:Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 377
    iget-wide v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->lastModified:J

    return-wide v0
.end method

.method public getLastModifiedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->lastModifiedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMarket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getNotRecommendReason()Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->notRecommendReason:Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;

    return-object v0
.end method

.method public getNotificationModel()Lcom/wandoujia/push/protocol/NotificationModel;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->notificationModel:Lcom/wandoujia/push/protocol/NotificationModel;

    return-object v0
.end method

.method public getPatchMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->patchMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchSize()J
    .locals 2

    .prologue
    .line 329
    iget-wide v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->patchSize:J

    return-wide v0
.end method

.method public getPatchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->patchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->recommendedType:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgradeType()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->upgradeType:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    return-object v0
.end method

.method public getUpgradeTypes()Ljava/util/List;
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
    .line 421
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->upgradeTypes:Ljava/util/List;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hasPatch()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->hasPatch:Z

    return v0
.end method

.method public isImportantUpdate()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->importantUpdate:Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPatchUpgradable()Z
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->patchUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->patchSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuperior()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->superior:Z

    return v0
.end method

.method public setAppType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->appType:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setUpgradeType(Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->upgradeType:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    .line 418
    return-void
.end method

.method public setUpgradeTypes(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->upgradeTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    .line 430
    const-string v0, ""

    .line 432
    :try_start_0
    new-instance v2, Lcqh;

    invoke-direct {v2}, Lcqh;-><init>()V

    invoke-virtual {v2}, Lcqh;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 434
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
