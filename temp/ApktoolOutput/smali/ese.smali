.class public final Lese;
.super Ljava/lang/Object;
.source "StatisticsTools.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/wandoujia/account/dto/DeviceBean;
    .locals 4
    .parameter

    .prologue
    .line 88
    new-instance v0, Lcom/wandoujia/account/dto/DeviceBean;

    invoke-direct {v0}, Lcom/wandoujia/account/dto/DeviceBean;-><init>()V

    .line 90
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/dto/DeviceBean;->setBrand(Ljava/lang/String;)V

    .line 91
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/dto/DeviceBean;->setModel(Ljava/lang/String;)V

    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/dto/DeviceBean;->setSdk(Ljava/lang/String;)V

    .line 93
    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/dto/DeviceBean;->setSource(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/dto/DeviceBean;->setUdid(Ljava/lang/String;)V

    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 97
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/account/dto/DeviceBean;->setVersionCode(Ljava/lang/String;)V

    .line 98
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/dto/DeviceBean;->setVersionName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 102
    :catch_1
    move-exception v1

    goto :goto_0
.end method
