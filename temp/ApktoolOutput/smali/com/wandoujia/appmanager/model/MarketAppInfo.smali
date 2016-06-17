.class public Lcom/wandoujia/appmanager/model/MarketAppInfo;
.super Ljava/lang/Object;
.source "MarketAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final REASON_HAS_POP_ADS:Ljava/lang/String; = "HAS_POP_ADS"

.field public static final REASON_NOT_SUPERIOR:Ljava/lang/String; = "NOT_SUPERIOR"

.field public static final REASON_SIGNATURE_NOT_MATCH:Ljava/lang/String; = "SIGNATURE_NOT_MATCH"

.field public static final REASON_SIGNATURE_NOT_OFFICIAL:Ljava/lang/String; = "SIGNATURE_NOT_OFFICIAL"

.field public static final REASON_SIGNATURE_OFFICICAL_UNKNOWN:Ljava/lang/String; = "SIGNATURE_OFFICICAL_UNKNOWN"

.field public static final TYPE_NOT_RECOMMEND:Ljava/lang/String; = "NOT_RECOMMEND"

.field public static final TYPE_STRONG_RECOMMEND:Ljava/lang/String; = "STRONG_RECOMMEND"

.field public static final TYPE_WARNNING:Ljava/lang/String; = "WARNNING"


# instance fields
.field private changeLog:Ljava/lang/String;

.field private detailUrl:Ljava/lang/String;

.field private developer:Ljava/lang/String;

.field private downloadCnt:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private fileMd5:Ljava/lang/String;

.field private hasPatch:Z

.field private iconPath:Ljava/lang/String;

.field importantLevel:I

.field private importantUpdate:Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

.field private isCerStrMatch:Z

.field private lastModified:J

.field private lastModifiedTime:Ljava/lang/String;

.field private market:Ljava/lang/String;

.field private notRecommendReason:Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;

.field private notificationModel:Lcom/wandoujia/push/protocol/NotificationModel;

.field private packageName:Ljava/lang/String;

.field private patchMd5:Ljava/lang/String;

.field private patchSize:I

.field private patchURL:Ljava/lang/String;

.field private recommendedType:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private superior:Z

.field private title:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->isCerStrMatch:Z

    .line 43
    iput-boolean v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->hasPatch:Z

    .line 215
    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/wandoujia/appmanager/model/MarketAppInfo;
    .locals 1
    .parameter

    .prologue
    .line 174
    const-class v0, Lcom/wandoujia/appmanager/model/MarketAppInfo;

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/JsonSerializer;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/model/MarketAppInfo;

    return-object v0
.end method

.method public static parseFromJsonObj(Lorg/json/JSONObject;)Lcom/wandoujia/appmanager/model/MarketAppInfo;
    .locals 5
    .parameter

    .prologue
    .line 178
    const-class v0, Lcom/wandoujia/appmanager/model/MarketAppInfo;

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/JsonSerializer;->fromJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/model/MarketAppInfo;

    .line 180
    const/4 v2, 0x0

    .line 182
    :try_start_0
    const-string v1, "notificationModel"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    new-instance v3, Lcvo;

    invoke-direct {v3}, Lcvo;-><init>()V

    .line 184
    const-class v4, Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v3, v1, v4}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/push/protocol/NotificationModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->setNotificationModel(Lcom/wandoujia/push/protocol/NotificationModel;)V

    .line 191
    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getChangeLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->changeLog:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->changeLog:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->changeLog:Ljava/lang/String;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->changeLog:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->detailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->developer:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->downloadCnt:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->fileMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImportantLevel()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->importantLevel:I

    return v0
.end method

.method public getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->importantUpdate:Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->lastModified:J

    return-wide v0
.end method

.method public getLastModifiedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->lastModifiedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMarket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getNotRecommendReason()Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->notRecommendReason:Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;

    return-object v0
.end method

.method public getNotificationModel()Lcom/wandoujia/push/protocol/NotificationModel;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->notificationModel:Lcom/wandoujia/push/protocol/NotificationModel;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->patchMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchSize()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->patchSize:I

    return v0
.end method

.method public getPatchURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->patchURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->recommendedType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isCerStrMatch()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->isCerStrMatch:Z

    return v0
.end method

.method public isHasPatch()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->hasPatch:Z

    return v0
.end method

.method public isSuperior()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->superior:Z

    return v0
.end method

.method public setNotificationModel(Lcom/wandoujia/push/protocol/NotificationModel;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->notificationModel:Lcom/wandoujia/push/protocol/NotificationModel;

    .line 64
    return-void
.end method

.method public setRecommendedType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo;->recommendedType:Ljava/lang/String;

    .line 147
    return-void
.end method
