.class public final Lcom/wandoujia/ripple_framework/installer/AppTaskManager;
.super Ljava/lang/Object;
.source "AppTaskManager.java"


# static fields
.field private static e:Landroid/os/Handler;


# instance fields
.field public final a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

.field public b:Lhfm;

.field public c:Lhfk;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lhfq;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lhfr;

.field private final h:Lcom/wandoujia/appmanager/AppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/ripple_framework/download/DownloadManager;Lhrx;Lhfr;Lcom/wandoujia/appmanager/AppManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->d:Ljava/util/Map;

    .line 72
    invoke-virtual {p2, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 74
    iput-object p3, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->g:Lhfr;

    .line 75
    iput-object p4, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->h:Lcom/wandoujia/appmanager/AppManager;

    .line 76
    return-void
.end method

.method private static a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 522
    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->a(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INIT:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    .line 574
    :goto_0
    return-object v0

    .line 525
    :cond_0
    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->a(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 526
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UPGRADE:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 530
    sget-object v1, Lhfj;->c:[I

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 560
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INIT:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    .line 563
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    iput-wide v2, v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->e:J

    .line 564
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    iput-wide v2, v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->f:J

    .line 565
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 568
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v4, v1, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    div-long/2addr v2, v4

    long-to-float v1, v2

    iput v1, v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->c:F

    .line 571
    :cond_2
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->f:J

    iput-wide v2, v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->d:J

    goto :goto_0

    .line 532
    :pswitch_0
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_SUCCESS:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    goto :goto_1

    .line 536
    :pswitch_1
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_FAILED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    goto :goto_1

    .line 541
    :pswitch_2
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_CANCELED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    goto :goto_1

    .line 545
    :pswitch_3
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_PENDING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    goto :goto_1

    .line 552
    :pswitch_4
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_PAUSED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    goto :goto_1

    .line 557
    :pswitch_5
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOADING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    goto :goto_1

    .line 530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;)Lhfr;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->g:Lhfr;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->b(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;Z)V

    return-void
.end method

.method private a(Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 146
    sget-object v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->e:Landroid/os/Handler;

    new-instance v1, Lhfe;

    invoke-direct {v1, p0, p2, p1}, Lhfe;-><init>(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method private a(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    if-nez p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    if-nez p2, :cond_3

    .line 320
    invoke-static {p1}, Lcom/wandoujia/ripple_framework/util/AppUtils;->a(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->b:Lhfm;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->b:Lhfm;

    invoke-static {}, Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;->newBuilder()Lhhf;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v0, v2, Lhhf;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->incompatible_detail:Ljava/util/List;

    iput-object v0, v2, Lhhf;->b:Ljava/util/List;

    invoke-virtual {v2}, Lhhf;->a()Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;

    move-result-object v0

    new-instance v2, Lhfh;

    invoke-direct {v2, p0, p1, p3}, Lhfh;-><init>(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;Lcom/wandoujia/ripple_framework/model/Model;Z)V

    invoke-virtual {v1, v0, v2}, Lhfm;->a(Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;Lhfn;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ld;->b(Lcom/wandoujia/ripple_framework/model/Model;)Lhby;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean p3, v0, Lhby;->q:Z

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0}, Lhby;->a()Lhbx;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->hasPatch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    sget-object v2, Lcom/wandoujia/download2/DownloadRequestParam$Type;->COMMON:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v2, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iput-object v2, v1, Lhby;->b:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getPatchMD5()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getPatchUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v2, v1, Lhby;->j:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getVersionCode()I

    move-result v2

    iput v2, v1, Lhby;->k:I

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PATCH:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v2, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getPatchSize()J

    move-result-wide v2

    iput-wide v2, v1, Lhby;->p:J

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    iput-object v2, v1, Lhby;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->i:Ljava/lang/String;

    invoke-static {p1}, Ld;->c(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->g:Ljava/lang/String;

    iput-boolean p3, v1, Lhby;->q:Z

    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    goto/16 :goto_0

    .line 325
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    sget-object v2, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v2, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iput-object v2, v1, Lhby;->b:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullMD5()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v2, v1, Lhby;->j:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getVersionCode()I

    move-result v2

    iput v2, v1, Lhby;->k:I

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v2, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullSize()J

    move-result-wide v2

    iput-wide v2, v1, Lhby;->p:J

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    iput-object v2, v1, Lhby;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->i:Ljava/lang/String;

    invoke-static {p1}, Ld;->c(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->g:Ljava/lang/String;

    iput-boolean p3, v1, Lhby;->q:Z

    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->d:Ljava/util/Map;

    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 415
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->g:Lhfr;

    iget-object v2, v0, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    new-instance v4, Lcuw;

    invoke-direct {v4, p0, p2, p1}, Lcuw;-><init>(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;Lcom/wandoujia/ripple_framework/model/Model;Landroid/content/Context;)V

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    sget-object v1, Lg;->a:Landroid/content/SharedPreferences;

    const-string v5, "gpu_Type"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v3, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/ExtensionPack;

    if-eqz v1, :cond_2

    iget-object v7, v1, Lcom/wandoujia/api/proto/ExtensionPack;->supported_cpu_types:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/wandoujia/api/proto/ExtensionPack;->supported_cpu_types:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v3, v3, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;Landroid/content/Context;Lcom/wandoujia/api/proto/ExtensionPack;Lcuw;)V

    goto :goto_0

    :cond_3
    iget-object v1, v3, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/ExtensionPack;

    iget-object v1, v1, Lcom/wandoujia/api/proto/ExtensionPack;->matched:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v5, v3, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iget-object v1, v3, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/ExtensionPack;

    invoke-virtual {v2, v5, v0, v1, v4}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;Landroid/content/Context;Lcom/wandoujia/api/proto/ExtensionPack;Lcuw;)V

    goto :goto_0

    :cond_4
    iget-boolean v1, v2, Lcom/wandoujia/gamepacket/GamePacketInstaller;->b:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/wandoujia/gamepacket/GpuDetectUtils;->a(Landroid/view/ViewGroup;)V

    :cond_5
    if-eqz v0, :cond_0

    new-instance v1, Lcvb;

    iget-object v5, v3, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    new-instance v6, Lcve;

    invoke-direct {v6, v2, v3, v0, v4}, Lcve;-><init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Lcom/wandoujia/api/proto/AppDetail;Landroid/app/Activity;Lcuw;)V

    invoke-direct {v1, v0, v5, v6}, Lcvb;-><init>(Landroid/content/Context;Ljava/util/List;Lcve;)V

    iget-object v0, v1, Lcvb;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/wandoujia/gamepacket/R$layout;->game_packet_gpu_select_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/wandoujia/gamepacket/R$id;->extension_listview:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v3, v1, Lcvb;->d:Lcvf;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcuk;

    iget-object v3, v1, Lcvb;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcuk;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lcvb;->a:Landroid/content/Context;

    sget v4, Lcom/wandoujia/gamepacket/R$string;->download_gamepacket_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcuk;->a:Ljava/lang/String;

    iput-object v2, v0, Lcuk;->e:Landroid/view/View;

    iget-object v2, v1, Lcvb;->a:Landroid/content/Context;

    sget v3, Lcom/wandoujia/gamepacket/R$string;->confirm:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcvc;

    invoke-direct {v3, v1}, Lcvc;-><init>(Lcvb;)V

    invoke-virtual {v0, v2, v3}, Lcuk;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcuk;

    iget-object v2, v1, Lcvb;->a:Landroid/content/Context;

    sget v3, Lcom/wandoujia/gamepacket/R$string;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcvd;

    invoke-direct {v3}, Lcvd;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcuk;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcuk;

    invoke-virtual {v0}, Lcuk;->a()Lcuj;

    move-result-object v0

    iput-object v0, v1, Lcvb;->b:Landroid/app/Dialog;

    iget-object v0, v1, Lcvb;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;)Lcom/wandoujia/ripple_framework/download/DownloadManager;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 363
    if-nez p2, :cond_0

    .line 391
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Lcom/wandoujia/api/proto/AppDetail;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p0, p2, v1, v1}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/model/Model;ZZ)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isSucceed()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "game_packet"

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 373
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    .line 374
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 376
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    invoke-static {v1}, Ld;->D(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 378
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->g:Lhfr;

    iget-object v3, v1, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v5, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v0, "src_path"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_3

    const-string v0, "dst_path"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v4, v5, v1, v0}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    move-object v1, v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 385
    :cond_4
    if-nez v0, :cond_6

    .line 386
    invoke-static {p2}, Lcom/wandoujia/ripple_framework/util/AppUtils;->a(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->b:Lhfm;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->b:Lhfm;

    invoke-static {}, Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;->newBuilder()Lhhf;

    move-result-object v2

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v0, v2, Lhhf;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->incompatible_detail:Ljava/util/List;

    iput-object v0, v2, Lhhf;->b:Ljava/util/List;

    invoke-virtual {v2}, Lhhf;->a()Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;

    move-result-object v0

    new-instance v2, Lhfi;

    invoke-direct {v2, p0, p1, p2}, Lhfi;-><init>(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v1, v0, v2}, Lhfm;->a(Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;Lhfn;)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->b(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V

    goto/16 :goto_0

    .line 388
    :cond_6
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-static {p1}, Ld;->c(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    .line 441
    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    if-eqz v0, :cond_1

    .line 445
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v0, v0, Lcom/wandoujia/api/proto/DownloadUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 448
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-ne v1, v2, :cond_0

    .line 449
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->APP:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)V

    .line 451
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/ripple_framework/model/Model;ZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 233
    if-nez p1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {p1}, Ld;->c(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    .line 237
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->n()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    .line 239
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "history_version"

    iget-object v3, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 254
    :goto_1
    if-eqz v1, :cond_a

    .line 255
    iget v3, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    if-ne v3, v0, :cond_9

    .line 257
    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0

    .line 243
    :cond_2
    if-eqz v2, :cond_3

    .line 244
    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getVersionCode()I

    move-result v0

    goto :goto_1

    .line 245
    :cond_3
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 246
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 248
    :cond_4
    if-eqz v1, :cond_0

    .line 251
    iget v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    goto :goto_1

    .line 260
    :cond_5
    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, v1, v4}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Z)V

    goto :goto_0

    .line 263
    :cond_6
    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isSucceed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 266
    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    .line 267
    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 268
    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PATCH:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v1, v2, :cond_7

    .line 269
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->g:Lhfr;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lhfr;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :cond_7
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->g:Lhfr;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lhfr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_8
    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    :cond_9
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 281
    :cond_a
    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->c:Lhfk;

    if-eqz v0, :cond_b

    .line 282
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->c:Lhfk;

    new-instance v1, Lhfg;

    invoke-direct {v1, p0, v2}, Lhfg;-><init>(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;)V

    invoke-virtual {v0, p1, v1}, Lhfk;->a(Lcom/wandoujia/ripple_framework/model/Model;Lhfl;)V

    goto/16 :goto_0

    .line 300
    :cond_b
    invoke-direct {p0, p1, v2, p3}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;Z)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 504
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->g:Lhfr;

    iget-object v1, v0, Lhfr;->c:Landroid/os/Handler;

    new-instance v2, Lhfv;

    invoke-direct {v2, v0, p1}, Lhfv;-><init>(Lhfr;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 130
    sget-object v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->e:Landroid/os/Handler;

    new-instance v1, Lhfd;

    invoke-direct {v1, p0, p1, p2}, Lhfd;-><init>(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public final a(Ljava/lang/String;Lhfq;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 79
    if-nez p2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 82
    :cond_0
    if-nez p1, :cond_2

    .line 83
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    const-string v1, "wandoujia"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    const-string v1, "wandoujia"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    const-string v1, "wandoujia"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 196
    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->c:Lhfk;

    if-eqz v0, :cond_2

    .line 201
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->c:Lhfk;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v2, Lhff;

    invoke-direct {v2, p0, p1}, Lhff;-><init>(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lhfk;->a(Lcom/wandoujia/ripple_framework/model/Model;Lhfl;)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 220
    invoke-virtual {p0, v0, v2, v2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/model/Model;ZZ)V

    goto :goto_1
.end method

.method public final b(Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 467
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v2, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    .line 468
    invoke-static {p1}, Ld;->c(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->h:Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v1, v2}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->a(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 471
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALLED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, v2, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    .line 492
    :goto_0
    return-object v0

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->d:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 475
    new-instance v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    move-object v0, v1

    goto :goto_0

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    .line 479
    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    if-eqz v0, :cond_4

    .line 483
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v0, v0, Lcom/wandoujia/api/proto/DownloadUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 486
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->g:Lhfr;

    iget-object v1, v1, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    invoke-virtual {v1, v2}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNZIPPING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, v2, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    goto :goto_0

    .line 489
    :cond_2
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->g:Lhfr;

    iget-object v1, v1, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    invoke-virtual {v1, v2}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 490
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->GAME_PACKET_PENDING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, v2, v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    goto/16 :goto_0

    .line 492
    :cond_3
    invoke-static {v0, v2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Lhfq;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    const-string v1, "wandoujia"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    const-string v1, "wandoujia"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final onEvent(Lcom/wandoujia/ripple_framework/event/DownloadEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_INFO_LOADED:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_STATE_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_PROGRESS_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    if-eq v0, v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 175
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    move-result-object v1

    .line 179
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 183
    sget-object v0, Lhfj;->b:[I

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;->b:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 184
    :goto_0
    if-nez v0, :cond_0

    .line 188
    :goto_1
    return-void

    .line 183
    :pswitch_0
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;->a:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNINSTALLED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
