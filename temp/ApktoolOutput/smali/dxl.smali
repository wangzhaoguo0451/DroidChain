.class final Ldxl;
.super Ljava/lang/Object;
.source "LauncherAppDelegate.java"

# interfaces
.implements Lczz;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isExternalSDCardMounted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getDeviceExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 107
    :cond_0
    if-nez v0, :cond_1

    .line 108
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 110
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ImageCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 120
    const/high16 v0, 0x400

    return v0
.end method

.method public final d()I
    .locals 4

    .prologue
    const-wide/32 v2, 0x100000

    .line 125
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 127
    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 128
    int-to-long v0, v0

    mul-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3d4ccccd

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    int-to-long v0, v0

    mul-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method
