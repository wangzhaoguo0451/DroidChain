.class public Lcom/wandoujia/entities/app/AppLiteInfo;
.super Ljava/lang/Object;
.source "AppLiteInfo.java"

# interfaces
.implements Lcom/wandoujia/entities/app/IAppLiteInfo;
.implements Ljava/io/Serializable;


# static fields
.field public static final AD_TYPE_BRAND:I = 0x1

.field public static final NEW_APP:Ljava/lang/String; = "\u65b0\u54c1"

.field public static final RELEASE_FIRST:Ljava/lang/String; = "\u9996\u53d1"

.field public static final WANDOUBI:Ljava/lang/String; = "\u652f\u6301\u8c4c\u8c46\u5e01"

.field private static final serialVersionUID:J = -0x88a70f0a4058e51L


# instance fields
.field private action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

.field private ad:Z

.field private adType:I

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
            "Lcom/wandoujia/entities/app/ApkLiteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private appType:Ljava/lang/String;

.field private availableInfo:Ljava/lang/String;

.field private award:Lcom/wandoujia/entities/app/AwardLiteInfo;

.field private banner:Ljava/lang/String;

.field private cateAlias:Ljava/lang/String;

.field private cateName:Ljava/lang/String;

.field private cdkey:Ljava/lang/String;

.field private cdkeyId:Ljava/lang/String;

.field private changelog:Ljava/lang/String;

.field private commentInCard:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private detailParam:Ljava/lang/String;

.field private directions:Ljava/lang/String;

.field private editorComment:Ljava/lang/String;

.field private editorDate:J

.field private endDateStamp:J

.field private exchangeDateRange:Ljava/lang/String;

.field private exclusiveBadge:I

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

.field private feedDetail:Ljava/lang/String;

.field private giftId:J

.field private giftTitle:Ljava/lang/String;

.field private giftType:Ljava/lang/String;

.field private iconPath:Ljava/lang/String;

.field private icons:Lcom/wandoujia/entities/app/IconSet;

.field private imprUrl:Ljava/lang/String;

.field private installedCountStr:Ljava/lang/String;

.field private isApp:Z

.field private isFreeTraffic:Z

.field private likesRate:I

.field private packageName:Ljava/lang/String;

.field private pinYin:Ljava/lang/String;

.field private provideType:Ljava/lang/String;

.field private publishDate:J

.field private screenshots:Lcom/wandoujia/entities/app/AppLiteInfo$Screenshots;

.field private section_tagline:Ljava/lang/String;

.field private stat:Lcom/wandoujia/entities/app/StatLiteInfo;

.field private subject:Ljava/lang/String;

.field private tagline:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/AppLiteInfo$Tag;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private trusted:I

.field private useInfo:Lcom/wandoujia/entities/app/UseInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->isFreeTraffic:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->isApp:Z

    .line 467
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->isFreeTraffic:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->isApp:Z

    .line 442
    iput-boolean v1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->isApp:Z

    .line 443
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->cateAlias:Ljava/lang/String;

    .line 444
    iput-object p2, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->cateName:Ljava/lang/String;

    .line 445
    return-void
.end method


# virtual methods
.method public clone()Lcom/wandoujia/entities/app/AppLiteInfo;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/wandoujia/entities/app/AppLiteInfo;->clone()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/wandoujia/entities/app/AppLiteInfo;->clone()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

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
    .line 209
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apkObbs:Ljava/util/List;

    return-object v0
.end method

.method public getApks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ApkLiteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    return-object v0
.end method

.method public getAppGiftCdKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->cdkey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppGiftCdKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->cdkeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppGiftContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getAppGiftDirections()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->directions:Ljava/lang/String;

    return-object v0
.end method

.method public getAppGiftEndDateStamp()J
    .locals 2

    .prologue
    .line 665
    iget-wide v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->endDateStamp:J

    return-wide v0
.end method

.method public getAppGiftExchangeDateRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->exchangeDateRange:Ljava/lang/String;

    return-object v0
.end method

.method public getAppGiftId()J
    .locals 2

    .prologue
    .line 680
    iget-wide v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->giftId:J

    return-wide v0
.end method

.method public getAppGiftProvideType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->provideType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppGiftSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getAppGiftType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->giftType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getAppLiteAd()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->ad:Z

    return v0
.end method

.method public getAppLiteAdType()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->adType:I

    return v0
.end method

.method public getAppLiteAwardBlogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->award:Lcom/wandoujia/entities/app/AwardLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AwardLiteInfo;->getBlogTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLiteBanner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteCateAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->cateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteCateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->cateName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteChangelog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->changelog:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteCompatible()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 597
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 600
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getCompatible()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getAppLiteDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteDetailParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->detailParam:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteDisplayStatUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->imprUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteDownloadCountStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->installedCountStr:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteDownloadUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 375
    :cond_0
    const-string v0, ""

    .line 380
    :goto_0
    return-object v0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getDownloadUrl()Lcom/wandoujia/entities/app/DownloadUrl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 378
    const-string v0, ""

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getDownloadUrl()Lcom/wandoujia/entities/app/DownloadUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/DownloadUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppLiteEditorComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->editorComment:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteEditorDate()J
    .locals 2

    .prologue
    .line 576
    iget-wide v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->editorDate:J

    return-wide v0
.end method

