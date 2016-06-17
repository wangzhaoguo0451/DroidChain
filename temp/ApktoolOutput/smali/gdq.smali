.class public final Lgdq;
.super Ljava/lang/Object;
.source "UsesFeatureManager.java"


# static fields
.field private static f:Lgdq;


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgdq;->a:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lgdq;->b:I

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgdq;->e:J

    .line 45
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgdq;->c:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lgdq;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->d()Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->e()Ljava/lang/String;

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lgdq;->b:I

    .line 55
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/infos/FeatureInfos;->genFeatureInfos([Landroid/content/pm/FeatureInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lgdq;->e:J

    .line 57
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getCpuFamily(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgdq;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static declared-synchronized a()Lgdq;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lgdq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgdq;->f:Lgdq;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lgdq;

    invoke-direct {v0}, Lgdq;-><init>()V

    sput-object v0, Lgdq;->f:Lgdq;

    .line 66
    :cond_0
    sget-object v0, Lgdq;->f:Lgdq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    iget-wide v2, p0, Lgdq;->e:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lgdq;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    iget v1, p0, Lgdq;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 99
    const-string v1, "sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgdq;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    iget-boolean v1, p0, Lgdq;->a:Z

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lgdq;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    const-string v1, "gpuVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgdq;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_2
    iget-object v1, p0, Lgdq;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    const-string v1, "cpuFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgdq;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
