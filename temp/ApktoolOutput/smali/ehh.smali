.class public Lehh;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lehh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lehh;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;JJ)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullSize()J

    move-result-wide v2

    .line 110
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 111
    sget-object v1, Lehh;->a:Ljava/lang/String;

    const-string v2, "wrong update or origin size"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :goto_1
    return v0

    .line 108
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 115
    :cond_1
    sub-long v0, p3, p1

    sub-long v0, v2, v0

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_1
.end method

.method public static a(Lcom/wandoujia/entities/app/IAppLiteInfo;)J
    .locals 7
    .parameter

    .prologue
    .line 36
    invoke-interface {p0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getApkObbs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteSize()I

    move-result v0

    int-to-long v2, v0

    .line 39
    :cond_0
    return-wide v2

    :cond_1
    invoke-interface {p0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getApkObbs()Ljava/util/List;

    move-result-object v5

    const-wide/16 v2, 0x0

    invoke-static {v5}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkObbInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkObbInfo;->getSize()J

    move-result-wide v0

    const/4 v2, 0x1

    move v4, v2

    move-wide v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkObbInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ApkObbInfo;->getSize()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(ILcom/wandoujia/entities/app/IAppLiteInfo;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 86
    invoke-interface {p1}, Lcom/wandoujia/entities/app/IAppLiteInfo;->isTrusted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    sget v1, Lcom/wandoujia/launcher_base/R$drawable;->verified_light:I

    invoke-static {p0, v1}, Lehx;->a(II)Landroid/text/style/DynamicDrawableSpan;

    move-result-object v1

    .line 89
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 91
    :cond_0
    invoke-static {p1}, Lehh;->b(Lcom/wandoujia/entities/app/IAppLiteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 92
    return-object v0
.end method

.method public static b(Lcom/wandoujia/entities/app/IAppLiteInfo;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/launcher_base/R$string;->search_suggestion_download_count:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLiteDownloadCountStr()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {p0}, Lehh;->a(Lcom/wandoujia/entities/app/IAppLiteInfo;)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
