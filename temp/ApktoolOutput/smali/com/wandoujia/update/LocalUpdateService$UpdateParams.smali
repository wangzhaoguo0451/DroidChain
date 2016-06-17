.class public Lcom/wandoujia/update/LocalUpdateService$UpdateParams;
.super Ljava/lang/Object;
.source "LocalUpdateService.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x494aff4d73a5f573L


# instance fields
.field public checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

.field public downloadInstallerOnlyOnWifi:Z

.field public notificationIcon:I

.field public updateDelayMs:J

.field public updateDurationMs:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0xea60

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->updateDelayMs:J

    .line 74
    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->updateDurationMs:J

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->downloadInstallerOnlyOnWifi:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->notificationIcon:I

    .line 64
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isInternalPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-wide v2, p0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->updateDelayMs:J

    .line 66
    iput-wide v2, p0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->updateDurationMs:J

    .line 68
    :cond_0
    return-void
.end method