.method public getAppLiteExclusiveBadge()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 550
    iget v1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->exclusiveBadge:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteGiftTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->giftTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->icons:Lcom/wandoujia/entities/app/IconSet;

    if-nez v0, :cond_0

    .line 348
    const-string v0, ""

    .line 350
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->icons:Lcom/wandoujia/entities/app/IconSet;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/IconSet;->getSuitableIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppLiteIncompatibleDetail()Ljava/util/List;
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
    .line 605
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 606
    :cond_0
    const/4 v0, 0x0

    .line 608
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getIncompatibleDetail()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppLiteIsAward()Z
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->award:Lcom/wandoujia/entities/app/AwardLiteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->award:Lcom/wandoujia/entities/app/AwardLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AwardLiteInfo;->getIssue()I

    move-result v0

    if-lez v0, :cond_0

    .line 582
    const/4 v0, 0x1

    .line 584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteIsRealApp()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->isApp:Z

    return v0
.end method

.method public getAppLiteIsSuperior()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 589
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 592
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getSuperior()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getAppLiteLikesRate()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->likesRate:I

    return v0
.end method

.method public getAppLiteMd5()Ljava/lang/String;
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 556
    :cond_0
    const/4 v0, 0x0

    .line 558
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getMd5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppLitePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLitePaidStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    :cond_0
    const/4 v0, 0x0

    .line 571
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getPaidType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppLitePinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->pinYin:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteRecReasonContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLiteRecReasonLabel()Ljava/util/List;
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
    .line 498
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLiteRecReasonType()I
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public getAppLiteSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 356
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getBytes()I

    move-result v0

    goto :goto_0
.end method

.method public getAppLiteTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteVerified()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 411
    :cond_0
    const-string v0, ""

    .line 413
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getVerifeid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppLiteVersionCode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 395
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getVersionCode()I

    move-result v0

    goto :goto_0
.end method

.method public getAppLiteVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 387
    :cond_0
    const-string v0, ""

    .line 389
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppLiteWeeklyDownloadCountStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->stat:Lcom/wandoujia/entities/app/StatLiteInfo;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->stat:Lcom/wandoujia/entities/app/StatLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/StatLiteInfo;->getWeeklyStr()Ljava/lang/String;

    move-result-object v0

    .line 512
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->availableInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getAward()Lcom/wandoujia/entities/app/AwardLiteInfo;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->award:Lcom/wandoujia/entities/app/AwardLiteInfo;

    return-object v0
.end method

.method public getBanner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getCateAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->cateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getCateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->cateName:Ljava/lang/String;

    return-object v0
.end method

.method public getChangelog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->changelog:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentInCard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->commentInCard:Ljava/lang/String;

    return-object v0
.end method

.method public getCreation()J
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getCreation()J

    move-result-wide v0

    .line 167
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    sget-object v0, Lcom/wandoujia/entities/app/RequestInfo;->APPLECORE_APP_DETAIL:Lcom/wandoujia/entities/app/RequestInfo;

    iget-object v1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/entities/app/RequestInfo;->getDetailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRecReason(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->editorComment:Ljava/lang/String;

    return-object v0
.end method

.method public getEditorDate()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->editorDate:J

    return-wide v0
.end method

.method public getExclusiveBadge()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->exclusiveBadge:I

    return v0
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
    .line 322
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->extensionPacks:Ljava/util/List;

    return-object v0
.end method

.method public getFeedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->feedDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->giftTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIcons()Lcom/wandoujia/entities/app/IconSet;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->icons:Lcom/wandoujia/entities/app/IconSet;

    return-object v0
.end method

.method public getImprUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->imprUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledCountStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->installedCountStr:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPinYin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->pinYin:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishDate()J
    .locals 2

    .prologue
    .line 712
    iget-wide v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->publishDate:J

    return-wide v0
.end method

.method public getScreenshots()Lcom/wandoujia/entities/app/AppLiteInfo$Screenshots;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->screenshots:Lcom/wandoujia/entities/app/AppLiteInfo$Screenshots;

    return-object v0
.end method

.method public getSection_tagline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->section_tagline:Ljava/lang/String;

    return-object v0
.end method

.method public getStat()Lcom/wandoujia/entities/app/StatLiteInfo;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->stat:Lcom/wandoujia/entities/app/StatLiteInfo;

    return-object v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->tagline:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/wandoujia/entities/app/IAppLiteInfo$ITag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUseInfo()Lcom/wandoujia/entities/app/UseInfo;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->useInfo:Lcom/wandoujia/entities/app/UseInfo;

    return-object v0
.end method

.method public isAd()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->ad:Z

    return v0
.end method

.method public isApp()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->isApp:Z

    return v0
.end method

.method public isFreeTraffic()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->isFreeTraffic:Z

    return v0
.end method

.method public isTrusted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 755
    iget v1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->trusted:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAvailableInfo(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->availableInfo:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public setChangelog(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->changelog:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->description:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setEditorDate(J)V
    .locals 1
    .parameter

    .prologue
    .line 234
    iput-wide p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->editorDate:J

    .line 235
    return-void
.end method

.method public setFeedDetail(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->feedDetail:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setIcons(Lcom/wandoujia/entities/app/IconSet;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->icons:Lcom/wandoujia/entities/app/IconSet;

    .line 275
    return-void
.end method

.method public setIsFreeTraffic(Z)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->isFreeTraffic:Z

    .line 184
    return-void
.end method

.method public setPinYin(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->pinYin:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setPublishDate(J)V
    .locals 1
    .parameter

    .prologue
    .line 716
    iput-wide p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->publishDate:J

    .line 717
    return-void
.end method

.method public setSection_tagline(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->section_tagline:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->title:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setUpgradeUrl(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 629
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getDownloadUrl()Lcom/wandoujia/entities/app/DownloadUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo;->apks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkLiteInfo;->getDownloadUrl()Lcom/wandoujia/entities/app/DownloadUrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/entities/app/DownloadUrl;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
