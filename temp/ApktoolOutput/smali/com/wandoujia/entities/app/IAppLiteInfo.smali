.class public interface abstract Lcom/wandoujia/entities/app/IAppLiteInfo;
.super Ljava/lang/Object;
.source "IAppLiteInfo.java"


# virtual methods
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

.method public abstract getAppGiftCdKey()Ljava/lang/String;
.end method

.method public abstract getAppGiftCdKeyId()Ljava/lang/String;
.end method

.method public abstract getAppGiftContent()Ljava/lang/String;
.end method

.method public abstract getAppGiftDirections()Ljava/lang/String;
.end method

.method public abstract getAppGiftEndDateStamp()J
.end method

.method public abstract getAppGiftExchangeDateRange()Ljava/lang/String;
.end method

.method public abstract getAppGiftId()J
.end method

.method public abstract getAppGiftProvideType()Ljava/lang/String;
.end method

.method public abstract getAppGiftSubject()Ljava/lang/String;
.end method

.method public abstract getAppGiftType()Ljava/lang/String;
.end method

.method public abstract getAppLiteAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
.end method

.method public abstract getAppLiteAd()Z
.end method

.method public abstract getAppLiteAdType()I
.end method

.method public abstract getAppLiteAwardBlogTitle()Ljava/lang/String;
.end method

.method public abstract getAppLiteBanner()Ljava/lang/String;
.end method

.method public abstract getAppLiteCateAlias()Ljava/lang/String;
.end method

.method public abstract getAppLiteCateName()Ljava/lang/String;
.end method

.method public abstract getAppLiteChangelog()Ljava/lang/String;
.end method

.method public abstract getAppLiteCompatible()Z
.end method

.method public abstract getAppLiteDescription()Ljava/lang/String;
.end method

.method public abstract getAppLiteDetailParam()Ljava/lang/String;
.end method

.method public abstract getAppLiteDisplayStatUrl()Ljava/lang/String;
.end method

.method public abstract getAppLiteDownloadCountStr()Ljava/lang/String;
.end method

.method public abstract getAppLiteDownloadUrl()Ljava/lang/String;
.end method

.method public abstract getAppLiteEditorComment()Ljava/lang/String;
.end method

.method public abstract getAppLiteEditorDate()J
.end method

.method public abstract getAppLiteExclusiveBadge()Z
.end method

.method public abstract getAppLiteGiftTitle()Ljava/lang/String;
.end method

.method public abstract getAppLiteIcon()Ljava/lang/String;
.end method

.method public abstract getAppLiteIncompatibleDetail()Ljava/util/List;
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

.method public abstract getAppLiteIsAward()Z
.end method

.method public abstract getAppLiteIsRealApp()Z
.end method

.method public abstract getAppLiteIsSuperior()Z
.end method

.method public abstract getAppLiteLikesRate()I
.end method

.method public abstract getAppLiteMd5()Ljava/lang/String;
.end method

.method public abstract getAppLitePackageName()Ljava/lang/String;
.end method

.method public abstract getAppLitePaidStatus()Ljava/lang/String;
.end method

.method public abstract getAppLitePinyin()Ljava/lang/String;
.end method

.method public abstract getAppLiteRecReasonContent()Ljava/lang/String;
.end method

.method public abstract getAppLiteRecReasonLabel()Ljava/util/List;
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

.method public abstract getAppLiteRecReasonType()I
.end method

.method public abstract getAppLiteSize()I
.end method

.method public abstract getAppLiteTitle()Ljava/lang/String;
.end method

.method public abstract getAppLiteVerified()Ljava/lang/String;
.end method

.method public abstract getAppLiteVersionCode()I
.end method

.method public abstract getAppLiteVersionName()Ljava/lang/String;
.end method

.method public abstract getAppLiteWeeklyDownloadCountStr()Ljava/lang/String;
.end method

.method public abstract getAppType()Ljava/lang/String;
.end method

.method public abstract getAvailableInfo()Ljava/lang/String;
.end method

.method public abstract getCreation()J
.end method

.method public abstract getDetailUrl()Ljava/lang/String;
.end method

.method public abstract getDisplayRecReason(Landroid/content/Context;)Ljava/lang/String;
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

.method public abstract getFeedDetail()Ljava/lang/String;
.end method

.method public abstract getPublishDate()J
.end method

.method public abstract getTagline()Ljava/lang/String;
.end method

.method public abstract getTags()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/wandoujia/entities/app/IAppLiteInfo$ITag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUseInfo()Lcom/wandoujia/entities/app/UseInfo;
.end method

.method public abstract isFreeTraffic()Z
.end method

.method public abstract isTrusted()Z
.end method

.method public abstract setUpgradeUrl(Ljava/lang/String;)V
.end method
