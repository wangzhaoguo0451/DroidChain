.class public final Lcur;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/wandoujia/api/proto/ExtensionPack;

.field private synthetic c:Lcuw;

.field private synthetic d:Lcom/wandoujia/gamepacket/GamePacketInstaller;


# direct methods
.method public constructor <init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Lcom/wandoujia/api/proto/ExtensionPack;Lcuw;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcur;->d:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iput-object p2, p0, Lcur;->a:Ljava/lang/String;

    iput-object p3, p0, Lcur;->b:Lcom/wandoujia/api/proto/ExtensionPack;

    iput-object p4, p0, Lcur;->c:Lcuw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 269
    iget-object v0, p0, Lcur;->d:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v1, p0, Lcur;->a:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->PENDING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;)V

    .line 270
    iget-object v1, p0, Lcur;->d:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v5, p0, Lcur;->a:Ljava/lang/String;

    iget-object v4, p0, Lcur;->b:Lcom/wandoujia/api/proto/ExtensionPack;

    iget-object v2, p0, Lcur;->c:Lcuw;

    iget-object v0, v4, Lcom/wandoujia/api/proto/ExtensionPack;->download_urls:Ljava/util/List;

    iget-object v3, v4, Lcom/wandoujia/api/proto/ExtensionPack;->size:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v3, v8, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not run on UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/DownloadUrl;

    if-eqz v0, :cond_1

    iget-object v8, v0, Lcom/wandoujia/api/proto/DownloadUrl;->url:Ljava/lang/String;

    invoke-static {v8}, Ld;->E(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_1

    move-object v3, v0

    :goto_0
    iget-object v6, v1, Lcom/wandoujia/gamepacket/GamePacketInstaller;->g:Landroid/os/Handler;

    new-instance v0, Lcus;

    invoke-direct/range {v0 .. v5}, Lcus;-><init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Lcuw;Lcom/wandoujia/api/proto/DownloadUrl;Lcom/wandoujia/api/proto/ExtensionPack;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void

    .line 270
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
