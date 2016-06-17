.class public Lcom/wandoujia/entities/app/AppHistoryInfo;
.super Ljava/lang/Object;
.source "AppHistoryInfo.java"

# interfaces
.implements Lcom/wandoujia/entities/app/IAppLiteInfo;
.implements Ljava/io/Serializable;


# instance fields
.field private app:Lcom/wandoujia/entities/app/AppLiteInfo;

.field private userAppInfo:Lcom/wandoujia/entities/app/AppHistoryInfo$UserAppInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    .line 18
    iput-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->userAppInfo:Lcom/wandoujia/entities/app/AppHistoryInfo$UserAppInfo;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/entities/app/AppLiteInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->userAppInfo:Lcom/wandoujia/entities/app/AppHistoryInfo$UserAppInfo;

    .line 24
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
    .line 452
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApp()Lcom/wandoujia/entities/app/AppLiteInfo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    return-object v0
.end method

.method public getAppGiftCdKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppGiftCdKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppGiftContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppGiftDirections()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppGiftEndDateStamp()J
    .locals 2

    .prologue
    .line 389
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAppGiftExchangeDateRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppGiftId()J
    .locals 2

    .prologue
    .line 404
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAppGiftProvideType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppGiftSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppGiftType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLiteAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLiteAd()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteAd()Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteAdType()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteAdType()I

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteAwardBlogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteAwardBlogTitle()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteBanner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteBanner()Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteCateAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteCateAlias()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteCateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteCateName()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteChangelog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLiteCompatible()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteCompatible()Z

    move-result v0

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAppLiteDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteDescription()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteDetailParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteDetailParam()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteDisplayStatUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteDisplayStatUrl()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteDownloadCountStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteDownloadCountStr()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteEditorComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteEditorComment()Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteEditorDate()J
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteEditorDate()J

    move-result-wide v0

    .line 232
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteExclusiveBadge()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteExclusiveBadge()Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteGiftTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLiteIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIcon()Ljava/lang/String;

    move-result-object v0

    .line 47
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
    .line 261
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIncompatibleDetail()Ljava/util/List;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteIsAward()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIsAward()Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteIsRealApp()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIsRealApp()Z

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteIsSuperior()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIsSuperior()Z

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteLikesRate()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteLikesRate()I

    move-result v0

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteMd5()Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLitePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLitePackageName()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLitePaidStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLitePaidStatus()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLitePinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLitePinyin()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteRecReasonContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
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
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLiteRecReasonType()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getAppLiteSize()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteSize()I

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteTitle()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteVerified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteVerified()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteVersionCode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteVersionCode()I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteVersionName()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppLiteWeeklyDownloadCountStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteWeeklyDownloadCountStr()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppType()Ljava/lang/String;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreation()J
    .locals 2

    .prologue
    .line 462
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayRecReason(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 312
    const/4 v0, 0x0

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
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublishDate()J
    .locals 2

    .prologue
    .line 467
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
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
    .line 348
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTags()Ljava/util/List;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUseInfo()Lcom/wandoujia/entities/app/UseInfo;
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAppInfo()Lcom/wandoujia/entities/app/AppHistoryInfo$UserAppInfo;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->userAppInfo:Lcom/wandoujia/entities/app/AppHistoryInfo$UserAppInfo;

    return-object v0
.end method

.method public isFreeTraffic()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->isFreeTraffic()Z

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrusted()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->isTrusted()Z

    move-result v0

    .line 481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUpgradeUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0, p1}, Lcom/wandoujia/entities/app/AppLiteInfo;->setUpgradeUrl(Ljava/lang/String;)V

    .line 359
    :cond_0
    return-void
.end method
