.class public final Legx;
.super Ljava/lang/Object;
.source "BaseLauncherConfig.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Lcom/wandoujia/rpc/http/client/DataApi;

.field private static d:Landroid/os/Handler;

.field private static e:Leen;

.field private static f:Legz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Legx;->b:Z

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Legx;->d:Landroid/os/Handler;

    .line 96
    const/4 v0, 0x0

    sput-object v0, Legx;->e:Leen;

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    const-class v1, Legx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Legx;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/wandoujia/shared_storage/SharedSettings;->a()Lcom/wandoujia/shared_storage/SharedSettings;

    move-result-object v0

    const-string v2, "first_channel"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/shared_storage/SharedSettings;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    sput-object v0, Legx;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getLastChannel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Legx;->a:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/wandoujia/shared_storage/SharedSettings;->a()Lcom/wandoujia/shared_storage/SharedSettings;

    move-result-object v0

    const-string v2, "first_channel"

    sget-object v3, Legx;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/shared_storage/SharedSettings;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    sget-object v0, Legx;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/wandoujia/rpc/http/client/DataApi;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    sput-object p0, Legx;->c:Lcom/wandoujia/rpc/http/client/DataApi;

    .line 62
    return-void
.end method

.method public static a(Leen;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    sput-object p0, Legx;->e:Leen;

    .line 102
    return-void
.end method

.method public static a(Legz;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    sput-object p0, Legx;->f:Legz;

    .line 132
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Legx;->b:Z

    .line 48
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Legx;->b:Z

    return v0
.end method

.method public static declared-synchronized d()Lcom/wandoujia/rpc/http/client/DataApi;
    .locals 3

    .prologue
    .line 65
    const-class v1, Legx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Legx;->c:Lcom/wandoujia/rpc/http/client/DataApi;

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isExternalSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getDeviceExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DataCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    new-instance v2, Lefn;

    invoke-direct {v2, v0}, Lefn;-><init>(Ljava/lang/String;)V

    sput-object v2, Legx;->c:Lcom/wandoujia/rpc/http/client/DataApi;

    .line 80
    :cond_0
    sget-object v0, Legx;->c:Lcom/wandoujia/rpc/http/client/DataApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DataCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DataCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Legx;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static f()Leen;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Legx;->e:Leen;

    return-object v0
.end method

.method public static g()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    sget-object v0, Legx;->f:Legz;

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Leha;->a()Leha;

    const-string v0, "phoenix_apk_url"

    invoke-static {v0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "http://dl.wandoujia.com/files/phoenix/latest/wandoujia-wandoujia_wap.apk"

    .line 138
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 146
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/wandoujia/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 162
    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Legy;

    invoke-direct {v1}, Legy;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 177
    return-void
.end method
