.class public Lcom/wandoujia/entities/app/LocalAppLiteInfo;
.super Ljava/lang/Object;
.source "LocalAppLiteInfo.java"

# interfaces
.implements Lcom/wandoujia/entities/app/IAppLiteInfo;
.implements Ljava/io/Serializable;


# instance fields
.field private ad:Z

.field private adType:I

.field private appType:Ljava/lang/String;

.field private awardBlogTitle:Ljava/lang/String;

.field private banner:Ljava/lang/String;

.field private cateAlias:Ljava/lang/String;

.field private cateName:Ljava/lang/String;

.field private compatible:Z

.field private description:Ljava/lang/String;

.field private detailParam:Ljava/lang/String;

.field private detailUrl:Ljava/lang/String;

.field private displayStatUrl:Ljava/lang/String;

.field private downloadCountStr:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private editorCommit:Ljava/lang/String;

.field private editorDate:J

.field private exclusiveBadge:Z

.field private icon:Ljava/lang/String;

.field private incompatibleDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAward:Z

.field private isFreeTraffic:Z

.field private isRealApp:Z

.field private isSuperior:Z

.field private likesRate:I

.field private md5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private paidStatus:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;

.field private recReason:Ljava/lang/String;

.field private recReasonContent:Ljava/lang/String;

.field private recReasonLabel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recReasonType:I

.field private size:I

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/IAppLiteInfo$ITag;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private verified:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;

.field private weeklyDownloadCountStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->title:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->icon:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->downloadCountStr:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->downloadUrl:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->versionName:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->packageName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->verified:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->detailUrl:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->pinyin:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->cateAlias:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->cateName:Ljava/lang/String;

    .line 30
    iput-boolean v2, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->isRealApp:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->displayStatUrl:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->detailParam:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->awardBlogTitle:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->recReasonContent:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->recReasonLabel:Ljava/util/List;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->recReason:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->weeklyDownloadCountStr:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->banner:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->md5:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->editorCommit:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->compatible:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->incompatibleDetail:Ljava/util/List;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->paidStatus:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->description:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->tags:Ljava/util/List;

    .line 51
    iput-boolean v1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->isFreeTraffic:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->type:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->isAward:Z

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->appType:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAppGiftCdKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string v0, ""

    return-object v0
.end method

.method public getAppGiftCdKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    const-string v0, ""

    return-object v0
.end method

.method public getAppGiftContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, ""

    return-object v0
.end method

.method public getAppGiftDirections()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const-string v0, ""

    return-object v0
.end method

.method public getAppGiftEndDateStamp()J
    .locals 2

    .prologue
    .line 278
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAppGiftExchangeDateRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    const-string v0, ""

    return-object v0
.end method

.method public getAppGiftId()J
    .locals 2

    .prologue
    .line 293
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAppGiftProvideType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    const-string v0, ""

    return-object v0
.end method

.method public getAppGiftSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string v0, ""

    return-object v0
.end method

.method public getAppGiftType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string v0, ""

    return-object v0
.end method

.method public getAppLiteAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLiteAd()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->ad:Z

    return v0
.end method

.method public getAppLiteAdType()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->adType:I

    return v0
.end method

.method public getAppLiteAwardBlogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->awardBlogTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteBanner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteCateAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->cateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteCateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->cateName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteChangelog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-string v0, ""

    return-object v0
.end method

.method public getAppLiteCompatible()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->compatible:Z

    return v0
.end method

.method public getAppLiteDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteDetailParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->detailParam:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteDisplayStatUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->displayStatUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteDownloadCountStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->downloadCountStr:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteEditorComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->editorCommit:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteEditorDate()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->editorDate:J

    return-wide v0
.end method

.method public getAppLiteExclusiveBadge()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->exclusiveBadge:Z

    return v0
.end method

.method public getAppLiteGiftTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    const-string v0, ""

    return-object v0
.end method

.method public getAppLiteIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteIncompatibleDetail()Ljava/util/List;
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
    .line 223
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->incompatibleDetail:Ljava/util/List;

    return-object v0
