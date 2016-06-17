.class public final enum Lcom/wandoujia/p4/account/constant/UserCenterOptFields;
.super Ljava/lang/Enum;
.source "UserCenterOptFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/account/constant/UserCenterOptFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

.field public static final enum USER_CENTER_COMMENT_LITE:Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

.field public static final enum USER_CENTER_HISTORY_LITE:Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

.field public static final enum USER_VIDEO_HISTORY_LITE:Lcom/wandoujia/p4/account/constant/UserCenterOptFields;


# instance fields
.field private final optionFields:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    const-string v1, "USER_CENTER_COMMENT_LITE"

    const-string v2, "appInfo.apks.compatible,appInfo.apks.incompatibleDetail,appInfo.title,appInfo.packageName,appInfo.ad,appInfo.icons.px256,appInfo.installedCountStr,appInfo.apks.downloadUrl.url,appInfo.apks.bytes,appInfo.apks.verified,appInfo.apks.versionName,appInfo.apks.versionCode,appInfo.detailParam,appInfo.imprUrl,appInfo.stat.weeklyStr,appInfo.exclusiveBadge,appInfo.apks.md5,appInfo.editorComment,appInfo.description,appInfo.apks.paidType,appInfo.likesRate,appInfo.apks.superior,extensionPacks.*,tags.*,commentsInfo.*"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;->USER_CENTER_COMMENT_LITE:Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    .line 10
    new-instance v0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    const-string v1, "USER_CENTER_HISTORY_LITE"

    const-string v2, "appInfo.app.apks.compatible,appInfo.app.apks.incompatibleDetail,appInfo.app.title,appInfo.app.packageName,appInfo.app.ad,appInfo.app.icons.px256,appInfo.app.installedCountStr,appInfo.app.apks.downloadUrl.url,appInfo.app.apks.bytes,appInfo.app.apks.verified,appInfo.app.apks.versionName,appInfo.app.apks.versionCode,appInfo.app.detailParam,appInfo.app.imprUrl,appInfo.app.stat.weeklyStr,appInfo.app.exclusiveBadge,appInfo.app.apks.md5,appInfo.app.editorComment,appInfo.app.description,appInfo.app.apks.paidType,appInfo.app.likesRate,appInfo.app.apks.superior,extensionPacks.*,tags.*,appInfo.userAppInfo.installedTime,appInfo.userAppInfo.packageName,commentsInfo.*"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;->USER_CENTER_HISTORY_LITE:Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    .line 13
    new-instance v0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    const-string v1, "USER_VIDEO_HISTORY_LITE"

    const-string v2, "videoInfo.id, videoInfo.title, videoInfo.description, videoInfo.type, videoInfo.providerNames, videoInfo.noPlayInfos, videoInfo.noDownloadUrls, videoInfo.cover.*, videoInfo.videoEpisodes.*, timeStamp"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;->USER_VIDEO_HISTORY_LITE:Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    sget-object v1, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;->USER_CENTER_COMMENT_LITE:Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;->USER_CENTER_HISTORY_LITE:Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;->USER_VIDEO_HISTORY_LITE:Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;->$VALUES:[Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;->optionFields:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/account/constant/UserCenterOptFields;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/account/constant/UserCenterOptFields;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;->$VALUES:[Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/account/constant/UserCenterOptFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/account/constant/UserCenterOptFields;

    return-object v0
.end method


# virtual methods
.method public final getOptionFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/p4/account/constant/UserCenterOptFields;->optionFields:Ljava/lang/String;

    return-object v0
.end method
