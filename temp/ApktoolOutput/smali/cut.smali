.class public final Lcut;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

.field private synthetic c:Lcom/wandoujia/gamepacket/GamePacketInstaller;


# direct methods
.method public constructor <init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcut;->c:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iput-object p2, p0, Lcut;->a:Ljava/lang/String;

    iput-object p3, p0, Lcut;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 317
    iget-object v0, p0, Lcut;->c:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v0, v0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->d:Ljava/util/Map;

    iget-object v1, p0, Lcut;->a:Ljava/lang/String;

    iget-object v2, p0, Lcut;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcut;->c:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v0, v0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    iget-object v2, p0, Lcut;->a:Ljava/lang/String;

    iget-object v0, p0, Lcut;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    sget-object v3, Lhfw;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lham;->f:Lham;

    const-string v3, "app_task"

    invoke-virtual {v0, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    new-instance v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v4, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->GAME_PACKET_PENDING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v3, v2, v4}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lham;->f:Lham;

    const-string v3, "app_task"

    invoke-virtual {v0, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    new-instance v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v4, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNZIPPING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v3, v2, v4}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V

    goto :goto_0

    .line 321
    :cond_0
    return-void

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
