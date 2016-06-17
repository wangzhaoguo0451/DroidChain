.class public Lcom/wandoujia/entities/app/AppRecommendInfo;
.super Ljava/lang/Object;
.source "AppRecommendInfo.java"

# interfaces
.implements Lcom/wandoujia/entities/app/IAppLiteInfo;
.implements Ljava/io/Serializable;


# static fields
.field public static final RECOMMEND_TYPE_APP:I = 0x1

.field public static final RECOMMEND_TYPE_FRIENDS:I = 0x3

.field public static final RECOMMEND_TYPE_HOT:I = 0x2

.field public static final RECOMMEND_TYPE_NONE:I


# instance fields
.field private app:Lcom/wandoujia/entities/app/AppLiteInfo;

.field private recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 524
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getApkObbs()Ljava/util/List;

    move-result-object v0

    .line 527
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApp()Lcom/wandoujia/entities/app/AppLiteInfo;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    return-object v0
.end method

.method public getAppGiftCdKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftCdKey()Ljava/lang/String;

    move-result-object v0

    .line 422
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppGiftCdKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftCdKeyId()Ljava/lang/String;

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppGiftContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftContent()Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppGiftDirections()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftDirections()Ljava/lang/String;

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppGiftEndDateStamp()J
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftEndDateStamp()J

    move-result-wide v0

    .line 452
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getAppGiftExchangeDateRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppGiftId()J
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftId()J

    move-result-wide v0

    .line 476
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getAppGiftProvideType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppGiftSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftSubject()Ljava/lang/String;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppGiftType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftType()Ljava/lang/String;

    move-result-object v0

    .line 414
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLiteAd()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteAd()Z

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteAdType()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteAdType()I

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteAwardBlogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteAwardBlogTitle()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteBanner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteBanner()Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteCateAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteCateAlias()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteCateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteCateName()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteChangelog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLiteCompatible()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteCompatible()Z

    move-result v0

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAppLiteDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteDescription()Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteDetailParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteDetailParam()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteDisplayStatUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteDisplayStatUrl()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteDownloadCountStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteDownloadCountStr()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteEditorComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteEditorComment()Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteEditorDate()J
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteEditorDate()J

    move-result-wide v0

    .line 334
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteExclusiveBadge()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteExclusiveBadge()Z

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteGiftTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLiteIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIcon()Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 363
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIncompatibleDetail()Ljava/util/List;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteIsAward()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIsAward()Z

    move-result v0

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteIsRealApp()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIsRealApp()Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteIsSuperior()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIsSuperior()Z

    move-result v0

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteLikesRate()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteLikesRate()I

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteMd5()Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLitePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLitePackageName()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLitePaidStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLitePaidStatus()Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLitePinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLitePinyin()Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteRecReasonContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/RecReasonLiteInfo;->getReasonContent()Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 212
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/RecReasonLiteInfo;->getLabel()Ljava/util/List;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteRecReasonType()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/RecReasonLiteInfo;->getReasonType()I

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteSize()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteSize()I

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteTitle()Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteVerified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteVerified()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteVersionCode()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteVersionCode()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteVersionName()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteWeeklyDownloadCountStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteWeeklyDownloadCountStr()Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppType()Ljava/lang/String;

    move-result-object v0

    .line 484
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreation()J
    .locals 2

    .prologue
    .line 538
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayRecReason(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 220
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/RecReasonLiteInfo;->getReasonType()I

    move-result v0

    .line 223
    packed-switch v0, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    return-object v1

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/RecReasonLiteInfo;->getReasonContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/RecReasonLiteInfo;->getReasonContent()Ljava/lang/String;

    move-result-object v0

    .line 229
    sget v1, Lcom/wandoujia/entities/R$string;->recommend_by:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/RecReasonLiteInfo;->getLabel()Ljava/util/List;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 236
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    if-eqz v0, :cond_0

    .line 238
    const-string v2, "hot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    sget v0, Lcom/wandoujia/entities/R$string;->recommend_hot:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 242
    :cond_1
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 244
    if-lez v2, :cond_4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_4

    .line 246
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 248
    if-eqz v2, :cond_5

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 250
    if-eqz v2, :cond_5

    .line 251
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 254
    :goto_1
    if-eq v2, v3, :cond_4

    .line 255
    const-string v3, "downloadChange"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    sget v0, Lcom/wandoujia/entities/R$string;->recommend_download_change:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 261
    :cond_2
    const-string v3, "award"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 262
    sget v0, Lcom/wandoujia/entities/R$string;->recommend_award:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 266
    :cond_3
    const-string v3, "rating"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    sget v0, Lcom/wandoujia/entities/R$string;->recommend_rating:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 274
    goto/16 :goto_0

    .line 279
    :pswitch_3
    sget v0, Lcom/wandoujia/entities/R$string;->wan_recommend_card_content:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
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
    .line 444
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublishDate()J
    .locals 2

    .prologue
    .line 543
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRecReason()Lcom/wandoujia/entities/app/RecReasonLiteInfo;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->recReason:Lcom/wandoujia/entities/app/RecReasonLiteInfo;

    return-object v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

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
    .line 403
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTags()Ljava/util/List;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUseInfo()Lcom/wandoujia/entities/app/UseInfo;
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFreeTraffic()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->isFreeTraffic()Z

    move-result v0

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrusted()Z
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->isTrusted()Z

    move-result v0

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppLitePinYin(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0, p1}, Lcom/wandoujia/entities/app/AppLiteInfo;->setPinYin(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setUpgradeUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppRecommendInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0, p1}, Lcom/wandoujia/entities/app/AppLiteInfo;->setUpgradeUrl(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method
