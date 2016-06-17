.class public Lcom/wandoujia/appmanager/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService;

.field private static e:Lcom/wandoujia/appmanager/AppManager;

.field private static f:Landroid/content/Context;

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Ljava/lang/String;


# instance fields
.field public final b:[B

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field private final i:Lcpx;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Landroid/os/Handler;

.field private volatile l:Z

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/appmanager/AppManager$AppState;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroid/content/BroadcastReceiver;

.field private final p:Lcpw;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->k:Landroid/os/Handler;

    .line 108
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->m:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->n:Ljava/lang/ThreadLocal;

    .line 116
    new-instance v0, Lcom/wandoujia/appmanager/AppManager$1;

    invoke-direct {v0, p0}, Lcom/wandoujia/appmanager/AppManager$1;-><init>(Lcom/wandoujia/appmanager/AppManager;)V

    iput-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->o:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Lcpw;

    invoke-direct {v0, p0}, Lcpw;-><init>(Lcom/wandoujia/appmanager/AppManager;)V

    iput-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->p:Lcpw;

    .line 303
    iput-boolean v2, p0, Lcom/wandoujia/appmanager/AppManager;->q:Z

    .line 281
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->j:Ljava/util/List;

    .line 282
    new-instance v0, Lcpx;

    sget-object v1, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcpx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->i:Lcpx;

    .line 283
    return-void
.end method

.method private static a(Landroid/content/pm/PackageInfo;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1539
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getApiLevel()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 1550
    :cond_0
    :goto_0
    return v0

    .line 1543
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->o()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1544
    if-eqz v1, :cond_0

    .line 1545
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 1548
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2147
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2150
    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2158
    :goto_1
    return-object v0

    .line 2155
    :catch_0
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2152
    :catch_1
    move-exception v0

    .line 2158
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized a()Lcom/wandoujia/appmanager/AppManager;
    .locals 2

    .prologue
    .line 286
    const-class v1, Lcom/wandoujia/appmanager/AppManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->e:Lcom/wandoujia/appmanager/AppManager;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-direct {v0}, Lcom/wandoujia/appmanager/AppManager;-><init>()V

    sput-object v0, Lcom/wandoujia/appmanager/AppManager;->e:Lcom/wandoujia/appmanager/AppManager;

    .line 289
    :cond_0
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->e:Lcom/wandoujia/appmanager/AppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/wandoujia/appmanager/model/MarketAppInfo;)Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;
    .locals 4
    .parameter

    .prologue
    .line 1974
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    invoke-direct {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;-><init>()V

    .line 1975
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->fullUrl:Ljava/lang/String;

    .line 1976
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->detailUrl:Ljava/lang/String;

    .line 1978
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getDownloadCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->downloadCount:I

    .line 1979
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->versionCode:I

    .line 1980
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->fullSize:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1982
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->versionName:Ljava/lang/String;

    .line 1985
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getChangeLog()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->changeLog:Ljava/lang/String;

    .line 1986
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->fullMD5:Ljava/lang/String;

    .line 1987
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getRecommendedType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->recommendedType:Ljava/lang/String;

    .line 1988
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getNotRecommendReason()Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->notRecommendReason:Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;

    .line 1989
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->isSuperior()Z

    move-result v1

    iput-boolean v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->superior:Z

    .line 1990
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getMarket()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->market:Ljava/lang/String;

    .line 1991
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getLastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->lastModified:J

    .line 1992
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getLastModifiedTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->lastModifiedTime:Ljava/lang/String;

    .line 1993
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->importantUpdate:Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    .line 1994
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getNotificationModel()Lcom/wandoujia/push/protocol/NotificationModel;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->notificationModel:Lcom/wandoujia/push/protocol/NotificationModel;

    .line 1995
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getImportantLevel()I

    move-result v1

    iput v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->importantLevel:I

    .line 1996
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->isHasPatch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1997
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->hasPatch:Z

    .line 1998
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getPatchURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->patchUrl:Ljava/lang/String;

    .line 1999
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getPatchMd5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->patchMD5:Ljava/lang/String;

    .line 2000
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getPatchSize()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->patchSize:J

    .line 2002
    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/PackageInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)Lcom/wandoujia/appmanager/LocalAppInfo;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/appmanager/LocalAppInfo;"
        }
    .end annotation

    .prologue
    .line 1574
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1576
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1578
    :cond_0
    const/4 v0, 0x0

    .line 1694
    :goto_0
    return-object v0

    .line 1581
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1583
    const/4 v0, 0x0

    goto :goto_0

    .line 1586
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1587
    new-instance v2, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-direct {v2}, Lcom/wandoujia/appmanager/LocalAppInfo;-><init>()V

    .line 1589
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->size:J

    .line 1590
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v1

    iget v5, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v1, v5, :cond_a

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1592
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->title:Ljava/lang/String;

    .line 1596
    :goto_1
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitlePinyinFirstChar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->title:Ljava/lang/String;

    iget-object v5, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->title:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1598
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitlePinyinFirstChar()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->titlePinyinFirstChar:Ljava/lang/String;

    .line 1602
    :cond_3
    :goto_2
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getSize()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v1

    iget v5, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v1, v5, :cond_c

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getMD5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1605
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getMD5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->md5:Ljava/lang/String;

    .line 1609
    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getSize()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v1

    iget v5, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v1, v5, :cond_4

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1612
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    .line 1614
    :cond_4
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored:Z

    .line 1615
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->sourceDir:Ljava/lang/String;

    .line 1616
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->dataDir:Ljava/lang/String;

    .line 1617
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->versionCode:I

    .line 1618
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->versionName:Ljava/lang/String;

    .line 1619
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->packageName:Ljava/lang/String;

    .line 1620
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 1621
    const/4 v0, 0x0

    .line 1623
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1626
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1630
    const-string v0, "null"

    iput-object v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->packageInstaller:Ljava/lang/String;

    .line 1635
    :cond_5
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 1636
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->lastUpdateTime:J

    .line 1637
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->firstInstallTime:J

    .line 1639
    :cond_6
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->isSystemApp:Z

    .line 1640
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->isInstalledInternal:Z

    .line 1643
    invoke-static {p0}, Lcom/wandoujia/appmanager/AppManager;->a(Landroid/content/pm/PackageInfo;)I

    move-result v1

    .line 1644
    packed-switch v1, :pswitch_data_0

    .line 1653
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->AUTO:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    iput-object v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->preferredInstallLocation:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    .line 1657
    :goto_8
    const/4 v0, 0x0

    .line 1658
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v3, v5

    if-eqz v3, :cond_10

    .line 1659
    const/4 v0, 0x1

    .line 1677
    :cond_7
    :goto_9
    iput-boolean v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->isMovable:Z

    .line 1678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1679
    const/4 v0, 0x0

    :goto_a
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_13

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v0, v3, :cond_13

    .line 1680
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/base/utils/DigestUtils;->computeMd5forPkg([B)Ljava/lang/String;

    move-result-object v3

    .line 1682
    if-eqz v3, :cond_9

    .line 1683
    if-nez v0, :cond_8

    .line 1686
    iput-object v3, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->signature:Ljava/lang/String;

    .line 1688
    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1690
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1679
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1593
    :cond_a
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 1599
    :cond_b
    iget-object v1, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1600
    iget-object v1, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/wandoujia/base/utils/AppUtils;->convertFirstCharToPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->titlePinyinFirstChar:Ljava/lang/String;

    goto/16 :goto_2

    .line 1606
    :cond_c
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->md5:Ljava/lang/String;

    goto/16 :goto_3

    .line 1632
    :cond_d
    iput-object v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->packageInstaller:Ljava/lang/String;

    goto/16 :goto_5

    .line 1639
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1640
    :cond_f
    const/4 v0, 0x0

    goto :goto_7

    .line 1646
    :pswitch_0
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->INTERNAL:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    iput-object v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->preferredInstallLocation:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    goto :goto_8

    .line 1649
    :pswitch_1
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;->EXTERNAL:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    iput-object v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->preferredInstallLocation:Lcom/wandoujia/appmanager/LocalAppInfo$PreferredInstallLocation;

    goto :goto_8

    .line 1661
    :cond_10
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1662
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x2000

    and-int/2addr v3, v4

    if-nez v3, :cond_7

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_7

    .line 1664
    if-eqz v1, :cond_11

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 1666
    :cond_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_12

    .line 1668
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_9

    .line 1671
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1693
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wandoujia/appmanager/LocalAppInfo;->allSignatures:Ljava/lang/String;

    move-object v0, v2

    .line 1694
    goto/16 :goto_0

    .line 1669
    :catch_0
    move-exception v1

    goto/16 :goto_9

    :catch_1
    move-exception v1

    goto/16 :goto_4

    .line 1644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 400
    if-eqz p0, :cond_0

    const-string v0, ".patch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    :cond_0
    const/4 v0, 0x0

    .line 412
    :goto_0
    return-object v0

    .line 404
    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 405
    if-ltz v0, :cond_2

    .line 406
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 408
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/appmanager/AppManager;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->m:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcqj;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    .line 294
    sput-object p1, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    .line 295
    sput-object p2, Ld;->g:Lcqj;

    .line 296
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/jupiter/app/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_0
    sput-object v0, Lcom/wandoujia/appmanager/AppManager;->h:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/appmanager/AppManager;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/appmanager/AppManager;->h:Ljava/lang/String;

    .line 300
    :cond_0
    invoke-static {p0}, Lcpu;->a(Landroid/content/Context;)V

    .line 301
    return-void

    .line 296
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/com.wandoujia.phoenix2/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/appmanager/AppManager;Lcpt;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcpt;)V

    return-void
