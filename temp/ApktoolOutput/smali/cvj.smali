.class public final Lcvj;
.super Ljava/lang/Object;
.source "UnZipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcvk;

.field private synthetic b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcvk;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcvj;->a:Lcvk;

    iput-object p2, p0, Lcvj;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 103
    iget-object v1, p0, Lcvj;->a:Lcvk;

    iget-object v0, p0, Lcvj;->b:Ljava/util/Set;

    iget-object v2, v1, Lcvk;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v3, v1, Lcvk;->a:Ljava/lang/String;

    sget-object v4, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->INSTALL_APK:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ".apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v1, Lcvk;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v2, v2, Lcom/wandoujia/gamepacket/GamePacketInstaller;->f:Ljava/util/Map;

    iget-object v3, v1, Lcvk;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcvk;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v1, v1, Lcvk;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    return-void
.end method
