.class public final Lcom/wandoujia/gamepacket/GamePacketInstaller;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Lcom/wandoujia/gamepacket/UnZipManager;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcuv;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v2, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->b:Z

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->g:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$1;

    invoke-direct {v0, p0}, Lcom/wandoujia/gamepacket/GamePacketInstaller$1;-><init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;)V

    iput-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->i:Landroid/content/BroadcastReceiver;

    .line 105
    iput-object p1, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a:Landroid/content/Context;

    .line 106
    const-string v0, "game_packet_pref"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lg;->a:Landroid/content/SharedPreferences;

    .line 107
    new-instance v0, Lcom/wandoujia/gamepacket/UnZipManager;

    invoke-direct {v0, p1}, Lcom/wandoujia/gamepacket/UnZipManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->c:Lcom/wandoujia/gamepacket/UnZipManager;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->e:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->d:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->h:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->f:Ljava/util/Map;

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->g:Landroid/os/Handler;

    new-instance v1, Lcut;

    invoke-direct {v1, p0, p1, p2}, Lcut;-><init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;
    .locals 1
    .parameter

    .prologue
    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Context;Lcom/wandoujia/api/proto/ExtensionPack;Lcuw;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    if-eqz p3, :cond_0

    .line 235
    iget-object v0, p3, Lcom/wandoujia/api/proto/ExtensionPack;->size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    .line 236
    sget-object v0, Lcun;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 237
    new-instance v0, Lcuk;

    invoke-direct {v0, p2}, Lcuk;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/wandoujia/gamepacket/R$string;->gamepacket_unzip_warning_title:I

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcuk;->a:Ljava/lang/String;

    sget v3, Lcom/wandoujia/gamepacket/R$string;->gamepacket_unzip_warning_message:I

    new-array v1, v1, [Ljava/lang/Object;

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcuk;->b:Ljava/lang/String;

    sget v1, Lcom/wandoujia/gamepacket/R$string;->cancel:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcuq;

    invoke-direct {v2}, Lcuq;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcuk;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcuk;

    move-result-object v0

    sget v1, Lcom/wandoujia/gamepacket/R$string;->gamepacket_unzip_warning_confirm:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcup;

    invoke-direct {v2, p0, p1, p3, p4}, Lcup;-><init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Lcom/wandoujia/api/proto/ExtensionPack;Lcuw;)V

    invoke-virtual {v0, v1, v2}, Lcuk;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcuk;

    move-result-object v0

    invoke-virtual {v0}, Lcuk;->a()Lcuj;

    move-result-object v0

    invoke-virtual {v0}, Lcuj;->show()V

    .line 261
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 236
    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;Lcom/wandoujia/api/proto/ExtensionPack;Lcuw;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/api/proto/ExtensionPack;Lcuw;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    if-eqz p2, :cond_0

    .line 266
    new-instance v0, Lcur;

    invoke-direct {v0, p0, p1, p2, p3}, Lcur;-><init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Lcom/wandoujia/api/proto/ExtensionPack;Lcuw;)V

    .line 273
    iget-object v1, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 276
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->g:Landroid/os/Handler;

    new-instance v1, Lcuo;

    invoke-direct {v1, p0, p1, p2}, Lcuo;-><init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->c(Ljava/lang/String;)Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->INSTALLING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    if-ne v0, v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0, p1}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->c(Ljava/lang/String;)Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->INSTALL_APK:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    const-string v0, ""

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "Android/obb/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Android/data/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcun;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->c:Lcom/wandoujia/gamepacket/UnZipManager;

    new-instance v5, Lcvl;

    const-string v0, ".apk"

    invoke-direct {v5, p3, v0}, Lcvl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcvk;

    invoke-direct {v6, p0, p1}, Lcvk;-><init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->FAILED:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    invoke-virtual {v1, p1, v0, v6}, Lcom/wandoujia/gamepacket/UnZipManager;->a(Ljava/lang/String;Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;Lcvk;)V

    goto/16 :goto_0

    .line 196
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcun;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v1, "/mnt/sdcard"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcun;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcun;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 198
    :cond_8
    sget-object v7, Lcom/wandoujia/gamepacket/UnZipManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/gamepacket/UnZipManager$UnZipTask;-><init>(Lcom/wandoujia/gamepacket/UnZipManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcvl;Lcvk;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_9
    move-object v4, v0

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->c(Ljava/lang/String;)Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->INSTALLING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->c(Ljava/lang/String;)Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->PENDING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