.end method

.method static synthetic a(Lcom/wandoujia/appmanager/AppManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcpf;

    invoke-direct {v1, p0, p2}, Lcpf;-><init>(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcph;

    invoke-direct {v1, p0, p2}, Lcph;-><init>(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcpj;

    invoke-direct {v1, p0, p2}, Lcpj;-><init>(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcpl;

    invoke-direct {v1, p0, p2}, Lcpl;-><init>(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcpt;)V
    .locals 5
    .parameter

    .prologue
    .line 416
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->j:Ljava/util/List;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 418
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 420
    if-eqz v0, :cond_0

    .line 421
    iget-object v3, p0, Lcom/wandoujia/appmanager/AppManager;->k:Landroid/os/Handler;

    new-instance v4, Lcpo;

    invoke-direct {v4, p1, v0}, Lcpo;-><init>(Lcpt;Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 428
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 431
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static a(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2006
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2007
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcpe;

    invoke-direct {v1, p0}, Lcpe;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2014
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;Z)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/MarketAppInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1940
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1941
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1942
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/model/MarketAppInfo;

    .line 1943
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getRecommendedType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1944
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1947
    :cond_2
    const-string v2, "NOT_RECOMMEND"

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getRecommendedType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1948
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getNotRecommendReason()Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;

    move-result-object v2

    .line 1950
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1952
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1955
    :cond_4
    invoke-virtual {v2}, Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;->isSignatureMatch()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    .line 1956
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1959
    :cond_5
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    .line 1960
    if-eqz v0, :cond_0

    .line 1961
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getSignature()Ljava/lang/String;

    .line 1964
    const-string v0, "SIGNATURE_NOT_OFFICIAL"

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1971
    :cond_6
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 480
    invoke-static {p0}, Lcom/wandoujia/appmanager/AppManager;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 481
    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 486
    :cond_0
    :try_start_0
    sget-object v1, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/wandoujia/appmanager/AppManager;->c(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/appmanager/AppManager;)[B
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x1020

    const/4 v1, 0x0

    .line 493
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 544
    :goto_0
    return-object v0

    .line 496
    :cond_1
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 497
    if-nez v2, :cond_2

    move-object v0, v1

    .line 498
    goto :goto_0

    .line 504
    :cond_2
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_3

    .line 506
    const/high16 v3, 0x1020

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 511
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 527
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object v0, v1

    .line 528
    goto :goto_0

    .line 524
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 531
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 532
    if-nez v0, :cond_6

    move-object v0, v1

    .line 533
    goto :goto_0

    .line 535
    :cond_6
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 536
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 541
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic d(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Lcom/wandoujia/appmanager/AppManager;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x40

    .line 1503
    const/4 v0, 0x0

    .line 1504
    sget-object v1, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1505
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1506
    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_4

    .line 1508
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1516
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1512
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    .line 1522
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1523
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1524
    sget-object v3, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    invoke-static {v3, v0, v4}, Lcom/wandoujia/appmanager/AppManager;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1526
    if-eqz v0, :cond_2

    .line 1527
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 1531
    :cond_4
    if-nez v0, :cond_5

    .line 1532
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1534
    :cond_5
    return-object v0
.end method

.method private f(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/appmanager/model/MarketAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1851
    invoke-static {}, Lcqj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 1936
    :goto_0
    return-object v0

    .line 1854
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1861
    iget-object v4, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v4

    .line 1862
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1863
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1872
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1873
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1874
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wandoujia/base/utils/Phoenix2Util;->isPhoenix2(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.wandoujia.phoenix2.usbproxy"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1876
    new-instance v4, Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;

    invoke-direct {v4}, Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;-><init>()V

    .line 1880
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;->setP(Ljava/lang/String;)V

    .line 1881
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;->setVc(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;->setS(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getMD5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;->setF(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;->setVn(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageInstaller()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;->setPi(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getFirstInstallTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;->setFi(Ljava/lang/Long;)V

    .line 1887
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getLastUpdateTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;->setLu(Ljava/lang/Long;)V

    .line 1888
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1889
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1865
    :cond_4
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1866
    iget-object v6, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1867
    if-eqz v0, :cond_5

    .line 1868
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1872
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1891
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1895
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1896
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    .line 1899
    :cond_8
    new-instance v3, Lcom/wandoujia/appmanager/model/LocalAppsInfo;

    invoke-direct {v3}, Lcom/wandoujia/appmanager/model/LocalAppsInfo;-><init>()V

    .line 1900
    invoke-virtual {v3, v1}, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->setUserApps(Ljava/util/List;)V

    .line 1901
    invoke-virtual {v3, v2}, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->setSysApps(Ljava/util/List;)V

    .line 1902
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v0}, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->setSdkVersion(I)V

    .line 1903
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getCpuFamily(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->setCpuFamily(Ljava/lang/String;)V

    .line 1904
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getCpuFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->setCpuFeatures(Ljava/lang/String;)V

    .line 1906
    new-instance v1, Lcql;

    invoke-direct {v1}, Lcql;-><init>()V

    .line 1908
    :try_start_2
    invoke-virtual {v1}, Lcql;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lcqn;

    new-instance v2, Lcvo;

    invoke-direct {v2}, Lcvo;-><init>()V

    invoke-virtual {v2, v3}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcqn;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1913
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/wandoujia/rpc/http/client/DataApi;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;

    .line 1914
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1916
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->getUserApps()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1917
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->getUserApps()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/wandoujia/appmanager/AppManager;->a(Ljava/util/List;Z)V

    .line 1918
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->getUserApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/model/MarketAppInfo;

    .line 1919
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1911
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    .line 1923
    :cond_9
    if-eqz v0, :cond_a

    .line 1925
    iget v1, v0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->pushFrequency:F

    invoke-static {}, Lcom/wandoujia/appmanager/config/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "upgrade_last_push_frequency"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-static {v3}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1926
    iget v1, v0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->importantPushFrequency:F

    invoke-static {}, Lcom/wandoujia/appmanager/config/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "import_upgrade_last_push_frequency"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-static {v3}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1928
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->getSysApps()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1929
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->getSysApps()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/wandoujia/appmanager/AppManager;->a(Ljava/util/List;Z)V

    .line 1930
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->getSysApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/model/MarketAppInfo;

    .line 1931
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    move-object v0, v2

    .line 1936
    goto/16 :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2183
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2184
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2186
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 2187
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2188
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 2190
    :try_start_0
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2193
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static l()F
    .locals 3

    .prologue
    .line 2162
    invoke-static {}, Lcom/wandoujia/appmanager/config/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "upgrade_last_push_frequency"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static m()F
    .locals 3

    .prologue
    .line 2166
    invoke-static {}, Lcom/wandoujia/appmanager/config/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "import_upgrade_last_push_frequency"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static synthetic n()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    return-object v0
.end method

.method private static o()Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 1557
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 1559
    :try_start_0
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "installLocation"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/appmanager/AppManager;->g:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    :cond_0
    :goto_0
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->g:Ljava/lang/reflect/Field;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1561
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 927
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v1

    .line 928
    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 929
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 930
    iget-object v4, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 933
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 932
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public final a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V
    .locals 3
    .parameter

    .prologue
    .line 330
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->j:Ljava/util/List;

    monitor-enter v1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 332
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 333
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    monitor-exit v1

    .line 339
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->j:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 381
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->i:Lcpx;

    iget-object v5, p0, Lcom/wandoujia/appmanager/AppManager;->p:Lcpw;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lcpx;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v5, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    iget-object v2, v2, Lcom/wandoujia/appmanager/AppManager;->m:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v4, v5, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    iget-object v4, v4, Lcom/wandoujia/appmanager/AppManager;->m:Ljava/util/Map;

    sget-object v6, Lcom/wandoujia/appmanager/AppManager$AppState;->WAITING_INSTALL:Lcom/wandoujia/appmanager/AppManager$AppState;

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, v5, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    new-instance v4, Lcot;

    invoke-direct {v4, v0}, Lcot;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/wandoujia/appmanager/AppManager;->a(Lcpt;)V

    iget-object v6, v1, Lcpx;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcpz;

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcpz;-><init>(Lcpx;Ljava/lang/String;Landroid/content/pm/PackageInfo;ZLcpw;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 381
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/AppManager;->q:Z

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/appmanager/AppManager;->q:Z

    .line 310
    invoke-static {}, Lcpu;->a()Lcpu;

    move-result-object v0

    invoke-virtual {v0}, Lcpu;->b()V

    .line 311
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Ld;->g:Lcqj;

    iget-object v1, v1, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    iget-object v2, p0, Lcom/wandoujia/appmanager/AppManager;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Ld;->g:Lcqj;

    iget-object v1, v1, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    iget-object v2, p0, Lcom/wandoujia/appmanager/AppManager;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcpn;

    invoke-direct {v1, p0}, Lcpn;-><init>(Lcom/wandoujia/appmanager/AppManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V
    .locals 3
    .parameter

    .prologue
    .line 343
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->j:Ljava/util/List;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 345
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 347
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 349
    monitor-exit v1

    .line 352
    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->i:Lcpx;

    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->p:Lcpw;

    iget-object v2, v0, Lcpx;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcqa;

    invoke-direct {v3, v0, p1, p2, v1}, Lcqa;-><init>(Lcpx;Ljava/lang/String;ZLcpw;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method public final declared-synchronized b(Ljava/util/List;)V
    .locals 14
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
    const/4 v5, 0x1

    .line 1320
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/AppManager;->d:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1322
    :cond_0
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcoz;

    invoke-direct {v1, p1}, Lcoz;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1334
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1335
    :cond_1
    invoke-static {}, Lcpu;->a()Lcpu;

    move-result-object v0

    invoke-virtual {v0}, Lcpu;->c()Ljava/util/List;

    move-result-object v0

    .line 1339
    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1340
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1341
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1337
    :cond_2
    :try_start_1
    invoke-static {}, Lcpu;->a()Lcpu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcpu;->a(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1346
    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1353
    if-nez v0, :cond_5

    .line 1494
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 1356
    :cond_5
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1357
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1358
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1359
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/wandoujia/base/utils/Phoenix2Util;->isPhoenix2(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.wandoujia.phoenix2.usbproxy"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1361
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1365
    :cond_8
    const/4 v3, 0x0

    .line 1366
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1368
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 1369
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1370
    if-eqz v1, :cond_9

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_9

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1372
    new-instance v4, Ljava/io/File;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1376
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1379
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo;->getSize()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v4, v10, v12

    if-nez v4, :cond_b

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v4

    iget v10, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v4, v10, :cond_b

    move v4, v5

    .line 1382
    :goto_5
    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo;->getMD5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1383
    :cond_a
    if-nez v3, :cond_1c

    .line 1384
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 1386
    :goto_6
    new-instance v3, Lcpa;

    invoke-direct {v3, v1, v7}, Lcpa;-><init>(Landroid/content/pm/PackageInfo;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    :goto_7
    move-object v3, v1

    .line 1398
    goto :goto_4

    .line 1379
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 1400
    :cond_c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1401
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1402
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1403
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1404
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v10

    iget v11, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v10, v11, :cond_d

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitlePinyinFirstChar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1408
    :cond_d
    if-nez v3, :cond_1a

    .line 1409
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 1411
    :goto_9
    new-instance v3, Lcpb;

    invoke-direct {v3, v1, v4}, Lcpb;-><init>(Landroid/content/pm/PackageInfo;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    :goto_a
    move-object v3, v1

    .line 1430
    goto :goto_8

    .line 1431
    :cond_e
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1433
    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_b

    .line 1435
    :catch_0
    move-exception v1

    goto :goto_b

    .line 1440
    :cond_f
    :try_start_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1442
    :try_start_6
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_c

    .line 1444
    :catch_1
    move-exception v1

    goto :goto_c

    .line 1449
    :cond_10
    if-eqz v3, :cond_11

    .line 1450
    :try_start_7
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1452
    :cond_11
    invoke-static {}, Lcpu;->a()Lcpu;

    move-result-object v1

    iget-object v1, v1, Lcpu;->a:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    iget-object v1, v1, Lhpu;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1454
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1455
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1456
    invoke-static {v0, v6, v7, v4, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Landroid/content/pm/PackageInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v5

    .line 1458
    if-eqz v5, :cond_12

    .line 1459
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 1463
    :cond_13
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1465
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1466
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1467
    if-eqz v0, :cond_14

    .line 1468
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1471
    :cond_15
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1472
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1473
    if-eqz v0, :cond_16

    .line 1474
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1477
    :cond_17
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1478
    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->a(Ljava/util/Collection;)V

    .line 1481
    :cond_18
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1482
    :try_start_8
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1483
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1484
    if-eqz p1, :cond_19

    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1485
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/appmanager/AppManager;->d:Z

    .line 1486
    new-instance v0, Lcpc;

    invoke-direct {v0}, Lcpc;-><init>()V

    invoke-direct {p0, v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcpt;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 1483
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1437
    :catch_2
    move-exception v1

    goto/16 :goto_b

    .line 1446
    :catch_3
    move-exception v1

    goto/16 :goto_c

    .line 1350
    :catch_4
    move-exception v0

    goto/16 :goto_2

    .line 1348
    :catch_5
    move-exception v0

    goto/16 :goto_2

    :cond_1a
    move-object v2, v3

    goto/16 :goto_9

    :cond_1b
    move-object v1, v3

    goto/16 :goto_a

    :cond_1c
    move-object v2, v3

    goto/16 :goto_6

    :cond_1d
    move-object v1, v3

    goto/16 :goto_7
.end method

.method public final c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v1

    .line 643
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 644
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 645
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 647
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public final c(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 599
    sget-object v0, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcpp;

    invoke-direct {v1, p0, p1, p2}, Lcpp;-><init>(Lcom/wandoujia/appmanager/AppManager;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method public final c(Ljava/util/List;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1702
    :try_start_0
    invoke-direct {p0, p1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 1707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/appmanager/AppManager;->l:Z

    .line 1709
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1710
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1712
    iget-object v7, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1714
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1724
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1725
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/model/MarketAppInfo;

    .line 1726
    if-nez v1, :cond_7

    .line 1727
    iget-object v1, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    if-eqz v1, :cond_2

    .line 1728
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->clone()Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v1

    .line 1729
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    .line 1730
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->clone()Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    invoke-direct {v10, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1746
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1757
    :catch_0
    move-exception v0

    .line 1758
    if-eqz p1, :cond_3

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {v0}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->canRetry(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1759
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v3

    .line 1760
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 1762
    const-wide/16 v4, 0x2710

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1763
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->n:Ljava/lang/ThreadLocal;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1764
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/wandoujia/appmanager/AppManager;->c(Ljava/util/List;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1774
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    move v0, v3

    .line 1776
    :goto_3
    return v0

    .line 1717
    :cond_5
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1718
    iget-object v9, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1719
    if-eqz v0, :cond_6

    .line 1720
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1735
    :cond_7
    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/model/MarketAppInfo;)Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v9

    .line 1736
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_5
    if-eqz v1, :cond_2

    .line 1737
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->clone()Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v1

    .line 1738
    iput-object v9, v1, Lcom/wandoujia/appmanager/LocalAppInfo;->upgradeInfo:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    .line 1739
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->clone()Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    invoke-direct {v10, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1736
    :cond_8
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getVersionCode()I

    move-result v10

    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getVersionCode()I

    move-result v11

    if-ne v10, v11, :cond_9

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullMD5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullMD5()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getMarket()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getMarket()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->isSuperior()Z

    move-result v10

    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->isSuperior()Z

    move-result v11

    if-ne v10, v11, :cond_9

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getRecommendedType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getRecommendedType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->hasPatch()Z

    move-result v10

    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->hasPatch()Z

    move-result v11

    if-ne v10, v11, :cond_9

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getPatchMD5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getPatchMD5()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->isImportantUpdate()Z

    move-result v1

    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->isImportantUpdate()Z

    move-result v10

    if-eq v1, v10, :cond_a

    :cond_9
    move v1, v2

    goto/16 :goto_5

    :cond_a
    move v1, v3

    goto/16 :goto_5

    .line 1745
    :cond_b
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1746
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1747
    :try_start_6
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1748
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->a(Ljava/util/Collection;)V

    .line 1749
    new-instance v0, Lcpd;

    invoke-direct {v0, v6}, Lcpd;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcpt;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1756
    :cond_c
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    move v0, v2

    goto/16 :goto_3

    .line 1759
    :cond_d
    :try_start_7
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    .line 1768
    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->n:Ljava/lang/ThreadLocal;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1769
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/appmanager/AppManager;->c(Ljava/util/List;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    .line 1774
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0
.end method

.method public final d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;
    .locals 2
    .parameter

    .prologue
    .line 987
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v1

    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    monitor-exit v1

    return-object v0

    .line 989
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v1

    .line 697
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 698
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 699
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_0

    .line 700
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 703
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public final e()I
    .locals 4

    .prologue
    .line 743
    iget-object v2, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v2

    .line 744
    const/4 v1, 0x0

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 746
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 749
    goto :goto_0

    .line 750
    :cond_0
    monitor-exit v2

    return v1

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1043
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return v0

    .line 1046
    :cond_1
    invoke-virtual {p0, p1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v1

    .line 1047
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 790
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v1

    .line 791
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1200
    iget-object v2, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v2

    .line 1201
    :try_start_0
    iget-object v3, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1202
    monitor-exit v2

    .line 1205
    :cond_0
    :goto_0
    return v0

    .line 1204
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    sget-object v2, Lcom/wandoujia/appmanager/AppManager;->f:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g()I
    .locals 4

    .prologue
    .line 831
    iget-object v2, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v2

    .line 832
    const/4 v1, 0x0

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 834
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 837
    goto :goto_0

    .line 838
    :cond_0
    monitor-exit v2

    return v1

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final g(Ljava/lang/String;)Lcom/wandoujia/appmanager/AppManager$AppState;
    .locals 2
    .parameter

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->m:Ljava/util/Map;

    monitor-enter v1

    .line 1210
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager$AppState;

    .line 1211
    if-eqz v0, :cond_0

    .line 1212
    monitor-exit v1

    .line 1220
    :goto_0
    return-object v0

    .line 1214
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1215
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v1

    .line 1216
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    sget-object v0, Lcom/wandoujia/appmanager/AppManager$AppState;->INSTALLED:Lcom/wandoujia/appmanager/AppManager$AppState;

    monitor-exit v1

    goto :goto_0

    .line 1219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1214
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1219
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1220
    sget-object v0, Lcom/wandoujia/appmanager/AppManager$AppState;->NOT_EXIST:Lcom/wandoujia/appmanager/AppManager$AppState;

    goto :goto_0
.end method

.method public final h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 878
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 879
    iget-object v2, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v2

    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 881
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isSystemApp()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 882
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 885
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public final i()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    invoke-static {}, Lcqj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1038
    :goto_0
    return-object v0

    .line 1031
    :cond_0
    iget-object v2, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v2

    .line 1032
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1033
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1034
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1035
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1039
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1038
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public final j()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1117
    invoke-static {}, Lcqj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    :goto_0
    return v1

    .line 1120
    :cond_0
    iget-object v2, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v2

    .line 1122
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1123
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1124
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 1126
    goto :goto_1

    .line 1127
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 1128
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final k()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1158
    iget-object v1, p0, Lcom/wandoujia/appmanager/AppManager;->b:[B

    monitor-enter v1

    .line 1159
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1160
    iget-object v0, p0, Lcom/wandoujia/appmanager/AppManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 1161
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1162
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1165
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method
