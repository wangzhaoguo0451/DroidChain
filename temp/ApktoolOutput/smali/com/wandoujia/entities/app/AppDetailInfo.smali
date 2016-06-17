.class public Lcom/wandoujia/entities/app/AppDetailInfo;
.super Ljava/lang/Object;
.source "AppDetailInfo.java"

# interfaces
.implements Lcom/wandoujia/entities/app/IAppDetailInfo;
.implements Ljava/io/Serializable;


# instance fields
.field private ad:Z

.field private adType:I

.field private alias:Ljava/lang/String;

.field private apkObbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ApkObbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private apks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ApkDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private appType:Ljava/lang/String;

.field private award:Lcom/wandoujia/entities/app/AwardLiteInfo;

.field private banner:Ljava/lang/String;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/BelongInfo;",
            ">;"
        }
    .end annotation
.end field

.field private commentsCount:I

.field private description:Ljava/lang/String;

.field private detailParam:Ljava/lang/String;

.field private developer:Lcom/wandoujia/entities/app/Developer;

.field private dislikesCount:I

.field private editorComment:Ljava/lang/String;

.field private extensionPacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ExtensionPack;",
            ">;"
        }
    .end annotation
.end field

.field private extra:Lcom/wandoujia/entities/app/Extra;

.field private game:Lcom/wandoujia/entities/game/GameDetailInfo;

.field private gsfType:Ljava/lang/Integer;

.field private icons:Lcom/wandoujia/entities/app/IconSet;

.field private id:I

.field private imprUrl:Ljava/lang/String;

.field private installedCountStr:Ljava/lang/String;

.field private isFreeTraffic:Z

.field private likesCount:I

.field private likesRate:I

.field private packageName:Ljava/lang/String;

.field private screenshots:Lcom/wandoujia/entities/app/ScreenShotSet;

.field private tagline:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/AppDetailInfo$Tag;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private titleEn:Ljava/lang/String;

.field private trusted:I

.field private updatedDate:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    return-void
.end method


# virtual methods
.method public getAdType()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->adType:I

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getApkObbs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ApkObbInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apkObbs:Ljava/util/List;

    return-object v0
.end method

.method public getApks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ApkDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    return-object v0
.end method

.method public getAppDetailAdStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 366
    :cond_0
    const-string v0, ""

    .line 368
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getAdsType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailCompatible()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 435
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 438
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getCompatible()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getAppDetailDangerPermissions()Ljava/util/List;
    .locals 2
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
    .line 401
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 402
    :cond_0
    const/4 v0, 0x0

    .line 404
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getDangerousPermissions()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDetailDownloadCountStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->installedCountStr:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDetailDownloadUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 296
    :cond_0
    const-string v0, ""

    .line 301
    :goto_0
    return-object v0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getDownloadUrl()Lcom/wandoujia/entities/app/DownloadUrl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 299
    const-string v0, ""

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getDownloadUrl()Lcom/wandoujia/entities/app/DownloadUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/DownloadUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->icons:Lcom/wandoujia/entities/app/IconSet;

    if-nez v0, :cond_0

    .line 260
    const-string v0, ""

    .line 262
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->icons:Lcom/wandoujia/entities/app/IconSet;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/IconSet;->getSuitableIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailIncompatibleDetail()Ljava/util/List;
    .locals 2
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
    .line 443
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 444
    :cond_0
    const/4 v0, 0x0

    .line 446
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getIncompatibleDetail()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailIsAd()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->ad:Z

    return v0
.end method

.method public getAppDetailIsAward()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->award:Lcom/wandoujia/entities/app/AwardLiteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->award:Lcom/wandoujia/entities/app/AwardLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AwardLiteInfo;->getIssue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppDetailIsBeta()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 356
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->isBeta()Z

    move-result v0

    goto :goto_0
.end method

