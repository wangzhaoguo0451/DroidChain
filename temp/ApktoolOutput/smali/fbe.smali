.class public final Lfbe;
.super Ljava/lang/Object;
.source "CampaignPlugin.java"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lfbe;->a:Landroid/app/Activity;

    .line 64
    iput-object p2, p0, Lfbe;->b:Landroid/webkit/WebView;

    .line 65
    return-void
.end method

.method static synthetic a(Lfbe;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lfbe;->b:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public final cancelAsync(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 742
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    .line 744
    invoke-virtual {v0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    .line 746
    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 747
    return-void
.end method

.method public final closeWebView()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 847
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 848
    return-void
.end method

.method public final download(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 685
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lfbg;

    invoke-direct {v1, p2, p1}, Lfbg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    return-void
.end method

.method public final downloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lfbp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 704
    return-void
.end method

.method public final getAllApps()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 312
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->c()Ljava/util/List;

    move-result-object v0

    .line 313
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    invoke-virtual {v1, v0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAllAppsAsync(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lfbi;

    invoke-direct {v0, p0, p1}, Lfbi;-><init>(Lfbe;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method

.method public final getAppCount()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 345
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->f()I

    move-result v0

    return v0
.end method

.method public final getAppInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 489
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    .line 490
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    invoke-virtual {v1, v0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppInfoAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 503
    new-instance v0, Lfbm;

    invoke-direct {v0, p0, p1, p2}, Lfbm;-><init>(Lfbe;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method

.method public final getAppInfos([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 448
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 450
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    invoke-virtual {v1, v0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppInfosAsync([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 465
    new-instance v0, Lfbl;

    invoke-direct {v0, p0, p1, p2}, Lfbl;-><init>(Lfbe;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method public final getAppState(Ljava/lang/String;)I
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 655
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/AppManager;->g(Ljava/lang/String;)Lcom/wandoujia/appmanager/AppManager$AppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager$AppState;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getAppVersionCode(Ljava/lang/String;)I
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 158
    invoke-static {p1}, Lfbp;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getAppVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 163
    invoke-static {p1}, Lfbp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Lchv;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBrand()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 586
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getBrand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDownloadInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 776
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 780
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    invoke-static {v0}, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->from(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/p4/model/CampaignDownloadInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 782
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getDownloadInfos([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 756
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 757
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p1, v1

    .line 758
    sget-object v0, Lham;->f:Lham;

    const-string v5, "download"

    invoke-virtual {v0, v5}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, v4}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 761
    invoke-static {v0}, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->from(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/p4/model/CampaignDownloadInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 763
    :cond_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    invoke-virtual {v0, v2}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFirstChannel()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 818
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFullVersionName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getFullVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIMEI()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastChannel()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 828
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLocaleCountry()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 301
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLocaleLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkType()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 291
    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public final getNickName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNonSystemAppCount()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 390
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->e()I

    move-result v0

    return v0
.end method

.method public final getNonSystemApps()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 356
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->d()Ljava/util/List;

    move-result-object v0

    .line 357
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    invoke-virtual {v1, v0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNonSystemAppsAsync(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 369
    new-instance v0, Lfbj;

    invoke-direct {v0, p0, p1}, Lfbj;-><init>(Lfbe;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 798
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 800
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSDKVersionInt()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 279
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getSdkVersionInt()I

    move-result v0

    return v0
.end method

.method public final getSystemAppCount()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 435
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->g()I

    move-result v0

    return v0
.end method

.method public final getSystemApps()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 401
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->h()Ljava/util/List;

    move-result-object v0

    .line 402
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    invoke-virtual {v1, v0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSystemAppsAsync(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 414
    new-instance v0, Lfbk;

    invoke-direct {v0, p0, p1}, Lfbk;-><init>(Lfbe;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method

.method public final getUDID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUpgradableAppCount()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 569
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->j()I

    move-result v0

    return v0
.end method

.method public final getUpgradableApps()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 524
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->i()Ljava/util/List;

    move-result-object v0

    .line 525
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    invoke-virtual {v1, v0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUpgradableAppsAsync(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 537
    new-instance v0, Lfbn;

    invoke-direct {v0, p0, p1}, Lfbn;-><init>(Lfbe;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 549
    return-void
.end method

.method public final getUpgradeIgnoredApps()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 580
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->k()Ljava/util/List;

    move-result-object v0

    .line 581
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    invoke-virtual {v1, v0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUpgradeIgnoredAppsAsync(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 618
    new-instance v0, Lfbo;

    invoke-direct {v0, p0, p1}, Lfbo;-><init>(Lfbe;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 630
    return-void
.end method

.method public final getUserAuth()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 675
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUserEmail()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 253
    invoke-static {}, Lchv;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUserPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Lchv;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersionCode()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final install(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 680
    invoke-static {p1}, Leuy;->a(Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public final install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lfbp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    return-void
.end method

.method public final installByPackage(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lfbp;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public final installInMarket(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lfbp;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public final isInstalled(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 640
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isLogin()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 665
    invoke-static {}, Lchv;->z()Z

    move-result v0

    return v0
.end method

.method public final isUpgradable(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 559
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/AppManager;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final loginAccount()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "campaign"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    .line 107
    iget-object v1, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/wandoujia/p4/account/manager/AccountUtil;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;)V

    .line 108
    return-void
.end method

.method public final loginAccount(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "campaign"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    .line 125
    iget-object v1, p0, Lfbe;->a:Landroid/app/Activity;

    new-instance v2, Lfbh;

    invoke-direct {v2, p0, p1}, Lfbh;-><init>(Lfbe;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/wandoujia/p4/account/manager/AccountUtil;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;Lcmk;)V

    .line 138
    return-void
.end method

.method public final openApp(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 89
    invoke-static {p1}, Lfbp;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final openAppDetail(Ljava/lang/String;)V
    .locals 5
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LABEL:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v2, "open_app_detail"

    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lfbf;

    invoke-direct {v4, p0, v0, v1, v2}, Lfbf;-><init>(Lfbe;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lfbp;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public final openAppDetailWithoutAward(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lfbp;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public final openInBrowser(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lfbp;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public final openNewWebView(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 834
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfbe;->a:Landroid/app/Activity;

    const-class v2, Lcom/wandoujia/p4/campaign/CampaignActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 835
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 836
    const-string v1, "phoenix.intent.extra.ACTION"

    const-string v2, "phoenix.intent.action.CAMPAIGN_WEBVIEW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const-string v1, "phoenix.intent.extra.URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const-string v1, "phoenix.intent.extra.TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const-string v1, "phoenix.intent.extra.SHOW_ACTION_BAR"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 840
    const-string v1, "phoenix.intent.extra.IS_PORTRAIT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 841
    const-string v1, "phoenix.intent.extra.IS_FULLSCREEN"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 842
    iget-object v1, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 843
    return-void
.end method

.method public final pauseApp(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 713
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    .line 716
    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->APP:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)V

    .line 719
    return-void
.end method

.method public final playGameVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 591
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 593
    const-string v1, "phoenix.intent.extra.URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v1, "phoenix.intent.extra.IS_PORTRAIT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 595
    const-string v1, "phoenix.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string v1, "phoenix.intent.extra.TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 598
    return-void
.end method

.method public final playGameVideo(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 602
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfbe;->a:Landroid/app/Activity;

    const-class v2, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 603
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 604
    const-string v1, "phoenix.intent.extra.URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string v1, "phoenix.intent.extra.IS_PORTRAIT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 606
    iget-object v1, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 607
    return-void
.end method

.method public final resumeAsync(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 728
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    .line 731
    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 733
    return-void
.end method

.method public final setClipboardText(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 807
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 808
    return-void
.end method

.method public final setOrientation(Z)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 787
    iget-object v1, p0, Lfbe;->a:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 789
    return-void

    .line 787
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final share(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lfbp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public final shareTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lfbp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public final startActivity(Ljava/lang/String;)Z
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 174
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 175
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final toast(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lfbe;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lfbp;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    return-void
.end method
