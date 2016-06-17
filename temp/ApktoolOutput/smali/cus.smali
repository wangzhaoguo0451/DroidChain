.class public final Lcus;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcuw;

.field private synthetic b:Lcom/wandoujia/api/proto/DownloadUrl;

.field private synthetic c:Lcom/wandoujia/api/proto/ExtensionPack;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/wandoujia/gamepacket/GamePacketInstaller;


# direct methods
.method constructor <init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Lcuw;Lcom/wandoujia/api/proto/DownloadUrl;Lcom/wandoujia/api/proto/ExtensionPack;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcus;->e:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iput-object p2, p0, Lcus;->a:Lcuw;

    iput-object p3, p0, Lcus;->b:Lcom/wandoujia/api/proto/DownloadUrl;

    iput-object p4, p0, Lcus;->c:Lcom/wandoujia/api/proto/ExtensionPack;

    iput-object p5, p0, Lcus;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcus;->a:Lcuw;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcus;->b:Lcom/wandoujia/api/proto/DownloadUrl;

    if-eqz v0, :cond_5

    .line 287
    iget-object v0, p0, Lcus;->a:Lcuw;

    iget-object v1, p0, Lcus;->c:Lcom/wandoujia/api/proto/ExtensionPack;

    iget-object v2, p0, Lcus;->b:Lcom/wandoujia/api/proto/DownloadUrl;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcuw;->b:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    invoke-static {v3}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->d(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;)Lcom/wandoujia/ripple_framework/download/DownloadManager;

    move-result-object v3

    iget-object v0, v0, Lcuw;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Ld;->b(Lcom/wandoujia/ripple_framework/model/Model;)Lhby;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 288
    :cond_1
    iget-object v0, p0, Lcus;->e:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v1, p0, Lcus;->d:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->DOWNLOADING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;)V

    .line 289
    iget-object v0, p0, Lcus;->e:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v0, v0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->h:Ljava/util/Map;

    iget-object v1, p0, Lcus;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_2
    :goto_1
    return-void

    .line 287
    :cond_3
    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/wandoujia/api/proto/DownloadUrl;->url:Ljava/lang/String;

    iput-object v2, v0, Lhby;->d:Ljava/lang/String;

    :cond_4
    sget-object v2, Lcom/wandoujia/download2/DownloadRequestParam$Type;->GAME_PACKET:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v2, v0, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->PF5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iput-object v2, v0, Lhby;->b:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iget-object v2, v1, Lcom/wandoujia/api/proto/ExtensionPack;->pf5:Ljava/lang/String;

    iput-object v2, v0, Lhby;->c:Ljava/lang/String;

    const-string v2, "game_packet"

    iput-object v2, v0, Lhby;->n:Ljava/lang/String;

    iget-object v2, v1, Lcom/wandoujia/api/proto/ExtensionPack;->src_path:Ljava/lang/String;

    iget-object v1, v1, Lcom/wandoujia/api/proto/ExtensionPack;->dst_path:Ljava/lang/String;

    invoke-static {v2, v1}, Ld;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhby;->o:Ljava/lang/String;

    invoke-virtual {v0}, Lhby;->a()Lhbx;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_5
    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_6

    .line 292
    iget-object v0, p0, Lcus;->a:Lcuw;

    iget-object v1, p0, Lcus;->e:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v1, v1, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a:Landroid/content/Context;

    sget v2, Lcom/wandoujia/gamepacket/R$string;->game_packet_network_wait:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcuw;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 294
    :cond_6
    iget-object v0, p0, Lcus;->e:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v0, v0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->h:Ljava/util/Map;

    iget-object v1, p0, Lcus;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcus;->a:Lcuw;

    iget-object v1, p0, Lcus;->e:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v1, v1, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a:Landroid/content/Context;

    sget v2, Lcom/wandoujia/gamepacket/R$string;->game_packet_not_available:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcuw;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
