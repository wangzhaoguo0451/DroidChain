.class public Lcom/wandoujia/appmanager/LocalAppInfo;
.super Ljava/lang/Object;
.source "LocalAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x24464db95330523fL


# instance fields
.field allSignatures:Ljava/lang/String;

.field dataDir:Ljava/lang/String;

.field firstInstallTime:J

.field isInstalledInternal:Z

.field isMovable:Z

.field isSystemApp:Z

.field public isUpgradeIgnored:Z

.field lastUpdateTime:J

.field public md5:Ljava/lang/String;

.field packageInstaller:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field preferredInstallLocation:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

.field signature:Ljava/lang/String;

.field public size:J

.field sourceDir:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public titlePinyinFirstChar:Ljava/lang/String;

.field public upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

.field public versionCode:I

.field versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareByUpgradeable(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/appmanager/LocalAppInfo;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 479
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isImportantUpgradable()Z

    move-result v2

    .line 480
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->isImportantUpgradable()Z

    move-result v3

    .line 483
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 484
    if-nez p2, :cond_1

    .line 485
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    .line 502
    :cond_0
    :goto_0
    return v0

    .line 487
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 489
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 490
    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    goto :goto_0

    .line 495
    :cond_3
    if-nez v2, :cond_0

    .line 497
    if-eqz v3, :cond_4

    move v0, v1

    .line 498
    goto :goto_0

    .line 502
    :cond_4
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getLastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getLastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/wandoujia/appmanager/LocalAppInfo;
    .locals 4

    .prologue
    .line 260
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-direct {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->title:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->titlePinyinFirstChar:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->titlePinyinFirstChar:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->packageName:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->md5:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->md5:Ljava/lang/String;

    .line 265
    iget-wide v2, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->size:J

    iput-wide v2, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->size:J

    .line 266
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->versionName:Ljava/lang/String;

    .line 267
    iget v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->versionCode:I

    iput v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->versionCode:I

    .line 268
    iget-boolean v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->isMovable:Z

    iput-boolean v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->isMovable:Z

    .line 269
    iget-boolean v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored:Z

    iput-boolean v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored:Z

    .line 270
    iget-boolean v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->isSystemApp:Z

    iput-boolean v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->isSystemApp:Z

    .line 271
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    .line 272
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->sourceDir:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->signature:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->signature:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->allSignatures:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->allSignatures:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->preferredInstallLocation:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->preferredInstallLocation:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    .line 276
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->dataDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->dataDir:Ljava/lang/String;

    .line 277
    iget-wide v2, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->lastUpdateTime:J

    iput-wide v2, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->lastUpdateTime:J

    .line 278
    iget-boolean v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->isInstalledInternal:Z

    iput-boolean v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->isInstalledInternal:Z

    .line 279
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->clone()Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 462
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/wandoujia/appmanager/LocalAppInfo;

    if-nez v0, :cond_1

    .line 463
    :cond_0
    const/4 v0, 0x0

    .line 470
    :goto_0
    return v0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->packageName:Ljava/lang/String;

    check-cast p1, Lcom/wandoujia/appmanager/LocalAppInfo;

    iget-object v1, p1, Lcom/wandoujia/appmanager/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 470
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAllSignatures()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->allSignatures:Ljava/lang/String;

    return-object v0
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->firstInstallTime:J

    return-wide v0
.end method

.method public getImportantLevel()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getImportantLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->lastUpdateTime:J

    return-wide v0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInstaller()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->packageInstaller:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredInstallLocation()Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->preferredInstallLocation:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->size:J

    return-wide v0
.end method

.method public getSourceDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitlePinyinFirstChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->titlePinyinFirstChar:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    return-object v0
.end method

.method public getUpgradeType()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->NONE:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getUpgradeType()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    move-result-object v0

    goto :goto_0
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
    .line 192
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getUpgradeTypes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 475
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isImportantUpgradable()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_0

    .line 162
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 163
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 164
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 165
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 166
    const/16 v3, 0xe

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 167
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->getExpireTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInstalledInternal()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->isInstalledInternal:Z

    return v0
.end method

.method public isMovable()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->isMovable:Z

    return v0
.end method

.method public isNotRecommendedUpgradable()Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getRecommendedType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOT_RECOMMEND"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRecommendedUpgradable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    if-nez v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getRecommendedType()Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v2, "STRONG_RECOMMEND"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "WARNNING"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSystemApp()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->isSystemApp:Z

    return v0
.end method

.method public isUpgradable()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpgradeIgnored()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored:Z

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->packageName:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->title:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setTitlePinyinFirstChar(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->titlePinyinFirstChar:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setUpgradeType(Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;)V
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->setUpgradeType(Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;)V

    goto :goto_0
.end method

.method public setUpgradeTypes(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->setUpgradeTypes(Ljava/lang/String;)V

    goto :goto_0
.end method
