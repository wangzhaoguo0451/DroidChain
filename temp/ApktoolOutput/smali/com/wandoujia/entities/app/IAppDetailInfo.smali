.class public interface abstract Lcom/wandoujia/entities/app/IAppDetailInfo;
.super Ljava/lang/Object;
.source "IAppDetailInfo.java"


# virtual methods
.method public abstract getAdType()I
.end method

.method public abstract getApkObbs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ApkObbInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppDetailAdStatus()Ljava/lang/String;
.end method

.method public abstract getAppDetailCompatible()Z
.end method

.method public abstract getAppDetailDangerPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppDetailDescription()Ljava/lang/String;
.end method

.method public abstract getAppDetailDownloadCountStr()Ljava/lang/String;
.end method

.method public abstract getAppDetailDownloadUrl()Ljava/lang/String;
.end method

.method public abstract getAppDetailIcon()Ljava/lang/String;
.end method

.method public abstract getAppDetailIncompatibleDetail()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppDetailIsAd()Z
.end method

.method public abstract getAppDetailIsAward()Z
.end method

.method public abstract getAppDetailIsBeta()Z
.end method

.method public abstract getAppDetailMarket()Ljava/lang/String;
.end method

.method public abstract getAppDetailMd5()Ljava/lang/String;
.end method

.method public abstract getAppDetailNormalScreenshots()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppDetailPackageName()Ljava/lang/String;
.end method

.method public abstract getAppDetailPaidStatus()Ljava/lang/String;
.end method

.method public abstract getAppDetailPermissionLevel()Ljava/lang/String;
.end method

.method public abstract getAppDetailPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppDetailSafeStatus()Ljava/lang/String;
.end method

.method public abstract getAppDetailSecurityDetail()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/SecurityInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppDetailSize()I
.end method

.method public abstract getAppDetailSmallScreenshots()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppDetailSuperior()I
.end method

.method public abstract getAppDetailTitle()Ljava/lang/String;
.end method

.method public abstract getAppDetailVerified()I
.end method

.method public abstract getAppDetailVersionCode()I
.end method

.method public abstract getAppDetailVersionName()Ljava/lang/String;
.end method

.method public abstract getAppLiteDetailParam()Ljava/lang/String;
.end method

.method public abstract getAppLiteDisplayStatUrl()Ljava/lang/String;
.end method

.method public abstract getExtensionPacks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ExtensionPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTags()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/wandoujia/entities/app/IAppDetailInfo$ITag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAd()Z
.end method

.method public abstract isFreeTraffic()Z
.end method

.method public abstract isTrusted()Z
.end method
