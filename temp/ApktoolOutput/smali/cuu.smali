.class public final Lcuu;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic c:Lcom/wandoujia/gamepacket/GamePacketInstaller;


# direct methods
.method constructor <init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcuu;->c:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iput-object p2, p0, Lcuu;->a:Ljava/lang/String;

    iput p3, p0, Lcuu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 329
    iget-object v0, p0, Lcuu;->c:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v0, v0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    iget-object v2, p0, Lcuu;->a:Ljava/lang/String;

    iget v0, p0, Lcuu;->b:I

    new-instance v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v4, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNZIPPING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v3, v2, v4}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    int-to-float v0, v0

    iput v0, v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->c:F

    sget-object v0, Lham;->f:Lham;

    const-string v4, "app_task"

    invoke-virtual {v0, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V

    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    new-instance v3, Lhaq;

    sget-object v4, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->PACKET_UNZIPPING:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-direct {v3, v4, v2}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lhrx;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method
