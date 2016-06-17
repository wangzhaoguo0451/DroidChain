.class Lcom/wandoujia/gamepacket/GamePacketInstaller$1;
.super Landroid/content/BroadcastReceiver;
.source "GamePacketInstaller.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/gamepacket/GamePacketInstaller;


# direct methods
.method constructor <init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller$1;->a:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 80
    if-nez v0, :cond_2

    .line 81
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 83
    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 100
    :cond_1
    return-void

    .line 95
    :cond_2
    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->parseNetworkType(Landroid/net/NetworkInfo;)I

    move-result v0

    .line 96
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller$1;->a:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v0, v1, Lcom/wandoujia/gamepacket/GamePacketInstaller;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/wandoujia/gamepacket/GamePacketInstaller;->h:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/wandoujia/gamepacket/GamePacketInstaller;->h:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/wandoujia/gamepacket/GamePacketInstaller;->h:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
