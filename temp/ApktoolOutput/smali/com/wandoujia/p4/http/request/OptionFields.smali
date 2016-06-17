.class public final enum Lcom/wandoujia/p4/http/request/OptionFields;
.super Ljava/lang/Enum;
.source "OptionFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/http/request/OptionFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum APPS_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum APP_DESCRIPTION:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum APP_SPECIAL_LIST:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum APP_SPECIAL_LIST_RELATED:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum APP_SPECIAL_SUB_CATEGORY:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum APP_WITH_RANKING:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum AUTOINSTALL:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum AWARD:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum BANNER:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum CATEGORY:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum CATEGORY_SUMMARY:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum DARK_KNOWLEDGE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum DETAIL:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum EBOOK_LIST_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum EBOOK_LIST_RECOMMENDATIONS:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum FRIENDS:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum HISTORY:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum LITE_APP_FEEDS:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum LITE_APP_MUST_HAVE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum LITE_BACKUP:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum LITE_DETAIL:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum MIX_SEARCH:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum QR_DETAIL:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum RECOMMEND:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum SEARCH_APP:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum TAG:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum TAG_WITH_CATEGORY:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum VIDEO_COMIC_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum VIDEO_DETAIL_EPISODES:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum VIDEO_DETAIL_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum VIDEO_DETAIL_MICRO:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum VIDEO_EPISODES_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum VIDEO_MOVIE_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum VIDEO_SEARCH_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum VIDEO_SHORT_VIDEO_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum VIDEO_SUBSCRIBE_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum VIDEO_TV_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum VIDEO_VARIETY_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum WALLPAPER_CATEGORIES:Lcom/wandoujia/p4/http/request/OptionFields;

.field public static final enum WALLPAPER_LIST:Lcom/wandoujia/p4/http/request/OptionFields;


