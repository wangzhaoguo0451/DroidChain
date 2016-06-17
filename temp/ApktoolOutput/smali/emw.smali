.class public Lemw;
.super Ljava/lang/Object;
.source "LogReporter.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field private final c:Landroid/content/Context;

.field private final d:Lemt;

.field private final e:Lemu;

.field private final f:Lcom/wandoujia/logv3/LogSender;

.field private g:Lcom/wandoujia/logv3/model/packages/CommonPackage;

.field private h:Lcom/wandoujia/logv3/model/packages/DevicePackage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lemw;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lemw;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lemt;Lemu;Lcom/wandoujia/logv3/LogSender;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lemw;->c:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    const/4 v1, 0x1

    const-wide/32 v2, 0x927c0

    const-string v4, "log-reporterv3-thread"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(IJLjava/lang/String;)V

    iput-object v0, p0, Lemw;->a:Ljava/util/concurrent/Executor;

    .line 62
    iput-object p2, p0, Lemw;->d:Lemt;

    .line 63
    iput-object p3, p0, Lemw;->e:Lemu;

    .line 64
    iput-object p4, p0, Lemw;->f:Lcom/wandoujia/logv3/LogSender;

    .line 65
    iget-object v0, p0, Lemw;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lemx;

    invoke-direct {v1, p0, p3, p1}, Lemx;-><init>(Lemw;Lemu;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lemw;)Lcom/wandoujia/logv3/model/packages/CommonPackage;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lemw;->g:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    return-object v0
.end method

.method static synthetic a(Lemw;Lcom/wandoujia/logv3/model/packages/CommonPackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lemw;->g:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    return-object p1
.end method

.method static synthetic b(Lemw;)Lemu;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lemw;->e:Lemu;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lemw;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lemw;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lemw;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lemw;)Lemt;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lemw;->d:Lemt;

    return-object v0
.end method

.method static synthetic e(Lemw;)Lcom/wandoujia/logv3/LogSender;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lemw;->f:Lcom/wandoujia/logv3/LogSender;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/wandoujia/logv3/model/packages/DevicePackage;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 99
    iget-object v0, p0, Lemw;->h:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lemw;->c:Landroid/content/Context;

    new-instance v1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;-><init>()V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->os(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->os_version(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdk_int(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->model(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->brand(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->rom_version(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->rom_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    invoke-static {v0}, Lcom/wandoujia/base/utils/LauncherUtil;->getDefaultLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->launcher_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getCPU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->cpu(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->screen(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->mac(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->imei(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->imsi(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v2

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->android_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getTotalInternalMemorySize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->memory_size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectories()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->getAllBytes(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdcard1_size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->getAllBytes(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdcard2_size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;

    :cond_1
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/DevicePackage;

    move-result-object v0

    iput-object v0, p0, Lemw;->h:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    .line 102
    :cond_2
    iget-object v0, p0, Lemw;->h:Lcom/wandoujia/logv3/model/packages/DevicePackage;

    return-object v0
.end method

.method public onEvent(Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lemw;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lena;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lena;-><init>(Lemw;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public onEventSync(Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    new-instance v0, Lena;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lena;-><init>(Lemw;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;B)V

    invoke-virtual {v0}, Lena;->run()V

    .line 117
    return-void
.end method