.end method

.method public getAppLiteIsAward()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->isAward:Z

    return v0
.end method

.method public getAppLiteIsRealApp()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->isRealApp:Z

    return v0
.end method

.method public getAppLiteIsSuperior()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->isSuperior:Z

    return v0
.end method

.method public getAppLiteLikesRate()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->likesRate:I

    return v0
.end method

.method public getAppLiteMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLitePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLitePaidStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->paidStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLitePinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteRecReasonContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->recReasonContent:Ljava/lang/String;

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
    .line 168
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->recReasonLabel:Ljava/util/List;

    return-object v0
.end method

.method public getAppLiteRecReasonType()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->recReasonType:I

    return v0
.end method

.method public getAppLiteSize()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->size:I

    return v0
.end method

.method public getAppLiteTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteVerified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->verified:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteVersionCode()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->versionCode:I

    return v0
.end method

.method public getAppLiteVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLiteWeeklyDownloadCountStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->weeklyDownloadCountStr:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    const-string v0, ""

    return-object v0
.end method

.method public getCreation()J
    .locals 2

    .prologue
    .line 508
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->detailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayRecReason(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 173
    const-string v0, ""

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
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getFeedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const-string v0, ""

    return-object v0
.end method

.method public getPublishDate()J
    .locals 2

    .prologue
    .line 513
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    const-string v0, ""

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
    .line 243
    iget-object v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getUseInfo()Lcom/wandoujia/entities/app/UseInfo;
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFreeTraffic()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->isFreeTraffic:Z

    return v0
.end method

.method public isTrusted()Z
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public setAd(Z)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->ad:Z

    .line 374
    return-void
.end method

.method public setAdType(I)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->adType:I

    .line 378
    return-void
.end method

.method public setAppType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->appType:Ljava/lang/String;

    .line 494
    return-void
.end method

.method public setAwardBlogTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->awardBlogTitle:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setBanner(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->banner:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setCateAlias(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->cateAlias:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setCateName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->cateName:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setCompatible(Z)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->compatible:Z

    .line 458
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->description:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setDetailParam(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->detailParam:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setDetailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->detailUrl:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setDisplayStatUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->displayStatUrl:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setDownloadCountStr(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->downloadCountStr:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->downloadUrl:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setEditorCommit(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->editorCommit:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setEditorDate(J)V
    .locals 1
    .parameter

    .prologue
    .line 449
    iput-wide p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->editorDate:J

    .line 450
    return-void
.end method

.method public setExclusiveBadge(Z)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->exclusiveBadge:Z

    .line 438
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->icon:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setIncompatibleDetail(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->incompatibleDetail:Ljava/util/List;

    .line 462
    return-void
.end method

.method public setIsAward(Z)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-boolean p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->isAward:Z

    .line 490
    return-void
.end method

.method public setIsFreeTraffic(Z)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->isFreeTraffic:Z

    .line 482
    return-void
.end method

.method public setIsRealApp(Z)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->isRealApp:Z

    .line 398
    return-void
.end method

.method public setIsSuperior(Z)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->isSuperior:Z

    .line 454
    return-void
.end method

.method public setLikesRate(I)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->likesRate:I

    .line 474
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->md5:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->packageName:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setPaidStatus(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->paidStatus:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->pinyin:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setRecReason(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->recReason:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setRecReasonContent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->recReasonContent:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setRecReasonLabel(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->recReasonLabel:Ljava/util/List;

    .line 422
    return-void
.end method

.method public setRecReasonType(I)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->recReasonType:I

    .line 414
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->size:I

    .line 346
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
            "Lcom/wandoujia/entities/app/IAppLiteInfo$ITag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->tags:Ljava/util/List;

    .line 478
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->title:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->type:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setUpgradeUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    return-void
.end method

.method public setVerified(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->verified:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->versionCode:I

    .line 362
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->versionName:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setWeeklyDownloadCountStr(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/wandoujia/entities/app/LocalAppLiteInfo;->weeklyDownloadCountStr:Ljava/lang/String;

    .line 430
    return-void
.end method