# instance fields
.field private final optionFields:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "DETAIL"

    const-string v2, "apks.compatible,apks.incompatibleDetail,ad,appType,apks.adsType,apks.beta,apks.bytes,apks.downloadUrl.*,apks.size,apks.versionCode,apks.versionName,apks.securityStatus,apks.md5,apks.permissionLevel,apks.superior,apks.dangerousPermissions,apks.permissions,apks.securityDetail.*,apks.resolution,categories.alias,categories.name,description,title,updatedDate,commentsCount,likeCount,dislikesCount,installedCountStr,icons.px256,packageName,id,likesRate,screenshots.*,apks.verified,apks.paidType,imprUrl,banner,tags.*,giftBeans.*,extensionPacks.*,award.issue,apkObbs.*"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->DETAIL:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 11
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "LITE"

    const-string v2, "apks.compatible,apks.incompatibleDetail,title,packageName,ad,appType,icons.px256,installedCountStr,apks.packageName,apks.downloadUrl.*,apks.bytes,apks.verified,apks.versionName,apks.versionCode,detailParam,imprUrl,stat.weeklyStr,exclusiveBadge,apks.md5,editorComment,description,apks.paidType,likesRate,apks.superior,extensionPacks.*,tags.*,award.issue,changelog"

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 13
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "APPS_LITE"

    const-string v2, "apps.apks.compatible,apps.apks.incompatibleDetail,apps.title,apps.packageName,apps.ad,apps.appType,apps.icons.px256,apps.installedCountStr,apps.apks.downloadUrl.url,apps.apks.bytes,apps.apks.verified,apps.apks.versionName,apps.apks.versionCode,apps.detailParam,apps.imprUrl,apps.stat.weeklyStr,apps.exclusiveBadge,apps.apks.md5,apps.editorComment,apps.description,apps.apks.paidType,apps.likesRate,apps.apks.superior,apps.extensionPacks.*,apps.tags.*,apkObbs.*"

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->APPS_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 15
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "CATEGORY"

    const-string v2, "apps.apks.compatible,apps.apks.incompatibleDetail,apps.title,apps.packageName,apps.ad,apps.appType,apps.icons.px256,apps.installedCountStr,apps.apks.downloadUrl.url,apps.apks.bytes,apps.apks.verified,apps.apks.versionName,apps.apks.versionCode,category.alias,category.name,apps.detailParam,apps.imprUrl,apps.apks.md5,apps.editorComment,apps.description,apps.apks.paidType,apps.likesRate,apps.apks.superior,apps.extensionPacks.*,apps.tags.*,apps.award.issue,apkObbs.*"

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->CATEGORY:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 17
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "TAG"

    const-string v2, "apps.apks.creation,apps.apks.compatible,apps.apks.incompatibleDetail,apps.title,apps.packageName,apps.ad,apps.appType,apps.icons.px256,apps.installedCountStr,apps.apks.downloadUrl.url,apps.apks.bytes,apps.apks.verified,apps.apks.versionName,apps.apks.versionCode,category.alias,category.name,apps.detailParam,apps.imprUrl,apps.apks.md5,apps.editorComment,apps.description,apps.apks.paidType,apps.likesRate,apps.apks.superior,apps.extensionPacks.*,apps.tags.*,apps.award.issue,apkObbs.*,apps.publishDate"

    invoke-direct {v0, v1, v9, v2}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->TAG:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "TAG_WITH_CATEGORY"

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "category.*,specialApps"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/wandoujia/p4/http/request/OptionFields;->TAG:Lcom/wandoujia/p4/http/request/OptionFields;

    iget-object v4, v4, Lcom/wandoujia/p4/http/request/OptionFields;->optionFields:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->TAG_WITH_CATEGORY:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 23
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "APP_SPECIAL_SUB_CATEGORY"

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tag.*,availableApps,specialApps.app.apks.creation,specialApps.app.apks.compatible,specialApps.app.apks.incompatibleDetail,specialApps.app.title,specialApps.app.packageName,specialApps.app.ad,specialApps.app.appType,specialApps.app.icons.px256,specialApps.app.installedCountStr,specialApps.app.apks.downloadUrl.url,specialApps.app.apks.bytes,specialApps.app.apks.verified,specialApps.app.apks.versionName,specialApps.app.apks.versionCode,specialApps.app.detailParam,specialApps.app.imprUrl,specialApps.app.apks.md5,specialApps.app.editorComment,specialApps.app.description,specialApps.app.apks.paidType,specialApps.app.likesRate,specialApps.app.apks.superior,specialApps.app.extensionPacks.*,specialApps.app.tags.*,specialApps.app.award.issue,specialApps.app.publishDate,specialApps.banner,specialApps.highlight,specialApps.snippet,specialApps.isAvailable,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/wandoujia/p4/http/request/OptionFields;->TAG_WITH_CATEGORY:Lcom/wandoujia/p4/http/request/OptionFields;

    invoke-virtual {v4}, Lcom/wandoujia/p4/http/request/OptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->APP_SPECIAL_SUB_CATEGORY:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 24
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "CATEGORY_SUMMARY"

    const/4 v2, 0x7

    const-string v3, "category.*,related_categories.*,select.*,summary.category.*,summary.apps.apks.compatible,summary.apps.apks.incompatibleDetail,summary.apps.title,summary.apps.packageName,summary.apps.ad,apps.appType,summary.apps.icons.px256,summary.apps.installedCountStr,summary.apps.apks.downloadUrl.url,summary.apps.apks.bytes,summary.apps.apks.verified,summary.apps.apks.versionName,summary.apps.apks.versionCode,summary.apps.detailParam,summary.apps.imprUrl,summary.apps.stat.weeklyStr,summary.apps.exclusiveBadge,summary.apps.apks.md5,summary.apps.editorComment,summary.apps.description,summary.apps.apks.paidType,summary.apps.likesRate,summary.apps.apks.superior,summary.apps.extensionPacks.*,summary.apps.tags.*,summary.apkObbs.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->CATEGORY_SUMMARY:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 25
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "APP_WITH_RANKING"

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "curAlbum.*,albums.*,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/wandoujia/p4/http/request/OptionFields;->APPS_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    iget-object v4, v4, Lcom/wandoujia/p4/http/request/OptionFields;->optionFields:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->APP_WITH_RANKING:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 26
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "RECOMMEND"

    const/16 v2, 0x9

    const-string v3, "app.apks.compatible,app.apks.incompatibleDetail,app.title,apps.appType,app.packageName,app.description,app.ad,app.icons.px256,app.installedCountStr,app.apks.downloadUrl.url,app.apks.bytes,app.apks.verified,app.apks.versionName,app.apks.versionCode,app.detailParam,app.imprUrl,recReason.reasonType,recReason.label,recReason.reasonContent,app.exclusiveBadge,app.apks.md5,apps.apks.paidType,app.likesRate,app.apks.superior,app.extensionPacks.*,app.tags.*,apkObbs.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->RECOMMEND:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 28
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "HISTORY"

    const/16 v2, 0xa

    const-string v3, "app.apks.compatible,app.apks.incompatibleDetail,app.title,app.packageName,app.ad,app.icons.px256,app.installedCountStr,app.appType,app.apks.downloadUrl.url,app.apks.bytes,app.apks.verified,app.apks.versionName,app.apks.versionCode,app.detailParam,app.imprUrl,recReason.reasonType,recReason.label,recReason.reasonContent,app.exclusiveBadge,app.apks.md5,apps.apks.paidType,app.likesRate,app.apks.superior,userAppInfo.installedTime,app.extensionPacks.*,tags.*,apkObbs.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->HISTORY:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 30
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "AWARD"

    const/16 v2, 0xb

    const-string v3, "apks.compatible,apks.incompatibleDetail,title,packageName,ad,appType,icons.px256,installedCountStr,apks.downloadUrl.url,apks.bytes,apks.verified,apks.versionName,apks.versionCode,detailParam,imprUrl,apks.md5,editorComment,description,apks.paidType,likesRate,apks.superior,extensionPacks.*,tags.*,award.issue,apkObbs.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->AWARD:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 32
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "FRIENDS"

    const/16 v2, 0xc

    const-string v3, "apks.compatible,apks.incompatibleDetail,title,packageName,ad,appType,icons.px256,installedCountStr,apks.downloadUrl.url,apks.bytes,apks.verified,apks.versionName,apks.versionCode,detailParam,stat.weeklyStr,exclusiveBadge,apks.md5,editorComment,description,apks.paidType,likesRate,apks.superior,extensionPacks.*,tags.*,apkObbs.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->FRIENDS:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 34
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "BANNER"

    const/16 v2, 0xd

    const-string v3, "apks.compatible,apks.incompatibleDetail,title,packageName,ad,appType,icons.px256,installedCountStr,apks.downloadUrl.url,apks.bytes,apks.verified,apks.versionName,apks.versionCode,detailParam,imprUrl,stat.weeklyStr,banner,apks.md5,apks.paidType,likesRate,apks.superior,extensionPacks.*,apkObbs.*,apkObbs.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->BANNER:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 36
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "LITE_DETAIL"

    const/16 v2, 0xe

    const-string v3, "icons.px256,title,apks.downloadUrl.url,apks.size"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->LITE_DETAIL:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 37
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "QR_DETAIL"

    const/16 v2, 0xf

    const-string v3, "icons.px256,title,apks.size,apks.bytes,packageName,installedCountStr"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->QR_DETAIL:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 38
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "LITE_BACKUP"

    const/16 v2, 0x10

    const-string v3, "icons.px256,packageName"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->LITE_BACKUP:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 39
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "LITE_APP_FEEDS"

    const/16 v2, 0x11

    const-string v3, "cursor,adsCursor,data.app.apks.compatible,data.app.apks.incompatibleDetail,data.reason.*,data.app.title,data.app.packageName,data.app.ad,data.appType,data.app.icons.px256,data.app.installedCountStr,data.app.apks.downloadUrl.url,data.app.apks.bytes,data.app.apks.verified,data.app.apks.versionName,data.app.apks.versionCode,data.app.detailParam,data.app.imprUrl,data.app.stat.weeklyStr,data.app.exclusiveBadge,data.app.apks.md5,data.app.editorComment,data.app.description,data.app.award.issue,data.app.apks.superior,data.app.apks.paidType,data.app.likesRate,data.app.tags.*,data.app.extensionPacks.*,apkObbs.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->LITE_APP_FEEDS:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 41
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "LITE_APP_MUST_HAVE"

    const/16 v2, 0x12

    const-string v3, "apks.compatible,apks.incompatibleDetail,title,packageName,ad,appType,icons.px256,installedCountStr,apks.downloadUrl.url,apks.bytes,apks.verified,apks.versionName,apks.versionCode,detailParam,imprUrl,stat.weeklyStr,exclusiveBadge,apks.md5,editorComment,description,apks.paidType,likesRate,apks.superior,extensionPacks.*,tags.*,apkObbs.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->LITE_APP_MUST_HAVE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 43
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "SEARCH_APP"

    const/16 v2, 0x13

    const-string v3, "apks.compatible,apks.incompatibleDetail,title,packageName,ad,appType,icons.px256,installedCountStr,apks.downloadUrl.url,apks.bytes,apks.verified,apks.versionName,apks.versionCode,detailParam,imprUrl,stat.weeklyStr,exclusiveBadge,apks.md5,editorComment,description,apks.paidType,likesRate,apks.superior,extensionPacks.*,apkObbs.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->SEARCH_APP:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 45
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "MIX_SEARCH"

    const/16 v2, 0x14

    const-string v3, "apks.compatible,apks.incompatibleDetail,title,packageName,ad,appType,icons.px256,installedCountStr,apks.downloadUrl.url,apks.bytes,apks.verified,apks.versionName,apks.versionCode,detailParam,imprUrl,stat.weeklyStr,exclusiveBadge,apks.md5,editorComment,description,apks.paidType,likesRate,apks.superior,extensionPacks.*,apkObbs.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->MIX_SEARCH:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 47
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "APP_DESCRIPTION"

    const/16 v2, 0x15

    const-string v3, "description"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->APP_DESCRIPTION:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 48
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "VIDEO_TV_LITE"

    const/16 v2, 0x16

    const-string v3, "noDownloadUrls,noPlayInfos,downloadCount,recommend,description,id,type,title,directors,actors,latestEpisodeNum,latestEpisodeDate,totalEpisodesNum,marketRatings.*,cover.*,pictures.*,categories.*,subscribeUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_TV_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 50
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "VIDEO_VARIETY_LITE"

    const/16 v2, 0x17

    const-string v3, "noDownloadUrls,noPlayInfos,downloadCount,recommend,description,updatedDate,id,type,title,presenters,latestEpisodeNum,totalEpisodesNum,marketRatings.*,cover.*,pictures.*,categories.*,latestEpisodeDate,subscribeUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_VARIETY_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 52
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "VIDEO_COMIC_LITE"

    const/16 v2, 0x18

    const-string v3, "noDownloadUrls,noPlayInfos,downloadCount,recommend,description,id,type,title,actors,latestEpisodeNum,latestEpisodeDate,totalEpisodesNum,marketRatings.*,cover.*,pictures.*,categories.*,region,subscribeUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_COMIC_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 54
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "VIDEO_SHORT_VIDEO_LITE"

    const/16 v2, 0x19

    const-string v3, "createdDate,noDownloadUrls,noPlayInfos,recommend,downloadCount,description,id,type,title,directors,actors,marketRatings.*,cover.*,pictures.*,categories.*,region,videoEpisodes.id,videoEpisodes.episodeNum,videoEpisodes.downloadUrls.*,videoEpisodes.playInfo.*,subscribeUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_SHORT_VIDEO_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 56
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "VIDEO_MOVIE_LITE"

    const/16 v2, 0x1a

    const-string v3, "noDownloadUrls,noPlayInfos,downloadCount,recommend,description,id,type,title,directors,actors,marketRatings.*,cover.*,pictures.*,categories.*,region,videoEpisodes.id,videoEpisodes.episodeNum,videoEpisodes.downloadUrls.*,videoEpisodes.playInfo.*,subscribeUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_MOVIE_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 58
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "VIDEO_SUBSCRIBE_LITE"

    const/16 v2, 0x1b

    const-string v3, "noDownloadUrls,noPlayInfos,downloadCount,recommend,description,id,type,title,directors,actors,presenters,marketRatings.*,cover.*,pictures.*,categories.*,region,videoEpisodes.id,videoEpisodes.episodeDate,videoEpisodes.episodeNum,latestEpisodeNum,latestEpisodeDate,totalEpisodesNum,updatedDate,marketComments.*,subscribeUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_SUBSCRIBE_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 60
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "VIDEO_DETAIL_LITE"

    const/16 v2, 0x1c

    const-string v3, "releaseDate,recommend,previewEpisodes.*,totalSize,createdDate,noDownloadUrls,noPlayInfos,downloadCount,description,id,type,title,directors,actors,presenters,marketRatings.*,cover.*,pictures.*,categories.*,region,videoEpisodes.id,videoEpisodes.episodeDate,videoEpisodes.title,videoEpisodes.episodeNum,videoEpisodes.downloadUrls.*,videoEpisodes.playInfo.*,latestEpisodeNum,latestEpisodeDate,totalEpisodesNum,updatedDate,marketComments.*,subscribeUrl,tags,providerNames"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_DETAIL_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 63
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "VIDEO_EPISODES_LITE"

    const/16 v2, 0x1d

    const-string v3, "noDownloadUrls,noPlayInfos,videoEpisodes.id,videoEpisodes.episodeDate,videoEpisodes.title,videoEpisodes.episodeNum,videoEpisodes.downloadUrls.*,videoEpisodes.playInfo.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_EPISODES_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 65
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "VIDEO_DETAIL_EPISODES"

    const/16 v2, 0x1e

    const-string v3, "noDownloadUrls,noPlayInfos,downloadCount,description,id,type,title,cover.*,directors,actors,presenters,pictures.*,latestEpisodeNum,latestEpisodeDate,totalEpisodesNum,updatedDate,subscribeUrl,videoEpisodes.id,videoEpisodes.title,videoEpisodes.episodeDate,videoEpisodes.episodeNum,videoEpisodes.downloadUrls.*,videoEpisodes.playInfo.*,providerNames"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_DETAIL_EPISODES:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 67
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "VIDEO_SEARCH_LITE"

    const/16 v2, 0x1f

    const-string v3, "noDownloadUrls,noPlayInfos,downloadCount,recommend,description,updatedDate,actors,latestEpisodeNum,totalEpisodesNum,latestEpisodeDate,presenters,marketRatings.*,title,pictures.*,cover.*,categories.*,region,videoEpisodes.id,videoEpisodes.episodeNum,videoEpisodes.downloadUrls.*,videoEpisodes.playInfo.*,type,id"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_SEARCH_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 69
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "VIDEO_DETAIL_MICRO"

    const/16 v2, 0x20

    const-string v3, "noDownloadUrls,noPlayInfos,downloadCount,description,id,type,title,directors,actors,presenters,cover.*,pictures.*,latestEpisodeNum,latestEpisodeDate,totalEpisodesNum,updatedDate,subscribeUrl,videoEpisodes.id,videoEpisodes.episodeNum,providerNames"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_DETAIL_MICRO:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 71
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "APP_SPECIAL_LIST"

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "special.*,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/wandoujia/p4/http/request/OptionFields;->APPS_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    iget-object v4, v4, Lcom/wandoujia/p4/http/request/OptionFields;->optionFields:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->APP_SPECIAL_LIST:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 72
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "APP_SPECIAL_LIST_RELATED"

    const/16 v2, 0x22

    const-string v3, "special.name,special.intro,special.alias,apps.icons.*"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->APP_SPECIAL_LIST_RELATED:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 73
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "EBOOK_LIST_LITE"

    const/16 v2, 0x23

    const-string v3, "category.*,cover.*,id,title,status,description,totalChaptersNum,latestEpisodeTitle,updatedDate,rating,publishType,subscribeUrl,totalReadCount,weeklyReadCount,monthlyReadCount,providerOpenInfos.*,authors,sourceChapterListUrl,onlyProviderOpen"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->EBOOK_LIST_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 75
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "EBOOK_LIST_RECOMMENDATIONS"

    const/16 v2, 0x24

    const-string v3, "category.*,cover.*,id,title,status,totalChaptersNum,latestEpisodeTitle,updatedDate,rating,publishType,subscribeUrl,totalReadCount,weeklyReadCount,monthlyReadCount,providerOpenInfos.*,authors,sourceChapterListUrl,onlyProviderOpen"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->EBOOK_LIST_RECOMMENDATIONS:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 77
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "WALLPAPER_LIST"

    const/16 v2, 0x25

    const-string v3, "category.name,description,promotType,providerPackageNames,downloadUrl,id,height,image,providerNames,size,source,sourceUrl,tags,thumbnail,width"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->WALLPAPER_LIST:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 79
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "WALLPAPER_CATEGORIES"

    const/16 v2, 0x26

    const-string v3, "id,name,thumbnail,wallpapers"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->WALLPAPER_CATEGORIES:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 80
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "AUTOINSTALL"

    const/16 v2, 0x27

    const-string v3, "isBlocked"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->AUTOINSTALL:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 81
    new-instance v0, Lcom/wandoujia/p4/http/request/OptionFields;

    const-string v1, "DARK_KNOWLEDGE"

    const/16 v2, 0x28

    const-string v3, "app.packageName,app.icons.*,id,image,showIcon,showNumber,showTitle,title,subtitle,uri,cardType"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/http/request/OptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->DARK_KNOWLEDGE:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 8
    const/16 v0, 0x29

    new-array v0, v0, [Lcom/wandoujia/p4/http/request/OptionFields;

    sget-object v1, Lcom/wandoujia/p4/http/request/OptionFields;->DETAIL:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/http/request/OptionFields;->LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/http/request/OptionFields;->APPS_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/http/request/OptionFields;->CATEGORY:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/wandoujia/p4/http/request/OptionFields;->TAG:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->TAG_WITH_CATEGORY:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->APP_SPECIAL_SUB_CATEGORY:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->CATEGORY_SUMMARY:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->APP_WITH_RANKING:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->RECOMMEND:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->HISTORY:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->AWARD:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->FRIENDS:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->BANNER:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->LITE_DETAIL:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->QR_DETAIL:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->LITE_BACKUP:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->LITE_APP_FEEDS:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->LITE_APP_MUST_HAVE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->SEARCH_APP:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->MIX_SEARCH:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->APP_DESCRIPTION:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_TV_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_VARIETY_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_COMIC_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_SHORT_VIDEO_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_MOVIE_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_SUBSCRIBE_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_DETAIL_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_EPISODES_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_DETAIL_EPISODES:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_SEARCH_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_DETAIL_MICRO:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->APP_SPECIAL_LIST:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->APP_SPECIAL_LIST_RELATED:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->EBOOK_LIST_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->EBOOK_LIST_RECOMMENDATIONS:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->WALLPAPER_LIST:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->WALLPAPER_CATEGORIES:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->AUTOINSTALL:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/wandoujia/p4/http/request/OptionFields;->DARK_KNOWLEDGE:Lcom/wandoujia/p4/http/request/OptionFields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->$VALUES:[Lcom/wandoujia/p4/http/request/OptionFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
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
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lcom/wandoujia/p4/http/request/OptionFields;->optionFields:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/http/request/OptionFields;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/p4/http/request/OptionFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/http/request/OptionFields;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/http/request/OptionFields;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->$VALUES:[Lcom/wandoujia/p4/http/request/OptionFields;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/http/request/OptionFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/http/request/OptionFields;

    return-object v0
.end method


# virtual methods
.method public final getOptionFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/http/request/OptionFields;->optionFields:Ljava/lang/String;

    return-object v0
.end method
