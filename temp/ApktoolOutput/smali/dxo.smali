.class public final Ldxo;
.super Ljava/lang/Object;
.source "LauncherPreDownloader.java"


# instance fields
.field public a:Lcta;

.field public b:Lcsx;

.field public c:Lefm;

.field public d:Lehd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ldxp;

    invoke-direct {v0}, Ldxp;-><init>()V

    iput-object v0, p0, Ldxo;->b:Lcsx;

    .line 61
    new-instance v0, Ldxq;

    invoke-direct {v0, p0}, Ldxq;-><init>(Ldxo;)V

    iput-object v0, p0, Ldxo;->c:Lefm;

    .line 72
    new-instance v0, Lehd;

    invoke-direct {v0, p0}, Lehd;-><init>(Ldxo;)V

    iput-object v0, p0, Ldxo;->d:Lehd;

    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Ldxo;->d()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 156
    invoke-static {}, Ldxo;->d()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string v1, "com.wandoujia.game_launcher"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lehr;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v1, Lees;

    invoke-direct {v1}, Lees;-><init>()V

    .line 161
    const-string v2, "com.wandoujia.game_launcher"

    iput-object v2, v1, Lees;->c:Ljava/lang/String;

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lees;->a:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    iput-object v2, v1, Lees;->e:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$string;->launcher_app_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lees;->b:Ljava/lang/String;

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lees;->h:Ljava/lang/String;

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lees;->a(I)Lees;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lees;->f:Z

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lees;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lees;->j:Ljava/lang/String;

    .line 175
    :cond_1
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    invoke-virtual {v1}, Lees;->a()Lcom/wandoujia/launcher_base/download/DownloadRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Leen;->b(Lcom/wandoujia/launcher_base/download/DownloadRequest;)V

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wandoujia/app/game_launcher_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {}, Leha;->a()Leha;

    const-string v0, "enable_predownload_apk_gl"

    invoke-static {v0}, Ld;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lebw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->d()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Ldxo;->a:Lcta;

    iget-object v0, v0, Lcta;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsw;

    invoke-virtual {v0}, Lcsw;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, v0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    .line 114
    :goto_1
    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Ldxo;->d()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->c()Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    move-result-object v0

    sget-object v5, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->NATIVE_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    if-ne v0, v5, :cond_4

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    const-string v5, "com.wandoujia.game_launcher"

    invoke-virtual {v0, v5}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 130
    :goto_2
    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/wandoujia/download2/DownloadRequestParam;

    invoke-direct {v0}, Lcom/wandoujia/download2/DownloadRequestParam;-><init>()V

    .line 132
    sget-object v1, Lcom/wandoujia/download2/DownloadRequestParam$Type;->COMMON:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadRequestParam;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    .line 133
    iput-object v3, v0, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    .line 134
    iput-object v4, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Ldxo;->a:Lcta;

    invoke-virtual {v1, v0}, Lcta;->a(Lcom/wandoujia/download2/DownloadRequestParam;)V

    goto/16 :goto_0

    .line 113
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 125
    :cond_4
    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->c()Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    move-result-object v0

    sget-object v5, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->APK_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    if-ne v0, v5, :cond_5

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->e()I

    move-result v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    if-le v0, v5, :cond_5

    move v0, v1

    .line 128
    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_2
.end method