.method public getAppDetailMarket()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 336
    :cond_0
    const-string v0, ""

    .line 341
    :goto_0
    return-object v0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getDownloadUrl()Lcom/wandoujia/entities/app/DownloadUrl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 339
    const-string v0, ""

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getDownloadUrl()Lcom/wandoujia/entities/app/DownloadUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/DownloadUrl;->getMarket()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailMd5()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 428
    :cond_0
    const/4 v0, 0x0

    .line 430
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getMd5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailNormalScreenshots()Ljava/util/List;
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
    .line 316
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->screenshots:Lcom/wandoujia/entities/app/ScreenShotSet;

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->screenshots:Lcom/wandoujia/entities/app/ScreenShotSet;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ScreenShotSet;->getNormal()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDetailPaidStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    :cond_0
    const/4 v0, 0x0

    .line 462
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getPaidType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailPermissionLevel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 393
    :cond_0
    const-string v0, ""

    .line 395
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getPermissionLevel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailPermissions()Ljava/util/List;
    .locals 2
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
    .line 419
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 420
    :cond_0
    const/4 v0, 0x0

    .line 422
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailSafeStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 348
    :cond_0
    const-string v0, ""

    .line 350
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getSecurityStatus()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailSecurityDetail()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/SecurityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 375
    :cond_0
    const/4 v0, 0x0

    .line 377
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getSecurityDetail()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getBytes()I

    move-result v0

    goto :goto_0
.end method

.method public getAppDetailSmallScreenshots()Ljava/util/List;
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
    .line 325
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->screenshots:Lcom/wandoujia/entities/app/ScreenShotSet;

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->screenshots:Lcom/wandoujia/entities/app/ScreenShotSet;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ScreenShotSet;->getSmall()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDetailSuperior()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getSuperior()I

    move-result v0

    goto :goto_0
.end method

.method public getAppDetailTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDetailVerified()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 383
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getVerified()I

    move-result v0

    goto :goto_0
.end method

.method public getAppDetailVersionCode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 277
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getVersionCode()I

    move-result v0

    goto :goto_0
.end method

.method public getAppDetailVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 287
    :cond_0
    const-string v0, ""

    .line 289
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppLiteDetailParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->detailParam:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteDisplayStatUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->imprUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getAward()Lcom/wandoujia/entities/app/AwardLiteInfo;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->award:Lcom/wandoujia/entities/app/AwardLiteInfo;

    return-object v0
.end method

.method public getBanner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/BelongInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getCommentsCount()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->commentsCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloper()Lcom/wandoujia/entities/app/Developer;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->developer:Lcom/wandoujia/entities/app/Developer;

    return-object v0
.end method

.method public getDislikesCount()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->dislikesCount:I

    return v0
.end method

.method public getEditorComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->editorComment:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionPacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ExtensionPack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->extensionPacks:Ljava/util/List;

    return-object v0
.end method

.method public getExtra()Lcom/wandoujia/entities/app/Extra;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->extra:Lcom/wandoujia/entities/app/Extra;

    return-object v0
.end method

.method public getGame()Lcom/wandoujia/entities/game/GameDetailInfo;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->game:Lcom/wandoujia/entities/game/GameDetailInfo;

    return-object v0
.end method

.method public getGsfType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->gsfType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcons()Lcom/wandoujia/entities/app/IconSet;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->icons:Lcom/wandoujia/entities/app/IconSet;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->id:I

    return v0
.end method

.method public getImprUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->imprUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledCountStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->installedCountStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLikesCount()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->likesCount:I

    return v0
.end method

.method public getLikesRate()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->likesRate:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionGroups()Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    :cond_0
    const/4 v0, 0x0

    .line 488
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkDetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkDetailInfo;->getPermissionGroups()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenshots()Lcom/wandoujia/entities/app/ScreenShotSet;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->screenshots:Lcom/wandoujia/entities/app/ScreenShotSet;

    return-object v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->tagline:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/wandoujia/entities/app/IAppDetailInfo$ITag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleEn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->titleEn:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->updatedDate:J

    return-wide v0
.end method

.method public isAd()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->ad:Z

    return v0
.end method

.method public isFreeTraffic()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->isFreeTraffic:Z

    return v0
.end method

.method public isTrusted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 502
    iget v1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->trusted:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEditorComment(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->editorComment:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setExtra(Lcom/wandoujia/entities/app/Extra;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->extra:Lcom/wandoujia/entities/app/Extra;

    .line 226
    return-void
.end method

.method public setIsFreeTraffic(Z)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/wandoujia/entities/app/AppDetailInfo;->isFreeTraffic:Z

    .line 129
    return-void
.end method
